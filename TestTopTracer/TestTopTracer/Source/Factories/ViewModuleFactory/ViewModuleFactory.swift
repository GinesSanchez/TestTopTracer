//
//  ViewModuleFactory.swift
//  TestTopTracer
//
//  Created by Gines Sanchez Merono on 2020-07-16.
//  Copyright © 2020 Ginés Sanchez. All rights reserved.
//

import UIKit

protocol ViewModuleFactoryType {
    func createLoginViewModule(navigationController: UINavigationController) -> LoginViewController
    func createLandingViewModule(navigationController: UINavigationController) -> LandingViewController
}

final class ViewModuleFactory: ViewModuleFactoryType {

    func createLoginViewModule(navigationController: UINavigationController) -> LoginViewController {
        let viewController = LoginViewController.init(nibName: "LoginViewController", bundle: nil)        
        viewController.viewModel = LoginViewModel(delegate: viewController, navigationController: navigationController)
        return viewController
    }

    func createLandingViewModule(navigationController: UINavigationController) -> LandingViewController {
        let viewController = LandingViewController.init(nibName: "LandingViewController", bundle: nil)
        viewController.viewModel = LandingViewModel(delegate: viewController, navigationController: navigationController)
        return viewController
    }
}
