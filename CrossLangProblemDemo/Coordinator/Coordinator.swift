//
//  Coordinator.swift
//
//  Created by test on 2021/7/7.
//  Copyright © 2021 AlexHu. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}
