context("utils")

test_that("can check for empty", {
  expect_true(is_empty(NULL))
  expect_true(is_empty(NA))
  expect_true(is_empty(character(0)))
  expect_true(is_empty(""))
  expect_true(is_empty("   "))
  expect_false(is_empty("test"))
})

test_that("system file returns useful message when file cannot be located ", {
  args <- list("testdata", "missing_file.txt")
  expect_error(system_file("testdata", "missing_file.txt"),
"Failed to locate file from args
testdata missing_file.txt")
})

test_that("collapse prepares vector for printing", {
  test_vector <- c("one", "two", "three", "four", "five", "six")
  expect_equal(collapse(test_vector),
               "one, two, three, four, five, six")
  expect_equal(collapse(test_vector, limit = 27),
               "one, two, three, four, ...")
  expect_equal(collapse(test_vector, limit = 28),
               "one, two, three, four, five, ...")
  expect_equal(collapse(test_vector, limit = 25, end = NULL),
               "one, two, three, four")
  expect_equal(collapse(test_vector, limit = 40),
               "one, two, three, four, five, six")
  expect_equal(collapse(test_vector, limit = 25, end = "etc."),
               "one, two, three, four, etc.")
  expect_equal(collapse(test_vector, collapse = " and ", limit = 13, end = NULL),
               "one and two")
  expect_equal(collapse(test_vector, limit = 1), "...")
})
