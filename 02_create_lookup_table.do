* ==============================================================================
* set project folders
* ==============================================================================

* provide the path to the project root
global proj_root ""

* set paths to other folders
do "${proj_root}/_set_proj_folders.do"

* ==============================================================================
* create fake lookup table price data
* ==============================================================================

do "${data}/03_create_fake_product_price_lookup_data.do"

* ==============================================================================
* write data to disk
* ==============================================================================

* ingest Stata data
use "${data}/lookup_table.dta"

* save to tab-delimited format
export delimited using "${results_lookup}/lookup_all_markets.tab", ///
  delimiter(tab) replace
