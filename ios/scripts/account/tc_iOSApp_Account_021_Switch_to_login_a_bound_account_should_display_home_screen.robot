*** Settings ***
Documentation    Suite description
Resource        ../../Resources/Account.robot
Test Setup      Launch APP
Test Teardown   Close APP And Screenshot
Force Tags      @FEATURE=Account    @AUTHOR=Nick_Chen

*** Test Cases ***
tc_iOSApp_Account_021_Switch_to_login_a_bound_account_should_display_home_screen
    [Tags]    Sanity
    Given Check screen on login page
    When User "unbound email" logs in with password "unbound password"
    And Unbound page should be displayed
    And Log out account
    And Login page should be displayed
    And User "bound email" logs in with password "bound password"
    Then Home screen should be displayed

*** Comment ***
2018-05-21 Nick Chen
Created the script