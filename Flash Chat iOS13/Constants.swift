//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by Tan Vinh Phan on 11/7/19.
//  Copyright © 2019 Edward Phan. All rights reserved.
//

import Foundation

struct K {
    
    //static property == type property
    static let appName = "⚡️Flash Chat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}


