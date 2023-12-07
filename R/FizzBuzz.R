#' A function that takes in a vector of numbers and applies the
#' FizzBuzz logic to each element. If a number is divisible by 3,
#' it is replaced with "Fizz". If it is divisible by 5,
#' it is replaced with "Buzz". If it is divisible by both 3 and 5,
#' it is replaced with "Fizz Buzz". Otherwise, the number remains the same.
#'
#'@param nums A vector of numbers to apply FizzBuzz to.
#'
#'@return A character vector representing the FizzBuzz output
#'
#'@export
fizzBuzz <- function(nums) {
  result <- character(length(nums))

  for (i in seq_along(nums)) {
    if (nums[i] <= 0 || is.infinite(nums[i]) )
    {
      stop('Error, invalid number in vector')
    }
    else if (nums[i] %% 3 == 0 & nums[i] %% 5 == 0) {
      result[i] <- "FizzBuzz"
    } else if (nums[i] %% 3 == 0) {
      result[i] <- "Fizz"
    } else if (nums[i] %% 5 == 0) {
      result[i] <- "Buzz"
    } else {
      result[i] <- as.character(nums[i])
    }
  }
  return(result)
}
