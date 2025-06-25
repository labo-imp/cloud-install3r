# Script prueba de submit a las dos competencias Kaggle 

# cargo las librerias que necesito
require("data.table")
require("yaml")

#------------------------------------------------------------------------------

getandincrement <- function( nom_archivo )
{
  contador <- read_yaml(nom_archivo)
  valor <- contador$contador
  contador$contador <- contador$contador + 1L
  write_yaml( contador, file=nom_archivo )
  return( valor )
}
#------------------------------------------------------------------------------

generarmodelo <- function( param )
{
  # cargo datasets
  tb_sellin <- fread( paste0("~/datasets/sell-in.txt.gz"))
  tb_prods <- fread("~/datasets/product_id_apredecir201912.txt")

  tb_periodos <- tb_sellin[, list(periodo = unique(periodo))]
  setorder( tb_periodos, periodo )
  tb_periodos[, iperiodo := .I]

  tb_ventas <- tb_sellin[,
    list( "tn" = sum(tn) ),
    list(product_id, periodo)
  ]

  corte <- tb_periodos[ iperiodo == (36 - param$meses + 1),  periodo ]
  tb_venta_media <- tb_ventas[ periodo >= corte,
    list( "tn" = mean(tn) ),
    product_id
  ]

  tb_prediccion <- tb_venta_media[ product_id %in% tb_prods$product_id ]
  setorder( tb_prediccion, product_id )

  # archivo de salida
  contador <- getandincrement("contador.yml")
  archivo_submit <- paste0( "K102_",
     sprintf("%.3d", contador),
     ".csv"
  )

  # solo los campos para Kaggle
  fwrite(tb_prediccion,
         file = archivo_submit,
         sep = ","
  )

  # preparo todo para el submit
  comentario <- paste0( "'",
      " promedio de los ultimos",
      " meses=", param$meses,
      "'"
  )

  comando <- paste0( "~/install/proc_kaggle_submit.sh ",
      "TRUE ",
      archivo_submit, " ",
      comentario
  )

  ganancia <- system( comando, intern=TRUE )
  cat( paste0( ganancia, "\t", archivo_submit, "\n"),
      file="tb_ganancias.txt",
      append=TRUE
  )

  return(  as.numeric(ganancia) )
}
#------------------------------------------------------------------------------
#------------------------------------------------------------------------------
# aqui empieza el programa

# creo la carpeta donde voy a trabajar
dir.create("~/buckets/b1/exp/KA2000", showWarnings = FALSE)
setwd("~/buckets/b1/exp/KA2000")

# creo el contador
if( !file.exists( "contador.yml" ) )
{
  contador <- list( "contador" = 1L )
  write_yaml( contador, file="contador.yml" )
}

# genero al azar maxdepth, minsplit y minbucket
set.seed( Sys.time() )

# modelo
param <- list()
param$meses <- sample( 1:36, 1 )

param$meses <- 12
generarmodelo( param )

quit( save="no" )
