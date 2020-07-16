//
//  LoginViewController.swift
//  TestTopTracer
//
//  Created by Gines Sanchez Merono on 2020-07-16.
//  Copyright © 2020 Ginés Sanchez. All rights reserved.
//

import UIKit

protocol LoginViewControllerDelegate: class {
    func viewDidLoad()
    func didTapForgotPasswordButton()
    func didTapLoginButtonWith(user: String?, password: String?)
}

final class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!

    var viewModel: LoginViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        viewModel?.viewDidLoad()
    }
}

private extension LoginViewController {
    func setup() {
        navigationBarSetup()
        textFieldsSetUp()
    }

    func navigationBarSetup() {
        navigationController?.navigationBar.isHidden = true
    }

    func textFieldsSetUp() {
        usernameTextField.delegate = self
        passwordTextField.delegate = self

        passwordTextField.isSecureTextEntry = true
    }
}

extension LoginViewController {

    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        viewModel?.didTapForgotPasswordButton()
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        viewModel?.didTapLoginButtonWith(user: usernameTextField.text, password: passwordTextField.text)
    }
}

extension LoginViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case usernameTextField:
            usernameTextField.resignFirstResponder()
        case passwordTextField:
            passwordTextField.resignFirstResponder()
        default:
            break
        }
        return true
    }
}

extension LoginViewController: LoginViewModelDelegate {
    func viewModel(_ viewModel: LoginViewModelType, showErrorAlertWithMessage message: String) {
        showErrorAlert(message: message)
    }
}
