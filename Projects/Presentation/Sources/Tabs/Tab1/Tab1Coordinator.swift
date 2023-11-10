//
//  Tab1Coordinator.swift
//  Presentation
//
//  Created by Lee Myeonghwan on 2023/11/10.
//  Copyright © 2023 gb. All rights reserved.
//

import UIKit

public protocol Tab1Coordinator: Coordinator {
    func showExample1TabFlow()
}

public class DefaultTab1Coordinator: Tab1Coordinator {
    public struct Dependency {
        let tab1ViewController: Tab1ViewController
        let navigationController: UINavigationController
        weak var finishDelegate: CoordinatorFinishDelegate?
        
        public init(tab1ViewController: Tab1ViewController, navigationController: UINavigationController, finishDelegate: CoordinatorFinishDelegate? = nil) {
            self.tab1ViewController = tab1ViewController
            self.navigationController = navigationController
            self.finishDelegate = finishDelegate
        }
    }
    
    let dependency: Dependency
    public var childCoordinators: [Coordinator] = []
    public var navigationController: UINavigationController
    public var type: CoordinatorType = .tab1
    public var finishDelegate: CoordinatorFinishDelegate?
    
    public init(dependency: Dependency) {
        self.dependency = dependency
        self.navigationController = dependency.navigationController
        self.finishDelegate = dependency.finishDelegate
        dependency.tab1ViewController.viewModel.tab1Coordinator = self
    }
    
    public func start() {
        setNavigationBar()
        showExample1TabFlow()
    }
    
    func setNavigationBar() {
        navigationController.setNavigationBarHidden(true, animated: false)
    }
    
    public func showExample1TabFlow() {
        navigationController.pushViewController(dependency.tab1ViewController, animated: true)
    }
}
