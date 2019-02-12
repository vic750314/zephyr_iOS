*** Variables ***
# Valid Login with unbound account
# -> Unbound (Unbound page)"
${imgLogo_Unbound}	                    imageView
${btnSetting_Unbound}	                img_setting
${btnUser_Unbound}	                    img_user
${imgLogo_Unbound}	                    logo
${textYouHaventAddedAnyHoods_Unbound}   You haven’t added any hoods.
${btnAddHood_Unbound}	                btn_add_hood
${text_Unbound}		                    Please make sure your mobile device is connected to your local Wi-Fi network prior to adding a Zephyr Hood.

# Valid Login with unboud account (phone connect to 4G)
# -> Unbound 4G (Phone is not connected to the Wi-Fi dialog)
${text_Unbound_4G}                 Please connect your phone to Wi-Fi in order to connect your hood
${btnWi-FiSettings_Unbound_4G}	   btn_left
${btnCancel_Unbound_4G}	           btn_right

# Unbound page > click ADD HOOD
# -> Add Step1 (Step 1_Wi-Fi connection)"
${textConnectHood_AddStep1}		    Connect Hood
${btnBack_AddStep1}	                tv_back
${btnNext_AddStep1}	                tv_next
${btn1_AddStep1}                	1
${btn2_AddStep1}                    2
${btn3_AddStep1}                    3
${btn4_AddStep1}                    4
${imgIndicator_AddStep1}	        pict_connect_wifi
${text1_AddStep1}           		Connect Zephyr Hood to Wi-Fi.
${text2_AddStep1}		            Open Wi-Fi Settings and select the network with the format Zephyr_xxx.
${text3_AddStep1}	            	It may take a minute for the network to appear.
${btnOpenWi-FiSetting_AddStep1}     btn_wifi_setting

# Add Step1 > click next
# -> Add Step2 (Step 2_Connect device)"
${textConnectHood_AddStep2}		Connect Hood
${btnBack_AddStep2}	            tv_back
${btnNext_AddStep2}	            tv_next
${btn1_AddStep2}            	1
${btn2_AddStep2}                2
${btn3_AddStep2}                3
${btn4_AddStep2}                4
${imgWi-Fi_AddStep2}	        pict_wifi
${textConnectedTo_AddStep2}	    Connected to

# Step2 > click next
# -> Add Step3 (Step 3_Wi-Fi list)"
${textConnectHood_AddStep3}	                	Connect Hood
${btnBack_AddStep3}	                            tv_back
${btn1_AddStep3}	                            1
${btn2_AddStep3}                                2
${btn3_AddStep3}                                3
${btn4_AddStep3}                                4
${textChooseYourWi-FiNetwork_AddStep3}     		Choose Your Wi-Fi Network
${text1_AddStep3}	                        	Please choose the same Wi-Fi network that your mobile device is connected to.
#${textSSID_AddStep3}                        	SSID
${imgWi-Fi_AddStep3}	                        WiFiSSID
${imgWi-FiLock_AddStep3}
# "Select an encryption wifi in wifi list
# -> Add Step3 Lock"	btn Back
${text1_AddStep3Lock}
${text2_AddStep3Lock}
${textEncryptionSSID_AddStep3Lock}
${imgWi-FiLock_AddStep3Lock}
${textfieldPassword_AddStep3Lock}
${btnPasswordVisible_AddStep3Lock}
${btnNext_AddStep3Lock}
${btnOK_AddStep3Lock}	                        OK
${btnCancel_AddStep3Lock}	                    Cancel
${btnRescan_AddStep3Lock}	                    btn_rescan
# At the bottom of Wi-Fi list	text Add Wi-Fi To Network		Add Wi-Fi to Network
# "click Add Wi-Fi to Network
# -> Add Step3 Manual"	text Add Wi-Fi To Network	alertTitle	Add WIFI
${btnBack_AddStep3Manual}                       tv_back
${textfieldNetworkName_AddStep3Manual}
# Manually Add Network_if wifi is encryption
${textfieldPassword_AddStep3Manual}
${btnPasswordVisible_AddStep3Manual}        	btn_password
${textSSID_AddStep3Manual}
${textPassword_AddStep3Manual}
${btnOK_AddStep3Manual}
${btnCancel_AddStep3Manual}
${textSecurity_AddStep3Manual}          		Security
${btnSecurity_AddStep3Manual}	            	btn_security
# Click NONE
${textNONE_AddStep3Manual}	                	NONE
${textWPA_AddStep3Manual}	                	WPA
${textWEP_AddStep3Manual}	                	WEP
${textWPA2_AddStep3Manual}	                	WPA2
${textWPAPSK/AES_AddStep3Manual}
${textWPAPSK/TKIP_AddStep3Manual}
${textWPAPSK/TKIPAES_AddStep3Manual}
${textWPA2PSK/AES_AddStep3Manual}
${textWPA2PSK/TKIP_AddStep3Manual}
${textWPA2PSK/TKIPAES_AddStep3Manual}
${textWPAPSKWPA2PSK/AES_AddStep3Manual}
${textWPAPSKWPA2PSK/TKIP_AddStep3Manual}
${textWPAPSKWPA2PSK/TKIPAES_AddStep3Manual}
${btnNext_AddStep3Manual}                    	btn_next

# "Step3 > Connect successfully
# -> Add Step4 (Step 4_Connecting home router)"
${textConnectHood_AddStep4}		                Connect Hood
${btn1_AddStep4}                            	1
${btn2_AddStep4}                                2
${btn3_AddStep4}                                3
${btn4_AddStep4}                                4
${imgWi-Fi_AddStep4}	                        pict_wifi
${textConnectTo_AddStep4}		                Connect to
${textWaitForHoodToConnectToWiFi_AddStep4}		Waiting for Hood to connect to wifi

# "Add Step3 > Connect different SSID
# ->Add Diff WiFi (Step4_Different Wi-Fi connected page)"
${textWi-FiSettings_AddDiffWiFi}    Wi-Fi Settings
${text_AddDiffWiFi}		            Please connect your phone to
#${textSSID_AddDiffWiFi}		        SSID
${btnWi-FiSettings_AddDiffWiFi}	    btn_left
${btnSkip_AddDiffWiFi}	            btn_right

# "Add Step4 -> input wrong password of Wi-Fi
# -> Binding Fail"
${imgLogo_BindingFail}              logo
${imgWi-FiUnable_BindingFail}       pict_wifi_unable
${textUnableToConnect_BindingFail}  Unable to Connect
#${textSSID_BindingFail}             SSID
${btnTryAgain_BindingFail}          btn_retry

# Add Step4 -> Binding Success
${imgSuccess_AddStep4}	        pict_success
${textSuccess_AddStep4}		    Success
${text_AddStep4}		        You’ve successfully connected a hood.
${btnRegisterHood_AddStep4}	    btn_register_hood
${btnRegisterLater_AddStep4}	btn_register_later

*** Keywords ***
Wait unbound page
    [Tags]   @AUTHOR=Nick_Chen
    Wait Until Page Contains    ${textYouHaventAddedAnyHoods_Unbound}    timeout=10

Validate unbound page
    [Tags]   @AUTHOR=Nick_Chen
    Page Should Contain text   ${textYouHaventAddedAnyHoods_Unbound}

Click the add hood button
    [Tags]   @AUTHOR=Doris_Jhan
    Click Element   ${btnAddHood_Unbound}

Validate Step 1 page of add device
    [Tags]   @AUTHOR=Doris_Jhan
    Page Should Contain text    ${text3_AddStep1}

Wait Step 1 page of add device
    [Tags]   @AUTHOR=Doris_Jhan
    Wait Until Page Contains Element    ${btnOpenWi-FiSetting_AddStep1}    timeout=10

Validate unbound 4G
    [Tags]   @AUTHOR=Doris_Jhan
    Page Should Contain text    ${text_Unbound_4G}

Wait unbound 4G
    [Tags]   @AUTHOR=Doris_Jhan
    Wait Until Page Contains    ${text_Unbound_4G}    timeout=10

*** Comment ***
2018-06-05 Nick_Chen
Move keywords of 076 to common.robot, and revise ${text_Unbound_4G}


2018-05-21 Nick Chen
Redefine keywords "Wait ..." and "Validate ..."

2018-05-18 Nick Chen
Created the resource
