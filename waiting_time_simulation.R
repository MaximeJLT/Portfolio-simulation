nlist <- c(1, 2, 5, 10, 20, 50, 100, 1000)
p <- 0.1
q <- 1 - p

expected_T <- 1 / p
var_T <- q / p^2

cat("Espérance théorique de T :", expected_T, "\n")
cat("Variance théorique de T :", var_T, "\n")

for (n in nlist) {
  samples <- replicate(n, {
    t <- 1
    while (runif(1) > p) {
      t <- t + 1
    }
    return(t)
  })
  
  # Créer histogramme
  hist(samples, breaks = 0.5:(max(samples)+0.5), col = "skyblue",
       main = paste("Simulation de T (p =", p, ", n =", n, ")"),
       xlab = "Temps d'attente (jours jusqu'à succès)",
       ylab = "Fréquence")
  
  cat("n =", n, "→ Moyenne empirique =", mean(samples), 
      ", Écart-type =", sd(samples), "\n")
  
  readline(prompt = "Appuie sur [Entrée] pour continuer...")
}
