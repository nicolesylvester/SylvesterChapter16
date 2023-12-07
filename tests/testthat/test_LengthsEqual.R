library(testthat)
library(SylvesterChapter16)


test_that('Length of input and output are equal', {
  result1 <- fizzBuzz(1:10)
  expect_equal(length(result1), length(1:10))

  result2 <- fizzBuzz(1:5)
  expect_equal(length(result2), length(1:5))

  result3 <- fizzBuzz(5:15)
  expect_equal(length(result3), length(5:15))
})
