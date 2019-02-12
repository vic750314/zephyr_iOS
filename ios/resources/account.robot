*** Settings ***
Documentation  Collected all keywords from scripts of Account directory.
Resource  Common.robot
Resource  po/po_login_page.robot
Resource  po/po_user_page.robot
Resource  po/po_add_device.robot
Resource  po/po_home.robot

*** Variables ***
${UnverifiedEmail}      autotest@gmail.com
${UnverifiedPassword}   autotest
${EmptyEmail}
${EmptyPassword}
${WrongPassword}        12345678
${AllLowercaseEmail}    gemtek.sv@gmail.com

*** Keywords ***
Check screen on login page
    [Tags]   @AUTHOR=Nick_Chen
    Run Keywords    Check Login Page        AND
    ...             Wait Login Page

Check screen on sign up page
    [Tags]   @AUTHOR=Doris_Jhan
    Run Keywords    Check Login Page        AND
    ...             Wait Login Page         AND
    ...             Validate Login Page     AND
    ...             Sign Up                 AND
    ...             Wait Sign Up Page

# login_with_unverified_email
User "unverified email" logs in with password "unverified password"
    [Tags]   @AUTHOR=Nick_Chen
    Validate Login Page
    common.Input Email and Password     ${UnverifiedEmail}      ${UnverifiedPassword}
    Sign In
    Wait the verified email dialog

The verified email dialog should pop up
    [Tags]   @AUTHOR=Nick_Chen
    Validate the verified email dialog

Login with a unverified email should pop up the dialog
    [Tags]   @AUTHOR=Nick_Chen
    Run Keyword If Previous Test Pass Or Stopping Test      Validate the verified email dialog

Cancel the verified email dialog
    [Tags]   @AUTHOR=Nick_Chen
    Click No not now
    Wait Login Page

Login page should be displayed
    [Tags]   @AUTHOR=Nick_Chen
    Validate Login Page

# valid login with unbound account
Submit Credential
    [Tags]   @AUTHOR=Nick_Chen
    Sign In
    Wait Unbound Page

Unbound page should be displayed
    [Tags]   @AUTHOR=Nick_Chen
    Validate Unbound Page

# login_with_a_valid_unbound_account_twice_should_display_unbound_page_twice
User "unbound email" logs in with password "unbound password"
    [Tags]   @AUTHOR=Nick_Chen
    Validate Login Page
    common.Input Unbound Email and Password
    Sign In
    Wait Unbound Page

Log out account
    [Tags]   @AUTHOR=Nick_Chen
    Sign Out
    Wait Login Page

User "unbound email" logs in with password "unbound password" again
    [Tags]   @AUTHOR=Nick_Chen
    Validate Login Page
    common.Input Unbound Email and Password
    Sign In
    Wait Unbound Page

Unbound page should be displayed again
    [Tags]   @AUTHOR=Nick_Chen
    Validate Unbound Page

# Cancel_to_sign_up_page_should_return_to_the_login_page
Cancel to create account
    [Tags]   @AUTHOR=Doris_Jhan
    Click cancel of sign up
    Wait Login Page

# AndroidApp_Account_021_Switch_to_login_a_bound_account_should_display_home_screen.robot
User "bound email" logs in with password "bound password"
    [Tags]   @AUTHOR=Nick_Chen
    Validate Login Page
    common.Input Bound Email and Password
    Sign In
    po_home.Wait Bound Page

Home screen should be displayed
    [Tags]   @AUTHOR=Nick_Chen
    po_home.Validate Bound Page

# AndroidApp_Account_023_All_fields_are_empty_when_logging_in_the_sign_in_button_should_be_disabled
User "empty" logs in with password "empty"
    [Tags]   @AUTHOR=Nick_Chen
    Validate Login Page
    common.Input Email and Password     ${EmptyEmail}       ${EmptyPassword}
    Sign In
    Sleep   3

The sign in button should be disabled
    [Tags]   @AUTHOR=Nick_Chen
    Validate Login Page

# Invalid_Login.robot
Submit Incorrect Credential
    [Tags]   @AUTHOR=Nick_Chen
    Sign In

An invalid login message should be displayed
    [Tags]   @AUTHOR=Nick_Chen
    Cancel wait sign in fail
    Validate Login Page

# The_checkbox_of_privacy_policy_should_be_checked_or_unchecked
Check the agreed privacy policy
    [Tags]   @AUTHOR=Doris_Jhan
    Validate the privacy policy should be unchecked
    Click the checkbox of sign up

The checkbox of privacy policy should be checked
    [Tags]   @AUTHOR=Doris_Jhan
    Validate the privacy policy should be checked

Check the agreed privacy policy again
    [Tags]   @AUTHOR=Doris_Jhan
    Click the checkbox of sign up

The checkbox of privacy policy should be unchecked
    [Tags]   @AUTHOR=Doris_Jhan
    Validate the privacy policy should be unchecked

# The_hyperlink_of_privacy_policy_should_open_privacy_policy_page
When Browse the webpage of privacy policy
    [Tags]   @AUTHOR=Doris_Jhan
    Click the hyperlink of privacy policy

Then The privacy policy page shoule be displayed
    [Tags]   @AUTHOR=Doris_Jhan
    Validate the privacy policy webpage

# tc_iOSApp_Account_018_Relaunch_APP_with_an_unbound_login_account_should_display_unbound_page
Kill the APP
    [Tags]   @AUTHOR=Nick_Chen
    common.Close APP during test case

Relaunch the APP
    [Tags]   @AUTHOR=Nick_Chen
    common.Launch APP

# tc_iOSApp_Account_067_Recover_password_with_an_all_lowercase_email_should_display_email_successfully_sent_page
Check screen on forgot password page
    [Tags]   @AUTHOR=Nick_Chen
    Run Keywords    Check Login Page        AND
    ...             Wait Login Page         AND
    ...             Validate Login Page     AND
    ...             Click Forget Password   AND
    ...             Wait Forget Password

Submit an all lowercase email
    [Tags]   @AUTHOR=Nick_Chen
    Validate Forget Password
    Input email on forgot password      ${AllLowercaseEmail}
    Click submit on forgot password
    Wait email sent successfully

Email successfully sent page should be displayed
    [Tags]   @AUTHOR=Nick_Chen
    Validate email sent successfully

Complete forgot password process
    [Tags]   @AUTHOR=Nick_Chen
    Click OK on email sent successfully

# tc_iOSApp_Account_046_Sign_up_with_an_unregistered_email_should_show_verify_email_page
Sign up with an unregistered email
    [Tags]   @AUTHOR=Nick_Chen
    Validate Sign Up Page
    Input sign up information
    Click the checkbox of sign up
    Click next on sign up
    Wait Verify Email

Verify email page should be displayed
    [Tags]   @AUTHOR=Nick_Chen
    Validate verify email

*** Comment ***
2018-06-05 Nick_Chen
Move keywords for setup and teardown to common.robot

2018-06-01 Nick_Chen
Add 046

2018-05-31 Nick_Chen
Revise "Sign Up" as "Check Sign Up Status"

2018-05-30 Nick_Chen
Add 001, 018, 067

2018-05-29 Nick_Chen
Copy android scripts to iOS scripts

2018-05-22 Nick_Chen
Add iOSApp_Account_Invalid_Login

2018-05-22 Doris_Jhan
Add 6 keywords for new script (the checkbox and hyperlink of privacy policy)

2018-05-21 Nick_Chen
1.Redefine keywords of "XXX page should be displayed..."
2.Add iOSApp_Account_021_Switch_to_login_a_bound_account_should_display_home_screen.robot
3.Add iOSApp_Account_023_All_fields_are_empty_when_logging_in_the_sign_in_button_should_be_disabled

2018-05-18 Nick_Chen
Modify "Click cancel" as "Click cancel of sign up"

2018-04-17 Doris_Jhan
Add 2 keywords-
"Check screen on sign up page", "cancel to create account"

2018-03-28 Nick_Chen
Created the resource

