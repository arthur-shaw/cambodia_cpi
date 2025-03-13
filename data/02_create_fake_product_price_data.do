* ==============================================================================
* set up data
* ==============================================================================

clear
set obs 5

* initialize variables
gen interview__id = .
gen products__id = .
gen past_price = .

* ==============================================================================
* input values in blank data frame
* ==============================================================================

* interview ID
replace interview__id = 1

* set product ID
replace products__id = 1 in 1
replace products__id = 2 in 2
replace products__id = 3 in 3
replace products__id = 4 in 4
replace products__id = 5 in 5

* set past prices
replace past_price = 100 in	1
replace past_price = 327 in	2
replace past_price = 425 in	3
replace past_price = 150 in	4
replace past_price = 217 in	5

* ==============================================================================
* write to disk
* ==============================================================================

save "${data}/product_prices.dta", replace
