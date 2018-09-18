library(doMPI)

cl = startMPIcluster()  # by default will start one fewer slave, using one for master
registerDoMPI(cl)
clusterSize(cl) # just to check

dat <- read.csv('/global/scratch/paciorek/bayArea.csv', header = FALSE,
                stringsAsFactors = FALSE)
names(dat)[16:18] <- c('delay', 'origin', 'dest')
table(dat$dest)

destVals <- unique(dat$dest)

# restrict to only columns we need to reduce copying time
dat2 <- subset(dat, select = c('delay', 'origin', 'dest'))

# some overhead in copying 'dat2' to worker processes...
results <- foreach(destVal = destVals) %dopar% {
    sub <- subset(dat2, dest == destVal)
    summary(sub$delay)
}


results

closeCluster(cl)
mpi.quit()
