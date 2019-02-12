*** Settings ***
Documentation    Suite description
Resource        ../../Resources/Account.robot
Test Setup      Launch APP
Test Teardown   Close APP And Screenshot
Force Tags      @FEATURE=Account    @AUTHOR=Nick_Chen

*** Test Cases ***
tc_iOSApp_Account_017_Login_with_a_valid_unbound_account_twice_should_display_unbound_page_twice
    [Tags]    DEBUG
    Given Check screen on login page
    When User "unbound email" logs in with password "unbound password"
    And Unbound page should be displayed
    And Log out account
    And User "unbound email" logs in with password "unbound password" again
    Then Unbound page should be displayed again

*** Comment ***
2018-05-29 Nick Chen
Rename test case

2018-04-12 Nick Chen
Created the script