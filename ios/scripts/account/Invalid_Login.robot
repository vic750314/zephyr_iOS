*** Settings ***
Documentation   Because the 9 test cases are related of login with invalid email,
...             they are combined into one test suite.
Resource        ../../resources/account.robot
Suite Setup     Launch APP
Test Teardown   Screenshot while test failed
Suite Teardown  Close APP
Test Template   Invalid login should display a alert message
Force Tags      @FEATURE=Account    @AUTHOR=Nick_Chen

*** Variables ***
${WrongPassword}            gemtekrd4
${Nickname}                 doris.at4
${WrongAccount}             gemtek.s@gmail.com
${ATooLongPassword}         1234567890123456
${ATooShortPassword}        1234567
${WrongEmailFormat}         doris_jhan@gemteks.c
${EmailWithPunctuation}     G*em&ek@gmail.com
${PasswordWithPunctuation}  *12345^**
${UnregisteredEmail}        gemtek.sss@gmail.com

*** Test Cases ***                                                                                                      EMAIL                     PASSWORD
tc_iOSApp_Account_024_Login_with_wrong_password_should_show_an_invalid_login_message                                                             Password=${WrongPassword}
    [Tags]  DEBUG
tc_iOSApp_Account_025_Login_with_nickname_should_show_an_invalid_login_message                                         Email=${Nickname}
    [Tags]  DEBUG
tc_iOSApp_Account_026_Login_with_wrong_account_so_password_doesnt_match_the_invalid_login_message_should_be_display    Email=${WrongAccount}
    [Tags]  DEBUG
tc_iOSApp_Account_027_Login_with_a_too_short_password_should_show_an_invalid_login_message                                                       Password=${ATooLongPassword}
    [Tags]  DEBUG
tc_iOSApp_Account_028_Login_with_a_too_long_password_should_show_an_invalid_login_message                                                        Password=${ATooShortPassword}
    [Tags]  DEBUG
tc_iOSApp_Account_029_Login_with_wrong_email_format_should_show_an_invalid_login_message                               Email=${WrongEmailFormat}
    [Tags]  DEBUG
tc_iOSApp_Account_030_Login_email_with_not_support_characters_should_show_an_invalid_login_message                     Email=${EmailWithPunctuation}
    [Tags]  DEBUG
tc_iOSApp_Account_031_Login_password_with_not_support_characters_should_show_an_invalid_login_message                                            Password=${PasswordWithPunctuation}
    [Tags]  DEBUG
tc_iOSApp_Account_032_Login_with_an_unregistered_email_should_show_an_invalid_login_message                            Email=${UnregisteredEmail}
    [Tags]  DEBUG

*** Keywords ***
Invalid login should display a alert message
    [Arguments]     ${Email}=gemtek.sv@gmail.com    ${Password}=gemtekrd3
    Given Check screen on login page
    When Input Email and Password    ${Email}    ${Password}
    And Submit Incorrect Credential
    Then An invalid login message should be displayed

*** Comment ***
2018-05-22 Nick Chen
Created the script