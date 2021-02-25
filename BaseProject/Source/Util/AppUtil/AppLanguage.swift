//
//  AppLanguage.swift
//  BaseProject
//
//  Created by 小唐 on 2020/12/14.
//  Copyright © 2020 ChainOne. All rights reserved.
//

import Foundation

enum AppLanguage: String {
    
    func localString() -> String {
        print(self)
        return NSLocalizedString(self.rawValue, comment: "")
    }
    
    // tab
    case tab_home = "tab_Home"
    case tab_fortune = "tab_Fortune"
    case tab_live = "tab_Live"
    case tab_chat = "tab_Chat"
    case tab_me = "tab_Me"
    case tab_wealth = "tab_wealth"
    case tab_merchant = "tab_merchant"
    case tab_cashier = "tab_cashier"
    
    // login
    
    
    
    // common
    case common_paymentMethod = "home_paymentMethod"
    case common_collect = "home_collect"
    case common_collectAmount = "home_collectAmount"
    case common_addingNotes = "home_addingNotes"
    case common_confirmToCollect = "home_confirmToCollect"
    case common_transactionHistory = "home_transactionHistory"
    case home_specifyAnAmount = "home_specifyAnAmount"
    case home_saveImage = "home_saveImage"
    case home_payToMerchant = "home_payToMerchant"
    case home_confirmToPay = "home_confirmToPay"
    case home_paymentDetails =  "home_paymentDetails"
    case home_payNow = "home_payNow"
    case home_enterPin = "home_enterPin"
    case home_enterYourPIN = "home_enterYourPIN"
    
    // home
    case home_scan = "home_scan"
    case home_pay = "home_pay"
    case home_pocket = "home_pocket"
    case home_transfer = "home_transfer"
    case home_education = "home_education"
    case home_paper_trading = "home_paper_trading"
    case home_contest = "home_contest"
    case home_wish_exchange = "home_wish_exchange"
    case home_sns = "home_sns"
    case home_community = "home_community"
    case home_message = "home_message"
    case home_loyalty_exchange = "home_loyalty_exchange"
    case home_payVendors = "home_payVendors"
    case home_CCWallet = "home_CCWallet"
    case home_paymentCode = "home_paymentCode"
    case home_scanPay = "home_scanPay"
    case home_paySuccessfully = "home_paySuccessfully"
    case home_Balance = "home_Balance"
    case home_rewardsPoints = "home_rewardsPoints"
    case home_refund = "home_refund"
    

    
    // fourtune
    case fourtune_balance_cad = "fourtune_balance_cad"
    case fourtune_rewards_pt = "fourtune_rewards_pt"
    case fourtune_knowledge = "fourtune_knowledge"
    case fourtune_demo_trading = "fourtune_demo_trading"
    case fourtune_contest = "fourtune_contest"
    case fourtune_more = "fourtune_more"
    case fourtune_category = "fourtune_category"
    case fourtune_myCourse = "fourtune_myCourse"
    case fourtune_fund = "fourtune_fund"
    case fourtune_foreignExchange = "fourtune_foreignExchange"
    case fourtune_option = "fourtune_option"
    case wealth_foreignExchange = "wealth_foreignExchange"
    
    // live
    case live_merchant = "live_merchant"
    
    // chat
    case chat_SNS = "chat_SNS"
    case chat_miniPrograms = "chat_miniPrograms"
    case chat_community = "chat_community"
    case chat_addFriends = "chat_addFriends"
    case chat_scanQRCode = "chat_scanQRCode"
    case chat_groupChat = "chat_groupChat"
    case chat_savePicture = "chat_savePicture"
    case chat_myUsername = "chat_myUsername"
    case chat_notExist = "chat_notExist"
    case chat_newFriends = "chat_newFriends"
    case chat_publicAccount = "chat_publicAccount"
    case chat_sendMessage = "chat_sendMessage"
    case chat_verifyFriend = "chat_verifyFriend"
    case chat_addToContact = "chat_addToContact"
    case chat_joinThisGroup = "chat_joinThisGroup"
    case chat_album = "chat_album"
    case chat_placeQRCode = "chat_placeQRCode"
    case chat_myQRCode = "chat_myQRCode"
    case chat_groupQRCode = "chat_groupQRCode"

    // me
    case me_manageAccount = "me_manageAccount"
    case me_transaction = "me_transaction"
    case me_deposit = "me_deposit"
    case me_withdraw = "me_withdraw"
    case me_helpCenter = "me_helpCenter"
    case me_signOut = "me_signOut"
    case me_about = "me_about"
    case me_general = "me_general"
    case me_security = "me_security"
    case me_privacyPolicy = "me_privacyPolicy"
    case me_termsOfUse = "me_termsOfUse"
    case me_serviceAgreement = "me_serviceAgreement"
    case me_rate = "me_rate"
    case me_addMerchantAccount = "me_addMerchantAccount"
    
    // public
    case public_success = "public_success"
    case public_loading = "public_loading"
    case public_ok = "public_ok"
    case public_done = "public_done"
    case public_cancel = "public_cancel"
    case public_retry = "public_retry"
    case public_dataParsingFailed = "public_dataParsingFailed"
    case public_networkError = "Network Error"
    case public_alert = "public_alert"
    case public_time = "public_time"
    case public_no = "public_no"
    case public_yes = "public_yes"
    
    // wealth
    case wealth = "wealth"
    case wealth_bitcoin = "wealth_bitcoin"
    
    // live
    case live_all = "live_all"
    case live_foodDrink = "live_food&drink"
    case live_enterainment = "live_enterainment"
    case live_shopping = "live_shopping"
    case live_others = "live_others"

    // merchant
    case merchant_info = "merchant_info"
    case merchant_time = "merchant_time"
    case merchant_description = "merchant_description"
    case merchant_Preference = "merchant_Preference"
    case merchant_set_name = "merchant_set_name"
    case merchant_set_address = "merchant_set_address"
    case merchant_set_phone_number = "merchant_set_phone_number"
    case merchant_set_hours = "merchant_set_hours"
    case merchant_set_desc = "merchant_set_desc"
    case merchant_promotion = "merchant_promotion"
    case merchant_gallery = "merchant_gallery"
    case merchant_uploadPhoto = "merchant_uploadPhoto"
    case merchant_monday = "merchant_monday"
    case merchant_tuesday = "merchant_tuesday"
    case merchant_wednesday = "merchant_wednesday"
    case merchant_thursday = "merchant_thursday"
    case merchant_friday = "merchant_friday"
    case merchant_saturday = "merchant_saturday"
    case merchant_sunday = "merchant_sunday"
    case merchant_setting = "merchant_setting"
    case merchant_statement = "merchant_statement"
    case merchant_withdraw = "merchant_withdraw"
    case merchant_deposit = "merchant_deposit"
    case merchant_setUp = "merchant_setUp"
    case merchant_editInfo = "merchant_editInfo"
    case merchant_businessProfile = "merchant_businessProfile"
    case public_notification = "public_notification"
    
    // notification
    case notificationType_transaction = "notificationType_transaction"
    case notificationType_redPacket = "notificationType_redPacket"
    case notificationType_transfer = "notificationType_transfer"
    case notificationType_payment = "notificationType_payment"
    case notificationType_sales = "notificationType_sales"

    // validate
    case validate_email_error = "validate_email_error"
    case validate_password_error = "validate_password_error"
    case validate_username_error = "validate_username_error"
    case validate_matchPasswrod_error = "validate_matchPasswrod_error"
    case validate_code_error = "validate_code_error"
    
    // other
    case addMerchant_certificate = "addMerchant_certificate"
    case cashier = "cashier"
    case signOut_alert = "signOut_alert"
    case sales_transactions = "sales_transactions"
    case sale = "sale"
    case cad = "cad"
    case cryptocurrency = "cryptocurrency"
    case merchant_info_update_title = "merchant_info_update_title"
    case updateAlreadyActive = "updateAlreadyActive"

}
