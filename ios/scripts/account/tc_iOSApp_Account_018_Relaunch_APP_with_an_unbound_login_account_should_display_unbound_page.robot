*** Settings ***
Documentation    Suite description
Resource        ../../Resources/Account.robot
Test Setup      Launch APP
Test Teardown   Close APP And Screenshot
Force Tags      @FEATURE=Account    @AUTHOR=Nick_Chen

*** Test Cases ***
tc_iOSApp_Account_018_Relaunch_APP_with_an_unbound_login_account_should_display_unbound_page
    [Tags]    Sanity
    Given Check screen on login page
    When User "unbound email" logs in with password "unbound password"
    And Unbound page should be displayed
    And Kill the APP
    And Relaunch the APP
    Then Unbound page should be displayed again

*** Comment ***
2018-06-01 Nick_Chen
Created the script

