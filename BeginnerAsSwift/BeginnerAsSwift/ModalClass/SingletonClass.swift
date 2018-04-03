//
//  SingletonClass.swift
//  ClaritusCoreSwift
//
//  Created by ionic on 13/03/18.
//  Copyright © 2018 Claritus Consulting. All rights reserved.
//

import Foundation

class Singleton {
    static let sharedInstance = Singleton()
    private init() { }
}
