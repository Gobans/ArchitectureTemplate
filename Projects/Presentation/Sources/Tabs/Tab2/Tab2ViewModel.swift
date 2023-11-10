//
//  ExampleTab2ViewModel.swift
//  Presentation
//
//  Created by Lee Myeonghwan on 2023/11/09.
//  Copyright © 2023 gb. All rights reserved.
//

import Foundation
import Combine
import Domain

final public class Tab2ViewModel {
    
    private let exampleUseCase: ExampleUseCase
    public weak var tab2Coordinator: Tab2Coordinator?
    
    public init(exampleUseCase: ExampleUseCase) {
        self.exampleUseCase = exampleUseCase
    }
    
    public func moveToExampleSubView() {
//        self.tab2Coordinator
    }
    
}
