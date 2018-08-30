//
//  DateHelper.swift
//  Task
//
//  Created by Kamil Wrobel on 8/30/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import Foundation


extension Date {

func stringValue() -> String {
    let formater = DateFormatter()
    formater.dateStyle = .medium
    return formater.string(from: self)
}
    
}
