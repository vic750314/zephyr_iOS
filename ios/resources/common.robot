*** Settings ***
Library     AppiumLibrary
Library     OperatingSystem
Resource    po/po_login_page.robot
Variables   ../config/param_ios_zephyr.yaml

*** Keywords ***
Launch APP
    [Tags]   @AUTHOR=Nick_Chen
    Check Auto Add File Exist
    Open Application                &{global}[g_iOS_REMOTE_URL]
    ...                platformName=&{global}[g_iOS_PLATFORM_NAME]
    ...             platformVersion=&{global}[g_iOS_PLATFORM_VERSION]
    ...                  deviceName=&{global}[g_iOS_device_name]
    ...                         app=&{global}[g_iOS_APK]
    ...                        udid=&{global}[g_iOS_UDID]
    ...                    bundleId=&{global}[g_iOS_BUNDLE_ID]
    ...              automationName=XCUITest

Check Auto Add File Exist
    [Tags]   @AUTHOR=Nick_Chen
    Which Automated Testing
    Check Auto Add File
    Check Auto Add File For Sanity
    Run Keyword If  '${CHECK_PATH}' == 'True' and '${CHECK_FILE}' == 'False'     Run Keywords
    ...             Append To File  &{global}[g_app_auto_add_filepath]    AutoAddUnregisteredEmail: 1      AND
    ...             Set Global Variable      ${AutoAddUnregisteredEmail}     0
    ...   ELSE IF   '${CHECK_PATH}' == 'False' and '${CHECK_SANITY_FILE}' == 'False'     Run Keywords
    ...             Append To File  &{global}[g_app_auto_add_sanity_filepath]    AutoAddUnregisteredEmail: 1      AND
    ...             Set Global Variable      ${AutoAddUnregisteredEmail}     0

Which Automated Testing
    [Documentation]   Running Sanity test while ${Check_PATH} = False
    [Tags]   @AUTHOR=Nick_Chen
    ${CHECK_PATH}   Run Keyword And Return Status
    ...             File Should Exist   &{global}[g_app_path]   Running sanity test now.
    Set Global Variable    ${CHECK_PATH}
    log     ${CHECK_PATH}

Check Auto Add File
    [Tags]   @AUTHOR=Nick_Chen
    ${CHECK_FILE}   Run Keyword And Return Status
    ...             File Should Exist   &{global}[g_app_auto_add_filepath]   The tmp_for_auto_add.yaml does not exist!
    Set Global Variable    ${CHECK_FILE}
    log     ${CHECK_FILE}

Check Auto Add File For Sanity
    [Tags]   @AUTHOR=Nick_Chen
    ${CHECK_SANITY_FILE}    Run Keyword And Return Status
    ...                     File Should Exist   &{global}[g_app_auto_add_sanity_filepath]   The tmp_for_auto_add.yaml does not exist!
    Set Global Variable    ${CHECK_SANITY_FILE}
    log     ${CHECK_SANITY_FILE}

Remove APP
    [Tags]   @AUTHOR=Nick_Chen
    Remove Application  &{global}[g_iOS_BUNDLE_ID]

Close APP during test case
    [Tags]   @AUTHOR=Nick_Chen
    Quit Application

# Be used in "Test Teardown" for a unique test
Close APP And Screenshot
    [Tags]   @AUTHOR=Nick_Chen
    Run Keyword If Test Failed  Capture Page Screenshot
    Run Keyword And Ignore Error  Close All Applications

# Be used in "Test Teardown" of a suite
Screenshot while test failed
    [Tags]   @AUTHOR=Nick_Chen
    Run Keyword If Test Failed  Capture Page Screenshot

# Be used in "Suite Teardown" of a suite
Close APP
    [Tags]   @AUTHOR=Nick_Chen
    Run Keyword And Ignore Error  Close All Applications

Swipe Left
    [Tags]   @AUTHOR=Nick_Chen
# Default is 90  50  10  50, the reason is that it will touch the split view of Home/Hoods/Support
    Swipe By Percent    95    50    10   50
    sleep    3s

Swipe Right
    [Tags]   @AUTHOR=Nick_Chen
    Swipe By Percent    10    50    90   50
    sleep    3s

Swipe Up
    [Tags]   @AUTHOR=Nick_Chen
    Swipe By Percent    50    90    50   10
    sleep    3s

Swipe Down
    [Tags]   @AUTHOR=Nick_Chen
    Swipe By Percent    50    10    50   90
    sleep    3s

Run Keyword If Previous Test Pass Or Stopping Test
    [Tags]   @AUTHOR=Nick_Chen
    [Arguments]     ${Keyword}
    Run Keyword If  '${PREV TEST STATUS}' == 'PASS'     ${Keyword}
    ...  ELSE       Log  Previous test failed, then stopping this test case.

Input Email and Password
    [Tags]   @AUTHOR=Nick_Chen
    [Arguments]     ${UserEmail}=&{global}[g_app_unbound_email]     ${UserPassword}=&{global}[g_app_unbound_password]
    Clear Text  ${textfieldEmail_SignIn}
    Input Text  ${textfieldEmail_SignIn}      ${UserEmail}
    Hide Keyboard
    Clear Text  ${textfieldPassword_SignIn}
    Input Text  ${textfieldPassword_SignIn}      ${UserPassword}
    Hide Keyboard

Input Bound Email and Password
    [Tags]   @AUTHOR=Nick_Chen
    Input Email and Password    &{global}[g_app_bound_email]    &{global}[g_app_bound_password]

Input Unbound Email and Password
    [Tags]   @AUTHOR=Nick_Chen
    Input Email and Password    &{global}[g_app_unbound_email]      &{global}[g_app_unbound_password]


*** Comment ***
2018-06-06 Nick_Chen
Add keywords for sanity testing.

2018-06-05 Nick_Chen
Add keywords for setup and teardown

2018-06-01 Nick_Chen
Add a keyword "Check File" and add it to "Launch APP"

2018-05-29 Nick_Chen
Add 3 keywords "Input Email and Password", "Input Bound Email and Password" and "Input unbound Email and Password"

2018-03-28 Nick_Chen
Created the resource