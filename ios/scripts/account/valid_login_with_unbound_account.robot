*** Settings ***
Documentation   Because the 4 test cases are related of login with different unbound accounts,
...             they are combined into one test suite.
Resource        ../../Resources/Account.robot
Suite Setup     Launch APP
Test Teardown   Screenshot while test failed
Suite Teardown  Close APP
Test Template   Valid login with unbound account should display unbound page
Force Tags      @FEATURE=Account    @AUTHOR=Nick_Chen

*** Variables ***
${AllUppercase}             GEMTEK.SV@GMAIL.COM
${AllLowercase}             gemtek.sv@gmail.com
${UppercaseAndLowercase}    GeMtEk.Sv@GmaIl.CoM
${BlackCloud}               gemtek.sv@gmail.com
${Password}                 gemtekrd3

*** Test Cases ***                                                                              EMAIL
tc_iOSApp_Account_013_Login_with_an_all_uppercase_account_should_display_unbound_page                                 ${AllUppercase}
    [Tags]  DEBUG
tc_iOSApp_Account_014_Login_with_an_all_lowercase_account_should_display_unbound_page                                 ${AllLowercase}
    [Tags]  Sanity
tc_iOSApp_Account_015_Login_with_a_uppercase_and_lowercase_account_should_display_unbound_page                        ${UppercaseAndLowercase}
    [Tags]  DEBUG
tc_iOSApp_Account_016_Login_with_an_existing_account_that_registered_in_other_BLKD_App_should_display_unbound_page    ${BlackCloud}
    [Tags]  DEBUG

*** Keywords ***
Valid login with unbound account should display unbound page
    [Arguments]     ${Email}
    Given Check screen on login page
    When Input Email and Password    ${Email}    ${Password}
    And Submit Credential
    Then Unbound page should be displayed

*** Comment ***
2018-05-29  Nick Chen
Rename test case, and revise keyword "Input Email and Password"

2018-04-09  Nick Chen
Created the script