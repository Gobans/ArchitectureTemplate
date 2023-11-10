//
//  ExampleTab2ViewController.swift
//  Presentation
//
//  Created by Lee Myeonghwan on 2023/11/10.
//  Copyright © 2023 gb. All rights reserved.
//

import UIKit

public class Tab2ViewController: UIViewController {
    let viewModel: Tab2ViewModel
    
    public init(viewModel: Tab2ViewModel) {
        self.viewModel = viewModel
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
