//
//  GiftCardSelector.swift
//  VGift
//
//  Created by Sathya Hirudayaswamy on 7/10/18.
//  Copyright © 2018 Aruna Srinivasalu. All rights reserved.
//

import Foundation

class GiftCardSelector {
    static let occasions = [ GiftCardType(occasion: Occasion.birthday, message: OccasionMessage.birthdayMessage.rawValue, cardImageName: ["Birthday","Birthday2"]),
                      GiftCardType(occasion: Occasion.wedding, message: OccasionMessage.weddingMessage.rawValue, cardImageName: ["Wedding"]),
                      GiftCardType(occasion: Occasion.anniversary, message: OccasionMessage.anniversaryMessage.rawValue, cardImageName: ["Anniversary"]),
                      GiftCardType(occasion: Occasion.graduation, message: OccasionMessage.graduationMessage.rawValue, cardImageName: ["Graduation"]),
                      
                      ]
}
