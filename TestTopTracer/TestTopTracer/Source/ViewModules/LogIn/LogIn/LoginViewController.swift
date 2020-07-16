//
//  LoginViewController.swift
//  TestTopTracer
//
//  Created by Gines Sanchez Merono on 2020-07-16.
//  Copyright © 2020 Ginés Sanchez. All rights reserved.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!




    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
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
    }
}

extension LoginViewController {

    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        //TODO:
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        //TODO:
    }
}

extension LoginViewController: UITextFieldDelegate {

    //TODO:
}
