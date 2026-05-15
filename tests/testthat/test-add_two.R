
test_that("addition works", {
  expect_equal(add_two(2, 2), 4)
  expect_equal(add_two(2, "2"), 4)
  expect_equal(add_two("2", "2"), 4)
})

test_that("character string error trap", {
  expect_warning(add_two(2, "b"))
  expect_warning(add_two("a", "b"))
})

test_that("missing value is caught", {
  expect_error(add_two())
  expect_error(add_two(a = 2))
  expect_error(add_two(b = 2))
})

test_that("NA propogates", {
  expect_null(add_two(2, NULL))
  expect_null(add_two(NULL, 2))
})

test_that("NA propogates", {
  expect_true(is.na(add_two(2, NA)))
  expect_true(is.na(add_two(NA, 2)))
})


