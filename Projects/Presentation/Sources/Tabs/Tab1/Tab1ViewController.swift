//
//  Tab1ViewController.swift
//  Presentation
//
//  Created by Lee Myeonghwan on 2023/11/10.
//  Copyright © 2023 gb. All rights reserved.
//

import UIKit

public class Tab1ViewController: UIViewController {
    let viewModel: Tab1ViewModel
    
    public init(viewModel: Tab1ViewModel) {
        self.viewModel = viewModel
        super.init()
    }
    
    public override func viewDidLoad() {
        view.backgroundColor = .white
        print("tab1 loaded")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
