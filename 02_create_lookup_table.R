# ==============================================================================
# create a single lookup file
# ==============================================================================

# ------------------------------------------------------------------------------
# create fake data
# ------------------------------------------------------------------------------

lookup_all_df <- tibble::tribble(
  ~ market,   ~ product,    ~ price,
  # market 1
  1,          1,             100,
  1,          2,             327,
  1,          3,             425,
  1,          4,             150,
  1,          5,             217,
  2,          1,             333,
  # market 2
  2,          2,             666,
  2,          3,             999,
  2,          4,             777,
  2,          5,             555,
  # market 3
  3,          1,             111,
  3,          2,             222,
  3,          3,             333,
  3,          4,             444,
  3,          5,             555,
) |>
  # add a rowcode required by SuSo
	dplyr::mutate(rowcode = dplyr::row_number())

# ------------------------------------------------------------------------------
# save to disk
# ------------------------------------------------------------------------------

readr::write_tsv(
  x = lookup_all_df,
  file = here::here("results", "02_lookup", "lookup_all_markets.tab")
)

# ==============================================================================
# create a one lookup file per market
# ==============================================================================

# ------------------------------------------------------------------------------
# subset data
# ------------------------------------------------------------------------------

market_1_lookup <- lookup_all_df |>
  dplyr::filter(market == 1)

market_2_lookup <- lookup_all_df |>
  dplyr::filter(market == 2)

market_3_lookup <- lookup_all_df |>
  dplyr::filter(market == 3)

# ------------------------------------------------------------------------------
# save to disk
# ------------------------------------------------------------------------------

readr::write_tsv(
  x = market_1_lookup,
  file = here::here("results", "02_lookup", "market_1_lookup.tab")
)

readr::write_tsv(
  x = market_2_lookup,
  file = here::here("results", "02_lookup", "market_2_lookup.tab")
)

readr::write_tsv(
  x = market_3_lookup,
  file = here::here("results", "03_lookup", "market_3_lookup.tab")
)
