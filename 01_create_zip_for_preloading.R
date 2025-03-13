# ==============================================================================
# create fake price data
# ==============================================================================

markets_df <- tibble::tribble(
  ~ interview__id,  ~ market,
  1,                1,
)

product_prices_df <- tibble::tribble(
  ~ interview__id,  ~ products__id, ~ past_price,
  1,                 1,             100,
  1,                 2,             327,
  1,                 3,             425,
  1,                 4,             150,
  1,                 5,             217,
)

# ==============================================================================
# write data to disk
# ==============================================================================

# market metadata (main)
readr::write_tsv(
  x = markets_df,
  file = here::here("results", "01_preloading", "cambodia_cpi_preloading.tab")
)

# product prices
readr::write_tsv(
  x = product_prices_df,
  file = here::here("results", "01_preloading", "products.tab")
)

# ==============================================================================
# create a zip archive of the files
# ==============================================================================

zip::zip(
  zipfile = "fake_data.zip",
  files = c(
    "cambodia_cpi_preloading.tab",
    "products.tab"
  ),
  root = here::here("results", "01_preloading")
)
