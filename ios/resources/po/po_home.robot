*** Settings ***
Documentation  Collected all elements from Home of Zephyr application.

*** Variables ***
#Login Page > click sign in -> Home
${textZephyr_Home}	                                logo_header
${btnSetting_Home}	                                img_setting
${btnUser_Home}	                                    img_user
${textHome_Home}		                            Home
${textMyHood_Home}		                            My Hood
${textSupport_Home}		                            Support
${imgPower_Home}	                                ico_power
${textPower_Home}		                            Power
${btnPower_Home}    	                            btn_power
${PowerOn_Home}                                     btn power on   #label
${PowerOff_Home}                                    btn power off  #label
${imgFan_Home}	                                    ico_fan
${textFanSpeed_Home}		                        Fan Speed
${SliderFan_Home}	                                sld_fan_speed
${imgLight_Home}            	                    ico_light
${textLightingLevel_Home}		                    Lighting Level
${SliderLight_Home}	                                sld_light_level
${imgTimer_Home}            	                    ico_timer
${textDelayoffTimer_Home}		                    Delay-Off Timer
${SliderDelay_Home}	                                sld_delay_off_timer

#Mobile no internet
${btnMobileNoInternet_HomeAirplane}                 btn_no_internet_connection

#Click toast "No Internet Connection"-> Home Airplane (Home_No internet connection on phone)
${imgMobileNoInternet_HomeAirplane}                 pict_internet_offline
${text1MobileNoInternet_HomeAirplane}               No Internet Connection
${text2MobileNoInternet_HomeAirplane}               Please connect your phone to the internet in order to control your hood.
${btnOpenWiFi_HomeAirplane}                         btn_left

# Hood Wi-Fi OFF
${btnYourHoodIsOffline_HomeOffline}                 btn_no_internet_connection

#Click toast "Your hood is offline"(wifi off)-> Home offline (Home_Device offline)
${imgHoodIsOffline_HomeOffline}	                     pict_cloud_offline
${textYourHoodIsOffline_HomeOffline}		         Your Hood is Offline
#${text_HomeOffline}                                 Please connect your mobile device to your SSID network and verify your router is connected to the internet. Also check to make sure your hood powers on and works.
${btnConnecttoSSID_HomeOffline}                      btn_left
${btnReconnectHoodToWiFi_HomeOffline}                btn_right

# Hood Cloud OFF
${btnYourHoodIsOffline_HomeCloud}

#Click toast "Your hood is offline"(cloud off)-> Home Cloud (Home_Device unable to connect to cloud)
${imgCloudOffline_HomeCloud}
${textYourHoodIsOffline_HomeCloud}
${text_HomeCloud}
${btnReconnectHoodToWi-Fi_HomeCloud}

*** Keywords ***
Wait Bound Page
    [Tags]   @AUTHOR=Nick_Chen
    Wait Until Page Contains    ${textFanSpeed_Home}    timeout=10

Validate Bound Page
    [Tags]   @AUTHOR=Nick_Chen
    Page Should Contain Text    ${textFanSpeed_Home}

Wait Home Page
    [Tags]   @AUTHOR=Doris_Jhan
    Wait Until Page Contains Element    ${btnPower_Home}     timeout=10

Validate Home Page
    [Tags]   @AUTHOR=Nick_Chen
    Page Should Contain Element     ${btnPower_Home}

*** Comment ***
2018-06-04 Doris_Jhan
Add a keyword "Wait Home Page"

2018-05-31 Doris_Jhan
Add a keyword "Wait Home Page"

2018-05-29 Nick_Chen
Add keywords "Wait Bound Page" and "Validate Bound Page"

2018-05-21 Nick_Chen
Add keywords "Wait Bound Page" and "Validate Bound Page"

2018-05-21 Doris_Jhan
Created the resource
