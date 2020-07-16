//
//  LandingViewModel.swift
//  TestTopTracer
//
//  Created by Gines Sanchez Merono on 2020-07-16.
//  Copyright © 2020 Ginés Sanchez. All rights reserved.
//

import UIKit

protocol LandingViewModelDelegate: class {

}

protocol LandingViewModelType {
    var delegate: LandingViewModelDelegate? { get }
    var navigationController: UINavigationController { get }
    init(delegate: LandingViewModelDelegate, navigationController: UINavigationController)
}

final class LandingViewModel: LandingViewModelType {
    weak var delegate: LandingViewModelDelegate?
    var navigationController: UINavigationController

    init(delegate: LandingViewModelDelegate, navigationController: UINavigationController) {
        self.delegate = delegate
        self.navigationController = navigationController
    }
}

extension LandingViewModel: LandingViewControllerDelegate {
    func didTapBackButton() {
        navigationController.popViewController(animated: true)
    }
}
