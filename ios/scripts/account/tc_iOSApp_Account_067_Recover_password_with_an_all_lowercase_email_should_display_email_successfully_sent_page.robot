*** Settings ***
Documentation    Suite description
Resource        ../../Resources/Account.robot
Test Setup      Launch APP
Test Teardown   Close APP And Screenshot
Force Tags      @FEATURE=Account    @AUTHOR=Nick_Chen

*** Test Cases ***
tc_iOSApp_Account_067_Recover_password_with_an_all_lowercase_email_should_display_email_successfully_sent_page
    [Tags]    Sanity
    Given Check screen on forgot password page
    When Submit an all lowercase email
    And Email successfully sent page should be displayed
    And Complete forgot password process
    Then Login page should be displayed

*** Comment ***
2018-05-30 Nick_Chen
Created the script