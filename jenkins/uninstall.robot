*** Settings ***
Documentation    This file is use to uninstall app only.
Variables   ../ios/config/param_ios_zephyr.yaml
Library     AppiumLibrary
Test Teardown   Remove App

*** Test Cases ***
Launch and remove app
    [Tags]    DEBUG
    Launch APP
    Remove App

*** Keywords ***
Launch APP
    [Tags]   @AUTHOR=Nick_Chen
    Open Application                &{global}[g_iOS_REMOTE_URL]
    ...                platformName=&{global}[g_iOS_PLATFORM_NAME]
    ...             platformVersion=&{global}[g_iOS_PLATFORM_VERSION]
    ...                  deviceName=&{global}[g_iOS_device_name]
    ...                         app=&{global}[g_iOS_APK]
    ...                        udid=&{global}[g_iOS_UDID]
    ...                    bundleId=&{global}[g_iOS_BUNDLE_ID]
    ...              automationName=XCUITest

Remove App
    Remove Application      com.zephyr.hoods

*** comment ***
2018-06-06 Nick_Chen
Create the script