
`infermedica` : R API Interface to the Infermedica API

The following functions are implemented:

-   `im_add_evidence`: Add evidence to a diagnosis request object
-   `im_add_patient_info`: Add patient info to a diagnosis request object
-   `im_get_condition`: Retrieve info for a specific symptom
-   `im_get_diagnosis`: Send built diagnosis request to Infermedica API
-   `im_get_risk_factors`: Retrieve info for a specific lab test
-   `im_get_symptom`: Retrieve info for a specific symptom
-   `im_info`: Retrieve Infermedica API info
-   `im_list_conditions`: Retrieve list of conditions from Infermedica API
-   `im_list_lab_tests`: Retrieve list of lab tests from Infermedica API
-   `im_list_risk_factors`: Retrieve list of risk factors from Infermedica API
-   `im_list_symptoms`: Retrieve list of symptoms from Infermedica API
-   `im_lookup`: Returns a single observation matching given phrase from Infermedica API
-   `im_searc`: Returns list of observations matching the given phrase from Infermedica API
-   `im_start_diagnosis`: Start building a diagnosis request object for the Infermedica API

### Installation

``` r
devtools::install_git("https://gitlab.com/hrbrmstr/infermedica.git")
```

### Usage

    ## [1] '0.1.0'

### Test Results

    ## [1] "Tue Sep 20 11:30:53 2016"

    ## testthat results ========================================================================================================
    ## OK: 0 SKIPPED: 0 FAILED: 0
    ## 
    ## DONE ===================================================================================================================
