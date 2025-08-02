nlist <- c(1, 2, 5, 10, 20, 50, 100, 1000)
p <- 0.1
q <- 1 - p

cat("Simulating a risky portfolio with success probability p =", p, "\n")
cat("Distribution: Binomial (number of gains over n independent days)\n\n")

for (n in nlist) {
  samples <- rbinom(n = 1000, size = n, prob = p)
  
  hist(samples, breaks = -0.5:(max(samples) + 0.5), col = "orange",
       main = paste("Binomial distribution: n =", n, ", p =", p),
       xlab = "Number of profitable days",
       ylab = "Frequency")
  
  cat("n =", n, "→ Theoretical: E[X] =", n * p, ", Var[X] =", n * p * q, "\n")
  cat("           Empirical: Mean =", mean(samples), 
      ", Std Dev =", sd(samples), "\n")
  
  readline(prompt = "Press [Enter] to continue...")
}
