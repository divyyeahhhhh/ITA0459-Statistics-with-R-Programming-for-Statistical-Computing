get_primes=function(n) {
  primes= c()
  for (num in 2:n) {
    is_prime=TRUE
    for (divisor in 2:sqrt(num)) {
      if (num %% divisor == 0) {
        is_prime=FALSE
        break
      }
    }
    if (is_prime) {
      primes <- c(primes, num)
    }
  }
  return(primes)
}

# Example usage:
n <- 20
prime_numbers <- get_primes(n)
print(prime_numbers)
