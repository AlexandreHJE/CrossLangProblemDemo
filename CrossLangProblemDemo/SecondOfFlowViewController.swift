//
//  SecondOfFlowViewController.swift
//  CrossLangProblemDemo
//
//  Created by pc1321 on 2021/7/9.
//

import UIKit

class SecondOfFlowViewController: UIViewController {
    @IBOutlet weak var dismissButton: UIButton!
    weak var flowCoordinator: FlowCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()

        dismissButton.addTarget(self, action: #selector(dismissButtonTapped(_:)), for: .touchUpInside)
        
    }

    @objc private func dismissButtonTapped(_ sender: UIButton) {
        dismissNav()
    }

    private func dismissNav() {
        navigationController?.dismiss(animated: true, completion: nil)
    }
}

extension SecondOfFlowViewController: Storyboarded {}
