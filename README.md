# Portfolio Waiting Time Simulation (Geometric Distribution)

This repository simulates the waiting time until the first success in a probabilistic financial scenario, modeled using the geometric distribution. The project is written in R and uses simple Monte Carlo simulation techniques to build intuition about probabilistic behavior in finance.

---

## Objective

We consider a risky portfolio with a 10% daily probability of gain (success), and simulate how many days it takes for the portfolio to achieve its first profitable day.

This is equivalent to modeling the waiting time until the first success in a Bernoulli process, where:

- Each trial (day) is independent
- Success occurs with probability ( $$p = 0.1$$ )
- The random variable $$( T \in \{1, 2, 3, \dots\} )$$ follows a geometric distribution:
  
$$ P(T = n) = p \cdot (1 - p)^{n-1}$$


---

## Theoretical Background

Key formulas for the geometric distribution:

- Expected value:  
  
  $$E[T] = \frac{1}{p}$$
  

- Variance:
  
  $$\sigma^2(T) = \frac{1 - p}{p^2}$$
  

- Probability mass function (PMF):  
  
  $$P(T = n) = p \cdot q^{n-1} \quad, q = 1 - p$$
  

---

## Code Description

The R script runs the following process for increasing sample sizes `n`:

1. For each value of `n`, it simulates `n` independent realizations of the geometric variable \( T \)
2. It plots a histogram of the values of \( T \)
3. It prints the empirical mean and standard deviation for comparison with theory
4. It pauses for the user to analyze the plot

## Results

Below are sample histograms for various values of `n`:

### n = 10

*Small sample size, high variance.*

![n=10](figures/hist_n10.png)

---

### n = 100

*Distribution shape starts to emerge.*

![n=100](figures/hist_n100.png)

---

### n = 1000

*Histogram closely matches the geometric PMF.*

![n=1000](figures/hist_n1000.png)

---

## Interpretation

This simulation models a realistic financial question:

> How many days do I have to wait before my risky portfolio produces its first gain?

For \( p = 0.1 \):

- The expected waiting time is 10 days
- Most simulations yield values near 1–10
- Long tails exist: in some cases, one may wait 20 to 30 or more days
- As \( n \) increases, the empirical mean and standard deviation converge to their theoretical values

---

## Conclusion

This simulation provides intuitive insight into discrete waiting times in a probabilistic environment and offers a concrete analogy to financial risk modeling with delayed returns.
