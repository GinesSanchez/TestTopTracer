//
//  LoginViewModel.swift
//  TestTopTracer
//
//  Created by Gines Sanchez Merono on 2020-07-16.
//  Copyright © 2020 Ginés Sanchez. All rights reserved.
//

import UIKit

private let minNumberOfCharacters = 6

protocol LoginViewModelDelegate: class {
    func viewModel(_ viewModel: LoginViewModelType, showErrorAlertWithMessage: String)
}

protocol LoginViewModelType {
    var navigationController: UINavigationController { get }
    var delegate: LoginViewModelDelegate? { get }
    init(delegate: LoginViewModelDelegate, navigationController: UINavigationController)
}

final class LoginViewModel: LoginViewModelType {
    weak var delegate: LoginViewModelDelegate?
    let navigationController: UINavigationController

    init(delegate: LoginViewModelDelegate, navigationController: UINavigationController) {
        self.delegate = delegate
        self.navigationController = navigationController
    }
}

extension LoginViewModel: LoginViewControllerDelegate {

    func viewDidLoad() { }

    func didTapForgotPasswordButton() {
        //TODO:
    }

    func didTapLoginButtonWith(user: String?, password: String?) {

        guard let user = user else {
            delegate?.viewModel(self, showErrorAlertWithMessage: "No User Name. Please, add one")   //TODO: Localize
            return
        }

        guard user.count >= minNumberOfCharacters else {
            delegate?.viewModel(self, showErrorAlertWithMessage: "Invalid User Name. Please, try again")   //TODO: Localize
            return
        }

        guard let password = password else {
            delegate?.viewModel(self, showErrorAlertWithMessage: "No Password. Please, add one")   //TODO: Localize
            return
        }

        guard password.count >= minNumberOfCharacters else {
            delegate?.viewModel(self, showErrorAlertWithMessage: "Invalid Password. Please, try again")   //TODO: Localize
            return
        }

        guard password == "password" else {
            delegate?.viewModel(self, showErrorAlertWithMessage: "Invalid Password. Please, try again")   //TODO: Localize
            return
        }

        let viewModuleFactory = ViewModuleFactory()
        let landingViewController = viewModuleFactory.createLandingViewModule(navigationController: navigationController)
        navigationController.pushViewController(landingViewController, animated: true)
    }
}
