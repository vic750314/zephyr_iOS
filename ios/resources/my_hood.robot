*** Settings ***
Documentation  Collected all keywords from scripts of My_Hood directory.
Resource  Common.robot
Resource  po/po_login_page.robot
Resource  po/po_device_setting.robot
Resource  po/po_home.robot
Resource  po/po_my_hood.robot
Resource  po/po_register_device.robot

*** Keywords ***
Check screen on my hood page
    [Tags]   @AUTHOR=Doris_Jhan
    Run Keywords    Check Login Page                    AND     #po_login_page
    ...             Wait Login Page                     AND     #po_login_page
    ...             Validate Login Page                 AND     #po_login_page
    ...             Input Bound Email and Password      AND     #common
    ...             Sign in                             AND     #po_login_page
    ...             Wait Home Page                      AND     #po_home
    ...             Validate Home Page                  AND     #po_home
    ...             Swipe Left                          AND     #common
    ...             Wait My Hood Page

# tc_iOSApp_My_Hood_219_Switch_to_my_hood_page_should_display_the_registered_device_info
The registered device info should be displayed
    [Tags]   @AUTHOR=Doris_Jhan
    Validate all elements of device on the my hood page

*** Comment ***
2018-06-05 Nick_Chen
Modify the script

2018-06-04 Doris_Jhan
Created the resource
