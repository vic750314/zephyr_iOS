*** Settings ***
Documentation    Suite description
Resource        ../../Resources/Account.robot
Test Setup      Launch APP
Test Teardown   Close APP And Screenshot
Force Tags      @FEATURE=Account    @AUTHOR=Doris_Jhan

*** Test Cases ***
tc_iOSApp_Account_043_The_hyperlink_of_privacy_policy_should_open_privacy_policy_page
    [Tags]    DEBUG
    Given Check screen on sign up page
    When Browse the webpage of privacy policy
    Then The privacy policy page shoule be displayed

*** Comment ***
2018-05-22 Doris_Jhan
Created the script