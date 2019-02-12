*** Variables ***
# "Home > click My Hood
# -> My Hood (My Hood_Device is registered)"
${imgLogo_MyHood}	                        logo_header
${btnSetting_MyHood}                		img_setting
${btnUser_MyHood}	                    	img_user
${textHome_MyHood}		                	Home
${textMyHood_MyHood}		            	My Hood
${textSupport_MyHood}	            		Support
#${btnDevice_MyHood}		                    Device
${imgZephyr_MyHood}

# -> Unregistered (My Hood_Device is not registered)
${textHoodisnotregistered_Unregistered}	        Hood is not registered.
${text_Unregistered}			                Please register your hood in order to get more information.
${btnRegisterHood_Unregistered}		            btn_register_hood

#${pbGreaseFilter_MyHood}	            	pb_grease_filter
#${textviewGreaseFilter_MyHood}			    number
${textGreaseFilter_MyHood}		        	Grease Filter
${btnGreaseCart_MyHood}		                img_buy_grease_filter
# expired
${textGreaseFilterExpiration_MyHood}        Please clean your grease filter(s) and reset the reminder. If your grease filter(s) appear to be worn out or damaged, replacements can be purchased on our online store.
#模擬方式, 註冊時把購買日改到4個月前
${textGreaseFilterReset_MyHood}			    Reset
#${pbCharcoalFilter_MyHood}		            pb_charcoal_filter
#${textviewCharcoalFilter_MyHood}			number
${textCharcoalFilter_MyHood}		    	Charcoal Filter
${btnCharcoalCart_MyHood}
# expired
${textCharcoalFilterExpiration_MyHood}
# 模擬方式, 註冊時把購買日改到4個月前
${textCharcoalFilterReset_MyHood}
${textGeneralHoodCleaning_MyHood}			General Hood Cleaning
${btnHoodCleaning_MyHood}		            btn_hood_cleaning
${textGreaseFilterCleaning_MyHood}			Grease Filter Cleaning
${btnFilterCleaning_MyHood}		            btn_filter_cleaning
${textCharcoalFilterReplace_MyHood}			Charcoal Filter Replace
${btnFilterReplace_MyHood}		            btn_filter_replacement
${textModelNo_MyHood}			            Model No.
#${text1_MyHood}			                text
${textSerialNo_MyHood}		            	Serial No.
#${text2_MyHood}		                	text
${textRecirculatingHood_MyHood}	    		Recirculating Hood
${btnRecirculatingHoodInfo_MyHood}
# click the recirculating info
${textRecirculatingInfo_MyHood}
${YesNoOption_MyHood}			            Yes/No
${textPartsWarrantyExpiration_MyHood}		Parts Warranty Expiration
${textPartsDate_MyHood}		            	date
${textLaborWarrantyExpiration_MyHood}		Labor Warranty Expiration
${textLaborDate_MyHood}			            date

*** Keywords ***
Validate all elements of device on the my hood page
    [Tags]   @AUTHOR=Doris_Jhan
    Page Should Contain Text       ${textMyHood_MyHood}
    Page Should Contain Text       ${textGreaseFilter_MyHood}
    Page Should Contain Text       ${textCharcoalFilter_MyHood}
    Page Should Contain Element    ${btnHoodCleaning_MyHood}
    Page Should Contain Element    ${btnFilterCleaning_MyHood}
    Page Should Contain Element    ${btnFilterReplace_MyHood}
    Swipe Up	#common
    Page Should Contain Text       ${textModelNo_MyHood}
    Page Should Contain Text       ${textSerialNo_MyHood}
    Page Should Contain Text       ${textRecirculatingHood_MyHood}
    Page Should Contain Text       ${textPartsWarrantyExpiration_MyHood}
    Page Should Contain Text       ${textLaborWarrantyExpiration_MyHood}

Wait My Hood Page
    [Tags]   @AUTHOR=Doris_Jhan
    Wait Until Page Contains    ${textGreaseFilter_MyHood}     timeout=10

*** Comment ***
2018-06-05 Nick_Chen
Modify the scipt

2018-06-04 Doris_Jhan
Revise the 3 keywords

2018-05-31 Doris_Jhan
Create 3 keywords "Validate the registered device shown on the my hood page", "Validate all info of device on the my hood page", "Wait Home Page"

2018-05-21 Nick Chen
Created the resource
