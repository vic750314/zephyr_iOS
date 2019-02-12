*** Settings ***
Documentation    Suite description
Resource        ../../Resources/installation.robot
Test Setup      Launch APP
Test Teardown   Close APP And Screenshot
Force Tags      @FEATURE=Installation    @AUTHOR=Nick_Chen

*** Test Cases ***
tc_iOSApp_INST_001_Install_App_From_App_store
    [Tags]    Sanity
    Given The hood app does not be installed
    When Check screen on login page
    Then Login page should be displayed

*** Comment ***
2018-05-30 Nick Chen
Created the script