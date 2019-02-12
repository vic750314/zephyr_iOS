*** Settings ***
Documentation    Suite description
Resource        ../../Resources/Account.robot
Test Setup      Launch APP
Test Teardown   Close APP And Screenshot
Force Tags      @FEATURE=Account    @AUTHOR=Nick_Chen

*** Test Cases ***
tc_iOSApp_Account_023_All_fields_are_empty_when_logging_in_the_sign_in_button_should_be_disabled
    [Tags]    DEBUG
    Given Check screen on login page
    When User "empty" logs in with password "empty"
    Then The sign in button should be disabled

*** Comment ***
2018-05-21 Nick Chen
Created the script