*** Variables ***
# Home > click user btn -> User
${imgUserDummy_User}	                pict_user_dummy
${textHi_User}	        	            Hi
#${textNickname_User}	                Nickname
${btnX_User}	                        img_close
${textAccountInfo_User}		            Account Info
${textEmail_User}		                email
${btnChangepassword_User}               tv_change_password
${textYourHood_User}		            Your Hood
# while no add hood yet
# -> User No Device (User page_No device)
${btn＋_User}                            img_add
${text_UserNoDevice}
# No internet
# -> User Offline (User page_Device offline)"
${imgHoodOffline_UserOffline}
#${textSSIDHoodOffline_UserOffline}		SSID
${btnInfoHoodOffline_UserOffline}	    img_info
${imgWi-FiOffline_UserOffline}	        pict_wifi_offline
${textYourHoodIsOffline_UserOffline}    Your Hood is Offline
#${text_UserOffline}		                Please connect your phone to ${SSID} or check check your internect connection of your router at home. And make sure your hood is not unplugged.
${btnConnectNoInternet_UserOffline}     btn_left
${btnReconnectNoInternet_UserOffline}   btn_right
# Cloud offline
# -> User Cloud (User page_Device unable to connect to cloud)"	img Cloud Offline	imageView3
#${textSSID_UserCloud}		            SSID
${btnInfo_UserCloud}
${text_UserCloud}
${btnConnect_UserCloud}
${btnReconnect_UserCloud}
# Connect normally
${img Wi-Fi Connected_User}	            imageView3
#${textSSID_User}	                    textView32	Zephyr-MIS
${btnUpdate_User}	                    textView33
${btnDelete_User}	                    img_delete
#"Click update
#-> FW Update"
${SmokeVariable_FWUpdate}
${btnConnectWithAmazonAlexa_User}	    tv_alexa
${btnLogout_User}	                    btn_close
# click Logout btn
# -> Logout
${textLogoutOfZephyr_Logout}    		Log out of Zephyr?
${btnCancel_Logout}	                    button2
${btnLogout_Logout}	                    button1

# User > click Change password btn
# -> Change Password"
${textChangepassword_ChangePassword}	        Change Password
${btnBack_ChangePassword}           	        tv_back
${btnSave_ChangePassword}           	        btnDone
${textCurrentPassword_ChangePassword}		    Current Password
${textfieldCurrentPassword_ChangePassword}      et_current_password
${textNewPassword_ChangePassword}		        New Password
${textfieldNewPassword_ChangePassword}	        et_new_password
${textConfirmPassword_ChangePassword}		    Confirm Password
${textfieldConfirmPassword_ChangePassword}	    et_confirm_password
${btnForgetPassword_ChangePassword} 	        tv_forgot_password

# User > click delete
# -> Remove (Remove device dialog)"
${textRemoveHoods_Remove}   Remove Hood?
${Checkbox_Remove}
${text_Remove}              I know the hood will reset to default when I remove it.
${btnCancel_Remove}     	btn_left
${btnRemove_Remove}	        ben_right

# Register Success > click OK
# -> Alexa (Alexa service info Page)"
${imgAlexa_Alexa}	            pict_alexa_open
${text_Alexa}		            Your Zephyr hood is compatible with Amazon Alexa. Please open your Alexa App to discover how to control your hood using your voice.
${btnLearnMore_Alexa}	        tv_learn_more
${btnOpenALEXAAPP_Alexa}	    btn_open_alexa
${btnNotNowMaybeLater_Alexa}	tv_later
# User > click Alexa -> click Learn more about Zephyr and Alexa
# -> Alexa1, 2, 3, 4, 5, 6 (Alexa user guide 1, 2, 3, 4, 5, 6)"
${btnClose_Alexa}           	tv_close
${imgUserGuide1_Alexa}      	imageView13	Find Skills in the menu of Alexa app.
${imgUserGuide2_Alexa}	        imageView13	Find ?Zephyr? in search bar.
${imgUserGuide3_Alexa}	        imageView13	Click ?ENABLE?.
${imgUserGuide4_Alexa}	        imageView13	Login with Zephyr App account.
${imgUserGuide5_Alexa}	        imageView13	Click ?YES? to continue.
${imgUserGuide6_Alexa}      	imageView13	Now you can control Zephyr with Alexa!
${btn2OpenAlexaApp_Alexa}	    btn_open_alexa
${btnNotNow_Alexa}	            tv_later

# Login Page > click sign in
# -> Home
${textZephyr_Home}	                        logo_header
${btnSetting_Home}	                        img_setting
${btnUser_Home}	                            img_user
${textHome_Home}                    		Home
${textMyHood_Home}	                    	My Hood
${textSupport_Home}	                    	Support
${imgPower_Home}	                        ico_power
${textPower_Home}	                    	Power
${btnPower_Home}	                        btn_power
${PowerOn_Home}                             btn power on(label)
${PowerOff_Home}                            btn power off(label)
${imgFan_Home}	                            ico_fan
${textFanSpeed_Home}		                Fan Speed
${SliderOfFanSpeed_Home}	                sld_fan_speed
${imgLight_Home}	                        ico_light
${textLightingLevel_Home}		            Lighting Level
${SliderOfLightingLevel_Home}	            sld_light_level
${imgTimer_Home}	                        ico_timer
${textDelay-offTimer_Home}		            Delay-Off Timer
${SliderOfDelayOff_Home}                	sld_delay_off_timer
# Mobile no internet
${btnNoInternet_Home}                       btn_no_internet_connection
# click toast ""No Internet Connection""
# -> Home Airplane (Home_No internet connection on phone)"
${imgMobileNoInternet_HomeAirplan}          pict_internet_offline
${textMobileNoInternetTitle_HomeAirplan}    No Internet Connection
${textMobileNoInternetContent_HomeAirplan}  Please connect your phone to the internet in order to control your hood.
${btnOpenWi-Fi_HomeAirplan}                 btn_left
# Hood_Wi-Fi Off
# (模擬方式, 去change wifi選擇一個加密的wifi不輸入密碼按下OK)"
${btnYourHoodIsOffline_HomeAirplan}	        btn_no_internet_connection
# "Click toast ""Your hood is offline""(wifi off)
# -> Home offline (Home_Device offline)"
${imgWi-FiOffine_HomeOffline}	            pict_cloud_offline
${textYourHoodIsOffline_HomeOffline}		Your Hood is Offline
#${text_HomeOffline}		                    Please connect your mobile device to your {SSID} network and verify your router is connected to the internet. Also check to make sure your hood powers on and works.
${btnConnecttoSSID_HomeOffline}             btn_left
${btnReconnectHoodstoWi-Fi_HomeOffline}     btn_right
# Hood_Cloud off	btn Your Hood is Offline (Cloud)
# "Click toast ""Your hood is offline""(cloud off)
# -> Home Cloud (Home_Device unable to connect to cloud)"
${imgCloudOffline_HomeCloud}
${textYourHoodisOffline_HomeCloud}
${text_HomeCloud}
${btnReconnectHoodToWi-Fi_HomeCloud}

*** Keywords ***
Sign Out
    [Tags]   @AUTHOR=Nick_Chen
    Click Element  ${btnUser_Unbound}
    Wait Until Page Contains    ${imgUserDummy_User}
    Click Element   ${btnLogout_User}
#    Wait Until Page Contains    ${textLogoutOfZephyr_Logout}
#    Click Element   ${btnLogout_Logout}


*** Comment ***
2018-05-18 Nick Chen
Created the resource