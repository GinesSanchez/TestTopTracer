//
//  LandingViewController.swift
//  TestTopTracer
//
//  Created by Gines Sanchez Merono on 2020-07-16.
//  Copyright © 2020 Ginés Sanchez. All rights reserved.
//

import UIKit

protocol LandingViewControllerDelegate: class {
    func didTapBackButton()
}

final class LandingViewController: UIViewController {

    var viewModel: LandingViewControllerDelegate?

    @IBOutlet weak var backButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension LandingViewController {
    @IBAction func backButtonTapped(_ sender: Any) {
        viewModel?.didTapBackButton()
    }
}

extension LandingViewController: LandingViewModelDelegate {
    
}
