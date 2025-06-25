#!/bin/bash
# # fecha revision   2025-06-25  04:45

webfiles="https://storage.googleapis.com/open-courses/austral2025-af91/labo3r"


dataset1="sell-in.txt.gz"
dataset2="tb_productos.txt"
dataset3="tb_stocks.txt"
dataset4="product_id_apredecir201912.txt"
pseudopublic="list"

export zulipbot="GoogleCloud-bot@austral2024.zulip.rebelare.com:QRSrOCvg73ZnK3XI6bLZsicWUDACfauB"
export zulipurl="https://austral2024.zulip.rebelare.com/api/v1/messages"

kaggleprueba="102_kaggle_prueba-labo3r.r"

kaggle_competencia="labo-iii-edicion-2025-r"

export github_catedra_user="labo-imp"
export github_catedra_repo="labo3-2025r"
export github_install_repo="cloud-install3r"

export mlflow_usuario="labo2025r"
export mlflow_clave="constructivism"



tabulador="	"
logfile="/home/$USER/install/log_install.txt"

MIHOST=$(echo $HOSTNAME | /usr/bin/cut -d . -f1)

bitacora () {
  local fecha=$(date +"%Y%m%d %H%M%S")

  echo "$fecha""$tabulador""$1"  >>  "$logfile"
}
