//
//  String+CommonUtils.swift
//  Pods
//
//  Created by Michael Henry Pantaleon on 2017/08/04.
//
//

import Foundation

public extension String {
    
    public var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    public var localized:String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
    
    public func left(_ amount: Int) -> String {
        let limitCount = min(characters.count, amount)
        let limitIndex = index(startIndex, offsetBy: limitCount)
        return substring(to: limitIndex)
    }

    public func right(_ amount: Int) -> String {
        let limitCount = min(characters.count, amount)
        let limitIndex = index(endIndex, offsetBy: -limitCount)
        return substring(from: limitIndex)
    }
}

