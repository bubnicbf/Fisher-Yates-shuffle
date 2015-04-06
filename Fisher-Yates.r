#Original Fisher-Yates version
fisheryatesshuffle <- function(n)
{
  pool <- seq_len(n)
  a <- c()
  while(length(pool) > 0)
  {
     k <- sample.int(length(pool), 1)
     a <- c(a, pool[k])
     pool <- pool[-k]
  }
  a
}

#Knuth variation:
fisheryatesknuthshuffle <- function(n)
{
   a <- seq_len(n)
   while(n >=2)
   {     
      k <- sample.int(n, 1)
      if(k != n)
      {
         temp <- a[k]
         a[k] <- a[n]
         a[n] <- temp
      }
      n <- n - 1
   }
   a
}
 
#Example usage: 
fisheryatesshuffle(6)                # e.g. 1 3 6 2 4 5
x <- c("foo", "bar", "baz", "quux")
x[fisheryatesknuthshuffle(4)]        # e.g. "bar"  "baz"  "quux" "foo"
