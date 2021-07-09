//
//  ViewController.swift
//  CrossLangProblemDemo
//
//  Created by pc1321 on 2021/7/9.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startDemoButton: UIButton!
    var flowCoordinator: FlowCoordinator?
    lazy var nav: UINavigationController = {
        let nav = UINavigationController()
        nav.modalPresentationStyle = .fullScreen
        return nav
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        startDemoButton.addTarget(self, action: #selector(startDemoButtonTapped(_:)), for: .touchUpInside)
        flowCoordinator = FlowCoordinator(navigationController: nav)
    }

    @objc private func startDemoButtonTapped(_ sender: UIButton) {
        flowCoordinator?.start()
        present(nav, animated: false, completion: nil)
    }

}

extension ViewController: Storyboarded {}

