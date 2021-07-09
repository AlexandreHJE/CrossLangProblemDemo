//
//  Coordinator.swift
//  AllPay
//
//  Created by test on 2021/7/7.
//  Copyright © 2021 歐付寶 allPay. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}
