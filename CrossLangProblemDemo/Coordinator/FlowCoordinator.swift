//
//  FlowCoordinator.swift
//  CrossLangProblemDemo
//
//  Created by AlexHu on 2021/7/9.
//

import UIKit

@objc class FlowCoordinator: NSObject, Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = CalledBySwiftViewController.instantiate(withName: "CalledBySwiftViewController", identifier: "CalledBySwiftViewController")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    @objc public func secondViewController() {
        let vc = SecondOfFlowViewController.instantiate(withName: "SecondOfFlowViewController")
        vc.flowCoordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
