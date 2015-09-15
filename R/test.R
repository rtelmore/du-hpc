library(pbdMPI, quiet = TRUE)
init()
.comm.size <- comm.size()
.comm.rank <- comm.rank()
.hostname <- Sys.info()["nodename"]

msg <- sprintf("I am %d of %d on %s.\n", .comm.rank, .comm.size, .hostname)
comm.cat(msg, all.rank = TRUE, quiet = TRUE)

comm.cat(msg, rank.print = sample(0:.comm.size, size = 1))
comm.cat(msg, rank.print = sample(0:.comm.size, size = 1), quiet = TRUE)

finalize()
