* ==============================================================================
* set up data
* ==============================================================================

clear
set obs 15

* initialize variables
gen rowcode = .
gen market = .
gen product = .
gen price = .

* ==============================================================================
* input values in blank data frame
* ==============================================================================

* set the ID required by SuSo as a sequential count number
replace rowcode = _n

* set market
replace market = 1 in 1/5
replace market = 2 in 6/10
replace market = 3 in 11/15

* set product ID
* code 1
replace product = 1 in 1
replace product = 1 in 6
replace product = 1 in 11
* code 2
replace product = 1 in 2
replace product = 1 in 7
replace product = 1 in 12
* code 3
replace product = 1 in 3
replace product = 1 in 8
replace product = 1 in 13
* code 4
replace product = 1 in 4
replace product = 1 in 9
replace product = 1 in 14
* code 5
replace product = 1 in 5
replace product = 1 in 10
replace product = 1 in 15

* set past prices
replace price = 100 in	1
replace price = 327 in	2
replace price = 425 in	3
replace price = 150 in	4
replace price = 217 in	5
replace price = 333 in	6
replace price = 666 in	7
replace price = 999 in	8
replace price = 777 in	9
replace price = 555 in	10
replace price = 111 in	11
replace price = 222 in	12
replace price = 333 in	13
replace price = 444 in	14
replace price = 555 in	15

* ==============================================================================
* write to disk
* ==============================================================================

save "${data}/lookup_table.dta", replace
