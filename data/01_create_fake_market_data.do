* ==============================================================================
* set up data
* ==============================================================================

clear
set obs 1

* initialize variables
gen interview__id = .
gen market = .

* ==============================================================================
* input values in blank data frame
* ==============================================================================

* input values in blank data frame
replace interview__id = 1 in 1
replace market = 1 in 1

* ==============================================================================
* write to disk
* ==============================================================================

save "${data}/markets.dta", replace
