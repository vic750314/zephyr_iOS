*** Settings ***
Documentation   Beacuse the two cases are related of unverified dialog, they are combined into one test suite.
Resource        ../../Resources/Account.robot
Suite Setup     Launch APP
Test Teardown   Screenshot while test failed
Suite Teardown  Close APP
Force Tags      @FEATURE=Account    @AUTHOR=Nick_Chen

*** Test Cases ***
tc_iOSApp_Account_010_Login_with_a_unverified_email_should_pop_up_the_dialog
    [Tags]    DEBUG
    Given Check screen on login page
    When User "unverified email" logs in with password "unverified password"
    Then The verified email dialog should pop up

tc_iOSApp_Account_011_Cancel_the_unverified_email_dialog_should_return_to_login_page
    [Tags]    DEBUG
    Given Login with a unverified email should pop up the dialog
    When Cancel the verified email dialog
    Then Login page should be displayed

*** Comment ***
2018-05-29 Nick Chen
Rename test case

2018-04-09 Nick Chen
Added the second test case

2018-03-28 Nick Chen
Created the script