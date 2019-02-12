*** Settings ***
Documentation    Suite description
Resource        ../../Resources/Account.robot
Test Setup      Launch APP
Test Teardown   Close APP And Screenshot
Force Tags      @FEATURE=Account    @AUTHOR=Doris_Jhan

*** Test Cases ***
tc_iOSApp_Account_032_Cancel_to_sign_up_page_should_return_to_the_login_page
    [Tags]    DEBUG
    Given Check screen on sign up page
    When Cancel to create account
    Then Login page should be displayed

*** Comment ***
2018-05-29 Nick_Chen
Rename test case

2018-04-17 Doris_Jhan
Created the script