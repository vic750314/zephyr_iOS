*** Settings ***
Documentation    Suite description
Resource        ../../Resources/Account.robot
Test Setup      Launch APP
Test Teardown   Close APP And Screenshot
Force Tags      @FEATURE=Account    @AUTHOR=Doris_Jhan

*** Test Cases ***
tc_iOSApp_Account_042_The_checkbox_of_privacy_policy_should_be_checked_or_unchecked
    [Tags]    DEBUG
    Given Check screen on sign up page
    When Check the agreed privacy policy
    And The checkbox of privacy policy should be checked
    And Check the agreed privacy policy again
    Then The checkbox of privacy policy should be unchecked

*** Comment ***
2018-04-18 Doris_Jhan
Created the script