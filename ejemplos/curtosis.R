curtosis <- function (x) {
n <- length (x)
c <- ( (n * (n - 1) * sum((x - mean(x))^4) ) /
     ( (n - 1) * (n - 2) * (n - 3) * (var(x))^4 ) ) -
     ( (3 * (n - 1)^2) / ( (n - 2) * (n - 3) ) )
c
}
