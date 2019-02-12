*** Settings ***
Documentation  Collected all elements from Device_Setting of Zephyr application.

*** Variables ***
# Home > click Setting-> Setting (Device setting)
${btnClose_Setting}		                Close
${imgLogo_Setting}		                logo_header
${textRecirculating_Setting}            Recirculating
${SwitchRecirculating_Setting}          switch
#(Label: Recirculating)
${SwitchOnRecir_Setting}                1
${SwitchOffRecir_Setting}               0
${text1_Setting}                        Select Recirculating if your hood is not ducted to the outside. A range hood in recirculating mode requires disposable charcoal filter(s) to be installed behind the grease filter(s) that purify the air before reintroducing it into the kitchen.
${textCleanAirFunction_Setting}         Clean Air Function
${SwitchCleanAirFunction_Setting}       switch
#(Label: Clean Air Function)
${SwitchOnClean_Setting}                1
${SwitchOffClean_Setting}               0
${text2_Setting}		                Turns the hood on Speed 1 every 4 hours for 10 minutes to clean the air.
${textNotification_Setting}             Notification
${SwitchNotification_Setting}           switch
#(Label Notification)
${SwitchOnNotify_Setting}               1
${SwitchOffNotify_Setting}              0
${textWiFiNetwork_Setting}              Wi-Fi Network
${btnVersion_Setting}                   Version 1.0.0 (23)

#Setting > click Wi-Fi Network btn-> Setting WiFi (Currently device's Wi-Fi network page)
${textWiFiNetwork_SettingWiFi}
${btnBack_SettingWiFi}
${textCurrentWiFi_SettingWiFi}
#${textviewSSID_SettingWiFi}
${imgSSID_SettingWiFi}
${textChangeWiFi_SettingWiFi}
${text_SettingWiFi}

#click Change Wi-Fi-> Change WiFi
${text_ChangWiFi}                       Change Wi-Fi
${btnBack_ChangeWiFi}                   Back
${textCurrentWi-Fi_ChangeWiFi}          Current Wi-Fi
${textChooseANetwork}                   Choose a network...

#click kitchen(SSID)-> New WiFi Setup (New Wi-Fi setup dialog)
#${textConnectTo_NewWiFiSetup}          SSID
${textPssword_NewWiFiSetup}
${btnPasswordVisible_NewWiFiSetup}
${btnConnect_NewWiFiSetup}              OK
${btnCancel_NewWiFiSetup}               Cancel

#Setting > Connect different Wi-Fi -> Setting Diff WiFi (Change Wi-Fi_Different Wi-Fi connected dialog)
#Phone connect to other wi-fi and click wi-fi network in setting screen
#${text1_SettingDiffWiFi}                Please connect your phone to SSID
${text2_SettingDiffWiFi}                 To change your hood’s Wi-Fi, you need to connect your phone to same Wi-Fi with your hood.
${btnConnectToSSID_SettingDiffWiFi}      btn_left
${btnCancel_SettingDiffWiFi}             btn_right


*** Comment ***
2018-05-21 Doris_Jhan
Created the resource
