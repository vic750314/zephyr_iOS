*** Settings ***
Documentation  Collect all keywords from scripts of Installation directory.
Resource  common.robot
Resource  account.robot
Resource  po/po_login_page.robot

*** Keywords ***
# tc_iOSApp_INST_001_Install_App_From_App_store
The hood app does not be installed
    [Tags]   @AUTHOR=Nick_Chen
    Remove APP  #common
    Launch APP   #common

*** Comment ***
2018-06-05 Nick_Chen
Remove useless keywords

2018-05-30 Nick Chen
Created the script