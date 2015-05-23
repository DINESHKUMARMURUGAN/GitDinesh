install.packages("KernSmooth")
library("KernSmooth")
install.packages("RMySQL")
library("RMySQL")


usc <-  dbConnect(MySQL(),user="genome", host="genome-mysql.cse.ucsc.edu")


res <- dbGetQuery(usc,"show database;")
dbDisconnect(usc)

alltb <- dbListTables

source("http://bioconductor.org/biocLite.R")
biocLite("rhdf5")
library("rhdf5")

cr <- h5createFile("esd.h5")
cr

cr <- h5createGroup("esd.h5",group = "foo")
cr <- h5createGroup("esd.h5",group = "bar")

A <- matrix(1:10,nrow = 5,ncol = 2)
h5write(A,file = "esd.h5",name = "foo/A")

h5ls("esd.h5")

read1 <- h5read(file = "esd.h5",name = "foo/A")
read1








library("ROAuth")
library("RCurl")
cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")

reqURL <- "https://github.com/login/oauth/authorize"
accessURL <- "https://github.com/login/oauth/access_token"

cKey <- "9f819858f44a1cbd3ef7"
cSecret <- "f04c98121994e8521b53cd2f8a2630a14ef4019d"
testURL <- "https://api.github.com/rate_limit"
credentials <- OAuthFactory$new(consumerKey=cKey,
                                consumerSecret=cSecret,
                                requestURL=reqURL,
                                accessURL=accessURL)
                                needsVerifier=FALSE)
credentials$handshake()
## the GET isn't strictly necessary as that's the default
credentials$OAuthRequest(testURL, "GET")












