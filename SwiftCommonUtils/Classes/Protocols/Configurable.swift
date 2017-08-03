//
//  Configurable.swift
//  Pods
//
//  Created by Michael Henry Pantaleon on 2017/08/04.
//
//

import Foundation

public protocol Configurable {}

extension Configurable {
    public func configure( block: ((inout Self)) -> Void) -> Self {
        var m = self
        block(&m)
        return m
    }
}