//
//  ViewModuleFactory.swift
//  TestTopTracer
//
//  Created by Gines Sanchez Merono on 2020-07-16.
//  Copyright © 2020 Ginés Sanchez. All rights reserved.
//

import UIKit

protocol ViewModuleFactoryType {
    func createLoginViewModule() -> LoginViewController
}

final class ViewModuleFactory: ViewModuleFactoryType {

    func createLoginViewModule() -> LoginViewController {
        let viewController = LoginViewController.init(nibName: "LoginViewController", bundle: nil)
        return viewController
    }
}
