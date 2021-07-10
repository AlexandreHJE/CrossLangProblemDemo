//
//  Storyboarded.swift
//
//  Created by test on 2021/7/7.
//  Copyright © 2021 AlexHu All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate(withName sbName: String) -> Self
    static func instantiate(withName sbName: String, identifier: String) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(withName sbName: String) -> Self {
        // this pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)
        
        // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]
        
        // load our storyboard
        let storyboard = UIStoryboard(name: sbName, bundle: nil)
        
        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
    
    static func instantiate(withName sbName: String, identifier: String) -> Self {
        let storyboard = UIStoryboard(name: sbName, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! Self
    }
}

@objc extension CalledBySwiftViewController: Storyboarded {
    @objc static func objc_instantiate(withName sbName: String) -> Self {
        instantiate(withName: sbName)
    }

    @objc private static func objc_instantiate(withName sbName: String, identifier: String) -> Self {
        instantiate(withName: sbName, identifier: identifier)
    }
}
