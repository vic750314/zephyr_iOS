*** Settings ***
Documentation    Suite description
Resource        ../../Resources/my_hood.robot
Test Setup      Launch APP
Test Teardown   Close APP And Screenshot
Force Tags      @FEATURE=My_Hood    @AUTHOR=Doris_Jhan

*** Test Cases ***
tc_iOSApp_My_Hood_219_Switch to my hood page should display the registered device info
    [Tags]    Sanity
    Given Check screen on my hood page
    Then The registered device info should be displayed

*** Comment ***
2018-06-05 Nick_Chen
Revise the script

2018-06-04 Doris_Jhan
Created the script