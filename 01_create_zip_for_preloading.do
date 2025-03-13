* ==============================================================================
* set project folders
* ==============================================================================

* provide the path to the project root
global proj_root "C:/Users/WB393438/cambodia_cpi/"

* set paths to other folders
do "${proj_root}/_set_proj_folders.do"

* ==============================================================================
* create fake price data
* ==============================================================================

* ------------------------------------------------------------------------------
* market-level data
* ------------------------------------------------------------------------------

do "${data}/01_create_fake_market_data.do"

* ------------------------------------------------------------------------------
* product-level data
* ------------------------------------------------------------------------------

do "${data}/02_create_fake_product_price_data.do"

* ==============================================================================
* write data to disk
* ==============================================================================

* ------------------------------------------------------------------------------
* market-level data
* ------------------------------------------------------------------------------

* ingest Stata data
use "${data}/markets.dta", clear

* save to tab-delimited format
export delimited using "${results_preloading}/cambodia_cpi_preloading.tab", ///
  delimiter(tab) replace
* note: the file name needs to match the questionnaire variable in Designer
* questionnaire can be found here: https://designer.mysurvey.solutions/q/details/7cafce4a-c0c2-4b56-974e-c1638b1d7758

* ------------------------------------------------------------------------------
* product-level data
* ------------------------------------------------------------------------------

* ingest Stata data
use "${data}/product_prices.dta", clear

* save to tab-delimited format
export delimited using "${results_preloading}/products.tab", ///
  delimiter(tab) replace
* note: the file name needs to match the roster ID variable for the target roster

* ==============================================================================
* create a zip archive of the files
* ==============================================================================

* change to the target directory
cd "${results_preloading}"
* create a zip file from all -.tab- files found in that directory
zipfile *.tab, saving("fake_data.zip", replace)
