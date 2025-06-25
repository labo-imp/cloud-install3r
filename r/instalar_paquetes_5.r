options(repos = c("https://cloud.r-project.org/"))
options(Ncpus = 4)

paq50 <- c("nonlinearTseries","nsarfima","NTS","odpc","onlineforecast")
paq51 <- c("opera","otsad","otsfeatures","paleoTS","partsm","parttime")
paq52 <- c("pastecs","pcdpca","pcts","pdc","pdfetch","pomp","portes")
paq53 <- c("profoc","prophet","psd","PSF","PTSR","ptw","Qardl","Quandl")
paq54 <- c("quantspec","Rbeast","Rcatch22","rdbnomics","readabs","regspec")
paq55 <- c("resde","RGENERATE","rhosa","RJDemetra","Rlgt","Rlibeemd","RMAWGEN")
paq56 <- c("robfilter","RobKF","roll","RSEIS","Rsfar","Rssa","RTFA")
paq57 <- c("RTransferEntropy","rts","rucrdtw","rugarch","runner","runstats")
paq58 <- c("rwebstat","samadb","sazedR","scoringRules","scoringutils","sde")
paq59 <- c("seas","season","seasonal","seasonalview","seer","setartree")

paq60 <- c("Sim.DiffProc","SLBDD","sleekts","slider","smooth","smoots")
paq61 <- c("sparseDFM","sparsevar","spectral","spINAR","spTimer","statespacer")
paq62 <- c("STFTS","stlplus","stochvol","stR","strucchange","strucchangeRcpp")
paq63 <- c("StructuralDecompose","sufficientForecasting","sugrrants")
paq64 <- c("surveillance","svars","sweep","sym.arma","synthesis","tbrf","Tcomp")
paq65 <- c("tempdisagg","TensorPreAve","tensorTS","testcorr","tfarima","tframe")
paq66 <- c("theft","thief","Tides","timechange","timeDate","timeSeries")
paq67 <- c("timeseriesdb","timetk","timsac","tis","tpr","trend","TSA","TSANN")
paq68 <- c("tsbox","tsBSS","TSclust","tscount","tsdb","tsdecomp")
paq69 <- c("TSdeeplearning","tsdisagg2","TSdisaggregation","TSdist","tsDyn")

paq70 <- c("TSEntropies","tseriesChaos","tseriesEntropy","tseriesTARMA")
paq71 <- c("tsfeatures","tsfknn","tsibbledata","tsibbletalk","tsintermittent")
paq72 <- c("TSLSTM","tsModel","tsoutliers","tsPI","TSrepr","tsrobprep","tssim")
paq73 <- c("TSstudio","TSTutorial","tsutils","tswge","twdtw","UComp","ugatsdb")
paq74 <- c("uGMAR","urca","uroot","VAR.etp","VARDetect","vars","VARshrink")
paq75 <- c("VedicDateTime","WaveletComp","wavelets","waveslim","wavethresh")
paq76 <- c("wavScalogram","WeightedPortTest","wktmo","x12","x13binary","xts")
paq77 <- c("yuima","ZIM","ZINARp","ZRA")
paq78 <- c()
paq79 <- c()



paqG5 <- c( paq50, paq51, paq52, paq53, paq54, paq55, paq56, paq57, paq58, paq59 )
paqG6 <- c( paq60, paq61, paq62, paq63, paq64, paq65, paq66, paq67, paq68, paq69 )
paqG7 <- c( paq70, paq71, paq72, paq73, paq74, paq75, paq76, paq77, paq78, paq79 )

paq <- unique(c( paqG5, paqG6, paqG7))

install.packages( paq,  dependencies= TRUE, Ncpus= 4)

quit( save="no" )
