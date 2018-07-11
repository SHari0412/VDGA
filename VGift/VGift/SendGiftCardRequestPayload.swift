//
//  SendGiftCardRequestPayload.swift
//  VGift
//
//  Created by Sathya Hirudayaswamy on 7/10/18.
//  Copyright © 2018 Aruna Srinivasalu. All rights reserved.
//

import Foundation

class SendGiftCardRequestPayload {
    var senderName: String!
    var senderPhone: String!
    var senderEmail: String!
    var receiverName: String!
    var receiverPhone: String!
    var receiverEmail: String!
    var giftAmount: Double!
    var giftMessage: String!
    var giftCardImage: String!
    var deliveryDate: NSDate!
    
}
