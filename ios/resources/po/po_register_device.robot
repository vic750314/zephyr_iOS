*** Variables ***
# "Binding Success > click register hood btn
# -> Register Device (Device registration page)"
${textRegisterHood_RegisterDevice}		        Register Hood
${btnCancel_RegisterDevice}	                	tv_back
${btnDone_RegisterDevice}		                tv_done
${textDateOfPurchaseInstall_RegisterDevice}	    Date of purchase/install
${textiewDatePicker_RegisterDevice}		        edit_date
# click Date
${btnOKDatePicker_RegisterDevice}       		OK
#${btnDate_RegisterDevice} iOS
${textModelAndSerial Number_RegisterDevice}		Model and Serial Number
${text_RegisterDevice}			                To get info of your product, please scan QR code on your product.
${btnScanQRCode_RegisterDevice}		            btn_qrcode
# "click Scan QR Code
#-> Scan QR (Model and serial number by scanning QR code)"
#{btnCancel2_RegisterDevice}	 (iOS)
${btnEnterManually_RegisterDevice}		        tv_manually

# "Register Device > click Enter Manually
# -> Register Manual (Model and serial number by manually entering)"
${textRegisterHood_RegisterManual}		        Register Hood
${btnCancel_RegisterManual}		                tv_back
${btnDone_RegisterManual}	                	tv_done
${textDateOfPurchaseInstall_RegisterManual}	    Date of purchase/install
${textviewDatePicker_RegisterManual}		    et_date
# "click Date
# -> Register Date (Calendar on registration page)"
${btnOKDatePicker_RegisterDate}     OK
${btnDate_ResgisterDate}            btn_date_n
${textModelAndSerialNumber_RegisterManual}		Model and Serial Number
${btn Rescan_RegisterManual}	            	img_rescan
# click rescan
${btnCancelOfRescan_RegisterManual}	            tv_back
${textModelNo_RegisterManual}	            	textView23	Model No.
${btnModelInfo_RegisterManual}		            img_model_info
# click Info
${textOfModelInfo_RegisterManual}               The serial number is a 10-digit alpha-numeric code printed on a label located indide the hood, it contains 7 numbers and 3 letters
${textViewModelNo_RegisterManual}	        	et_model_no	Your hood's model number
# type
${ValueofModel_RegisterManual}
${textSerialNo_RegisterManual}		            textView24	Serial No.
${textViewSerialNo_RegisterManual}		        et_serial_no	10-digit serial number
# type
${ValueofSerial_RegisterManual}
${textIsYourHoodRecirculating_RegisterManual}	textView25	Is Your Hood Recirculating?
${btnRecirculatingInfo_RegisterManual}		    img_rec_info
# click Recirculating
${textOfRecirculating_RegisterManual}           If your hood is not ducted to the outside, it is Recirculating and requires charcoal filters to help purify the air.
${textViewRecirculating_RegisterManual}			et_recirculating
# click recirculating blank
${Yes_RegisterManual}			                Yes
${No_RegisterManual}			                No

# "Register Device > click Done
# -> Register Success (Device registration successful)"
${imgSuccess_RegisterSuccess}       pict_success
${textSuccess_RegisterSuccess}		Success
${text_RegisterSuccess}			    You’ve successfully registered a hood.
${btnOK_RegisterSuccess}		    btn_left

*** Keywords ***
First keyword
    Do something

Second keyword
    Do more

*** Comment ***
2018-05-21 Nick Chen
Created the resource
