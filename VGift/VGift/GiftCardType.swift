//
//  GiftCardType.swift
//  VGift
//
//  Created by Aruna Srinivasalu on 7/10/18.
//  Copyright © 2018 Aruna Srinivasalu. All rights reserved.
//

import UIKit

enum Occasion : String {
    case birthday = "Birthday"
    case wedding = "Wedding"
    case anniversary = "Anniversary"
    case graduation = "Graduation"
}

enum OccasionMessage : String {
    case birthdayMessage = "Happy Birthday"
    case weddingMessage = "Wishing you a happy marriage"
    case anniversaryMessage = "My Best wishes on your Anniversary"
    case graduationMessage = "Congratulations on your graduation and best wishes for your future"
}

struct GiftCardType {
    var occasion: Occasion!
    var message: String!
    var cardImageName: [String]!
    
}
