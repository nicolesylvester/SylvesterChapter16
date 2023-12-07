library(testthat)
library(SylvesterChapter16)


test_that('Input does not contain negative, zero, or infinite value', {

  expect_error(fizzBuzz(c(1,2,-3,4,5,6)))

  expect_error(fizzBuzz(c(0,1,2,3,5,10)))

  expect_false(any(is.infinite(fizzBuzz(c(1,2,3,4,5,6)))))
})
