*** Settings ***
Documentation    Suite description
Resource        ../../Resources/Account.robot
Test Setup      Launch APP
Test Teardown   Close APP And Screenshot
Force Tags      @FEATURE=Account    @AUTHOR=Nick_Chen

*** Test Cases ***
tc_iOSApp_Account_046_Sign_up_with_an_unregistered_email_should_show_verify_email_page
    [Tags]    Sanity
    Given Check screen on sign up page
    When Sign up with an unregistered email
    Then Verify email page should be displayed

*** Comment ***
2018-06-01 Nick Chen
Created the script

