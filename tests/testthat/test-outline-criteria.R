# Testing individual components of the outline ------
test_that("o_is_roxygen_comment() works", {
  expect_true(o_is_roxygen_comment("#' @param"))
})

test_that("o_is_todo_fixme() works", {
  expect_true(o_is_todo_fixme("# TODO: go for it"))
})

test_that("o_is_work_item() works", {
  expect_true(o_is_work_item("# WORK this needs to be done."))
})

test_that("o_is_test_that() works", {
  expect_true(o_is_test_that('test_that("Serious things are happening"'))
})

test_that("o_is_generic_test() works", {
  expect_true(o_is_generic_test('test_that("Serious things work properly"'))
})

test_that("o_is_object_title() works", {
  expect_true(o_is_object_title("title = 'A great'"))
})

test_that("No outline criteria are untested", {
  skip_on_ci()
  skip_on_cran()
  # using technique in tidyverse/ggplot2#5754
  outline_crit <-
    stringr::str_subset(ls("package:reuseme"), "^o_is")
  # Add tests if it fails.
  expect_snapshot(
     cat(outline_crit, sep = "\n")
  )
})