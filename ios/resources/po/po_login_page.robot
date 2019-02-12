*** Settings ***
Documentation  Collected all elements from Login_Page of Zephyr application.
Library     OperatingSystem
Variables   ../../config/param_ios_zephyr.yaml
Variables   ../../config/tmp_for_auto_add.yaml
Variables   ../../config/tmp_for_sanity_auto_add.yaml
Resource    ../common.robot
Resource    po_user_page.robot
Resource    po_add_device.robot
Resource    po_home.robot

*** Variables ***
# First launch -> Sign In
${imgLogo_SignIn}               logo
${textfieldEmail_SignIn}		et_email
${textEmail_SignIn}
${textfieldPassword_SignIn}	    et_password
${textPassword_SignIn}
${btnForgetPassword_SignIn}     tv_forget_password
${btnSignIn_SignIn}			    btn_sign_in
${btnSignUp_SignIn}			    tv_sign_up
${imgError_SignIn}              pict_error
${text1_SignIn}
${btnOK_SignIn}                 btn_left

# Sign in -> Login with unverified account
# -> Sign In Unverified
${textPleaseVerifyYourEmail_SignInUnverified}   Please verify your email
${textSignInUnverified_SignInUnverified}	    Please confirm your email address.We will re-send the activation mail to you
${textEmail_SignInUnverified}
${btnResend_SignInUnverified}                   btn_left
${btnNoNotNow_SignInUnverified}                 btn_right

# Sign in -> Login with invalid account
# -> Sign In Fail"
${imgError_SignInFail}      pict_error
${text_SignInFail}          User Name or password is not correct
${btnOK_SignInFail}         btn_left

# Sign in -> Forget (Forget password)
${textForgotPassword_Forget}    Forget Password
${btnCancel_Forget}		    	tv_back
${text_Forget}					To recover your password, please enter the email address you use to sign in Zephyr
${textfieldEmail_Forget}		et_email
${textEmail_Forget}				Email
${btnSubmit_Forget}				btn_submit

# Forget password
# -> Forget Success (Forgot password email successfully sent)
${imgSuccess_ForgetSuccess}     pict_success
#${text_ForgetSuccess}           To get back to your account, please check your email
${text_ForgetSuccess}           To get back to your account
${btnOK_ForgetSuccess}          btn_left

# Forget password
# -> Forget Fail (Forget password fail)
${textForgotPassword_ForgetFail}
${btnCancel_ForgetFail}
${textOops_ForgetFail}
${textfieldEmail_ForgetFail}
${btnSubmit_ForgetFail}

# Sign in > click sign up -> Sign Up
${textCreateAccount_SignUp}		    Create Account
${btnCancel_SignUp}		            tv_back
${btnNext_SignUp}		            tv_next
${textfieldEmail_SignUp}    		et_email
${textEmail_SignUp}
${textfieldPassword_SignUp} 		et_password
${textPassword_SignUp}
${textfieldPasswordConfirm_SignUp}  et_password_confirm
${textPasswordConfirm_SignUp}
${textfieldNickname_SignUp}		    et_nick_name
${textNickname_SignUp}
${textfieldAddress_SignUp}  		et_address
${textAddress_SignUp}
${textfieldPhone_SignUp}	    	et_phone
${textPhone_SignUp}
${textfieldCity_SignUp}		        et_city
${textCity_SignUp}
${textfieldState_SignUp}		    et_state
${textState_SignUp}
${textfieldZip_SignUp}		        et_zip
${textZip_SignUp}
${btnCheck_SignUp}	            	cb_policy
${btnPrivacyPolicy_SignUp}		    tv_privacy

# Sign Up -> Sign Up Fail
${imgError_SignUpFail}                          pict_error
${textRegisterFaliture_SignUpFail}              Register Faliture
${text_SignUpFail}                              The Internet connection appears to be offline
${textEmaiDomainCannotBeResolved_SignUpFail}    Email Domain cannot be resolved!
${btnOK_SignUpFail}                             btn_left

# Sign Up Page -> click next
# -> Verify Email (Verify email after signing up)"
${textCreateAccount_VerifyEmail}
${btnBack_VerifyEmail}		                Back
${imgEmail_VerifyEmail}	                	pict_email_verified
${textPleaseVerifyYourEmail_VerifyEmail}    Please verify your email
${text_VerifyEmail}		                	Once you verify your email address, you can get started in Zephyr
${btnComplete_VerifyEmail}		            btn_complete

# "Verify email -> registered not already -> click complete
# -> Verify Fail (Unverify email/Verify fail after signing up (with resend/cancel btn))"
${textPleaseVerifyYourEmail_VerifyFail}     Please verify your email
${textVerifiyEmail_VerifyFail}			    Please confirm your email address.We will re-send the activation mail to you
#${textEmail_VerifyFail}			            Email
${btnResend_VerifyFail}		                btn_left
${btnNoNotNow_VerifyFail}		            btn_right

# "Verify email -> registered already -> click complete
# -> Verify Success (Verify email success after signing up (with add hood btn))"

*** Keywords ***
Check Login Page
    [Tags]   @AUTHOR=Nick_Chen
#    ${CHECK_ELEMENT_OF_LOGIN_PAGE}           Run Keyword And Return Status   Page Should Contain Element    ${ProductLogo}
    ${CHECK_ELEMENT_OF_UNBOUND_PAGE}  Run Keyword And Return Status   Page Should Contain Text    ${textYouHaventAddedAnyHoods_Unbound}
#    Run Keyword If  '${CHECK_ELEMENT_OF_LOGIN_PAGE}' != 'True' and '${CHECK_ELEMENT_OF_LOGIN_WITH_NO_HOODS}' != 'True'
    Run Keyword If  '${CHECK_ELEMENT_OF_UNBOUND_PAGE}' != 'False'   Run Keywords
    ...             Sign Out	#po_user_page

Wait Login Page
    [Tags]   @AUTHOR=Nick_Chen
    Wait Until Page Contains Element    ${btnSignUp_SignIn}     timeout=10

Validate Login Page
    [Tags]   @AUTHOR=Nick_Chen
    Page Should Contain Element     ${btnSignUp_SignIn}
    Page Should not Contain text    ${textPleaseVerifyYourEmail_SignInUnverified}
    Page Should not Contain text    ${btnAddHood_Unbound}

Sign In
    [Tags]   @AUTHOR=Nick_Chen
    ${SignUp_Status}    Get Element Attribute    ${btnSignIn_SignIn}	    enabled
    log     ${SignUp_Status}
    Run Keyword If  '${SignUp_Status}' == 'true'    Run Keywords
    ...     Click Element   ${btnSignIn_SignIn}     AND
    ...     Sleep   4

Sign Up
    [Tags]   @AUTHOR=Doris_Jhan
    Click Element   ${btnSignUp_SignIn}
    Sleep   1  # animation of top bar for sign up in iOS only

Click No not now
    [Tags]   @AUTHOR=Nick_Chen
    Click Element  ${btnNoNotNow_SignInUnverified}

Wait the verified email dialog
    [Tags]   @AUTHOR=Nick_Chen
    Wait Until Page Contains    ${textPleaseVerifyYourEmail_SignInUnverified}      timeout=10

Validate the verified email dialog
    [Tags]   @AUTHOR=Nick_Chen
    Page Should Contain Text   ${textPleaseVerifyYourEmail_SignInUnverified}

Wait Sign Up Page
    [Tags]   @AUTHOR=Nick_Chen
    Wait Until Page Contains Element    ${btnPrivacyPolicy_SignUp}    timeout=10

Validate Sign Up Page
    [Tags]   @AUTHOR=Doris_Jhan
    Page Should Contain Element   ${btnPrivacyPolicy_SignUp}    timeout=10

Click cancel of sign up
    [Tags]   @AUTHOR=Doris_Jhan
    Click Element   ${btnCancel_SignUp}

Validate the privacy policy should be unchecked
    [Documentation]  There is no "Value" attribute when the privacy policay doesn't tick, thus this keyword is useless.
    [Tags]   @AUTHOR=Doris_Jhan
    ${Checkbox_Status}    Get Element Attribute    ${btnCheck_SignUp}	    enabled
    log    ${Checkbox_Status}
    Element Attribute Should Match    ${btnCheck_SignUp}	    enabled    ${Checkbox_Status}   true

Validate the privacy policy should be checked
    [Tags]   @AUTHOR=Doris_Jhan
    ${Checkbox_Status}    Get Element Attribute    ${btnCheck_SignUp}	    value
    log     ${Checkbox_Status}
    Element Attribute Should Match    ${btnCheck_SignUp}	    value    ${Checkbox_Status}    1

Click the checkbox of sign up
    [Tags]   @AUTHOR=Doris_Jhan
    Click Element  ${btnCheck_SignUp}

Click the hyperlink of privacy policy
    [Tags]   @AUTHOR=Doris_Jhan
    Click Element  ${btnPrivacyPolicy_SignUp}

Validate the privacy policy webpage
    [Tags]   @AUTHOR=Doris_Jhan
    Page Should Not Contain Element    ${btnPrivacyPolicy_SignUp}

Wait Sign In Fail
    [Tags]   @AUTHOR=Nick_Chen
    Wait Until Page Contains    ${text_SignInFail}      timeout=10

Click OK button of wait sign in fail
    [Tags]   @AUTHOR=Nick_Chen
    Click Element   ${btnOK_SignInFail}

Cancel wait sign in fail
    [Tags]   @AUTHOR=Nick_Chen
    ${DIALOGUE_CHECK}               Run Keyword And Return Status   Page Should Contain Text     ${text_SignInFail}
    ${VERIFIED_DIALOGUE_CHECK}      Run Keyword And Return Status   Page Should Contain Text     ${textPleaseVerifyYourEmail_SignInUnverified}
    Run Keyword If  '${DIALOGUE_CHECK}' == 'True'               Click OK button of wait sign in fail
    Run Keyword IF  '${VERIFIED_DIALOGUE_CHECK}' == 'True'      Click No not now

Click Forget Password
    [Tags]   @AUTHOR=Nick_Chen
    Click Element   ${btnForgetPassword_SignIn}

Wait Forget Password
    [Tags]   @AUTHOR=Nick_Chen
    Wait Until Page Contains    ${text_Forget}      timeout=10

Validate Forget Password
    [Tags]   @AUTHOR=Nick_Chen
    Page Should Contain Text    ${text_Forget}

Input email on forgot password
    [Tags]   @AUTHOR=Nick_Chen
    [Arguments]    ${Email}
    Clear Text  ${textfieldEmail_SignUp}
    Input text      ${textfieldEmail_Forget}    ${Email}
    Hide Keyboard

Click submit on forgot password
    [Tags]   @AUTHOR=Nick_Chen
    Click Element   ${btnSubmit_Forget}

Wait email sent successfully
    [Tags]   @AUTHOR=Nick_Chen
    Wait Until Page Contains    ${text_ForgetSuccess}   timeout=10

Validate email sent successfully
    [Tags]   @AUTHOR=Nick_Chen
    Page Should Contain Text    ${text_ForgetSuccess}

Click OK on email sent successfully
    [Tags]   @AUTHOR=Nick_Chen
    Click Element   ${btnOK_ForgetSuccess}

Input sign up information
    [Documentation]     ${CHECK_PATH} claims in common.robot
    [Tags]   @AUTHOR=Nick_Chen

    Run Keyword If  '${CHECK_PATH}' == 'True'    Run keywords
    ...             Set Test Variable    ${UnregisteredEmail}     &{global}[g_app_auto_add_unregistered_username]${AutoAddUnregisteredEmail}@gmail.com            AND
    ...             Set Test Variable    ${UnregisteredNickname}  &{global}[g_app_auto_add_unregistered_username]${AutoAddUnregisteredEmail}
    ...  ELSE       Run Keywords
    ...             Set Test Variable    ${UnregisteredEmail}     &{global}[g_app_auto_add_sanity_unregistered_username]${AutoAddUnregisteredEmail}@gmail.com        AND
    ...             Set Test Variable    ${UnregisteredNickname}  &{global}[g_app_auto_add_sanity_unregistered_username]${AutoAddUnregisteredEmail}

    Clear Text  ${textfieldEmail_SignUp}
    Input Text  ${textfieldEmail_SignUp}                ${UnregisteredEmail}
    Clear Text  ${textfieldPassword_SignUp}
    Input Text  ${textfieldPassword_SignUp}             gemtekrd3
    Clear Text  ${textfieldPasswordConfirm_SignUp}
    Input Text  ${textfieldPasswordConfirm_SignUp}      gemtekrd3
    Clear Text  ${textfieldNickname_SignUp}
    Input Text  ${textfieldNickname_SignUp}             ${UnregisteredNickname}
    Clear Text  ${textfieldAddress_SignUp}
    Input Text  ${textfieldAddress_SignUp}              gemtek
    Clear Text  ${textfieldPhone_SignUp}
    Input Text  ${textfieldPhone_SignUp}                0912345678
    Hide Keyboard
    Clear Text  ${textfieldCity_SignUp}
    Input Text  ${textfieldCity_SignUp}                 New Taipei
    Hide Keyboard
    Clear Text  ${textfieldState_SignUp}
    Input Text  ${textfieldState_SignUp}                Taiwan
    Hide Keyboard
    Clear Text  ${textfieldZip_SignUp}
    Input Text  ${textfieldZip_SignUp}                  900
    Hide Keyboard
    # Save ${AutoAddUnregisteredEmail} in a file for next unregistered email
    ${AutoAddUnregisteredEmail} =   Evaluate    ${AutoAddUnregisteredEmail} + 1
    Run Keyword If  '${CHECK_PATH}' == 'True'    Run keywords
    ...             Remove File     &{global}[g_app_auto_add_filepath]                                                              AND
    ...             Append To File  &{global}[g_app_auto_add_filepath]     AutoAddUnregisteredEmail: ${AutoAddUnregisteredEmail}
    ...  ELSE       Run Keywords
    ...             Remove File     &{global}[g_app_auto_add_sanity_filepath]                                                              AND
    ...             Append To File  &{global}[g_app_auto_add_sanity_filepath]     AutoAddUnregisteredEmail: ${AutoAddUnregisteredEmail}

Click next on sign up
    [Tags]   @AUTHOR=Nick_Chen
    Click Element   ${btnNext_SignUp}

Wait verify email
    [Tags]   @AUTHOR=Nick_Chen
    Wait Until Page Contains    ${textPleaseVerifyYourEmail_VerifyEmail}    timeout=10

Validate verify email
    [Tags]   @AUTHOR=Nick_Chen
    Page Should Contain Text    ${textPleaseVerifyYourEmail_VerifyEmail}

*** Comment ***
2018-06-07 Nick_Chen
Revise "Input sign up information" keyword.
2018-06-01 Nick_Chen
Add keywords for 046

2018-06-01 Doris_Jhan
Move 3 variables for unbound 4G from po_login_page to po_add_device
"${text2_Unbound_4G}, ${btnWi-FiSettings_Unbound_4G}, ${btnCancel_Unbound_4G}"

2018-05-31 Nick_Chen
Revise "Sign In" by changing "click element directly" to "add an if statement for 'Enable' attribute."

2018-05-30 Nick_Chen
Add keywords for 001, 018, 067

2018-05-29 Nick_Chen
Combine 2 keywords "Input Email" and "Input Password" into a keyword, and move it to common.robot

2018-05-22 Doris_Jhan
Add 5 keywords for new script (the checkbox and hyperlink of privacy policy)

2018-05-21 Nick Chen
Redefine keywords of "Wait..." and "Validate..."

2018-05-18 Nick Chen
Move "Sign out" to po_user_page.robot
Move "Validate unbound page" to po_add_device.robot
Modify "Click cancel" as "Click cancel of sign up"

2018-05-14 Nick Chen
Modify elements and variables for automatic test temporarily.

2018-04-17 Doris_Jhan
Add 3 keywords-
"validate sign up page", "sign up", "exit sign up page"
Modify 2 elements
"${SignUp}", "${TitleOfCreateAccount}"

2018-03-28 Nick Chen
Created the resource