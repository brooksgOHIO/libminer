test_that("lib_summary returns expected results", {
  res <- lib_summary()
  expect_s3_class(res, "data.frame") #like class(res)
  expect_equal(ncol(res), 2)
  expect_equal(names(res), c("Library", "n_packages")) #expected but just be sure
  expect_type(res$Library, "character") #also checks dependencies
  expect_type(res$n_packages, "integer")
})

test_that("lib_summary fails appropriately", {
# expect_error(lib_summary("foo"), "sizes must be logical (TRUE/FALSE)", fixed=TRUE)
  expect_error(lib_summary("foo"), "sizes must be logical")
})

test_that("sizes argument works", {
  res <- lib_summary(sizes = TRUE)
  expect_s3_class(res, "data.frame") #like class(res)
  expect_equal(ncol(res), 3)
  expect_equal(names(res), c("Library", "n_packages", "lib_size")) #expected but just be sure
  expect_type(res$Library, "character") #also checks dependencies
  expect_type(res$lib_size, "double")
})
