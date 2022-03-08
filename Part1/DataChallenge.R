nums = 100000
res <- numeric(nums)
for (i in 1:nums) {
  x <- rbeta(1, 31, 60)
  s <- sum(runif(20)<x)
  if (s == 10) {
    res[i] <- x
  } else {
    res[i] <- 0
  }
}
res <- res[! res %in% c(0)]
print(mean(res))
hist(res, breaks=40)
