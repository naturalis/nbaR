source("setup-vars.R")

test_that("Class hierarchy correct", {
  expect_is(mdc, "MetadataClient")
  expect_is(mdc, "ApiClient")
})

test_that("Controlled lists work", {
  expect_true(length(mdc$get_controlled_lists()$content) > 0)
  expect_true(length(mdc$get_controlled_list_taxonomic_status()$content) > 0)
  expect_true(length(mdc$get_controlled_list_specimen_type_status()$content) > 0)
  expect_true(length(mdc$get_controlled_list_sex()$content) > 0)
  expect_true(length(mdc$get_controlled_list_phase_or_stage()$content) > 0)
})

test_that("GetAllowedDateFormats works", {
  expect_true(length(mdc$get_allowed_date_formats()$content) > 0)
})

test_that("GetRestServices works", {
  res <- mdc$get_rest_services()
  for (it in res$content$resultSet) {
    service <- it$item()
    expect_is(item, "RestService")
  }
})

test_that("Settings work", {
  settings <- mdc$get_settings()$content
  expect_true(length(settings) > 1)

  for (s in settings) {
    ss <- mdc$get_setting(s)$content
    expect_true(!is.null(ss))
  }
})
