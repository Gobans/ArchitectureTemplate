//
//  PresentationAssembly.swift
//  App
//
//  Created by Lee Myeonghwan on 2023/06/20.
//  Copyright © 2023 Lito. All rights reserved.
//

import Swinject
import Domain
import Presentation

public struct PresentationAssembly: Assembly {
    
    let coordinator: Coordinator
    
    public func assemble(container: Container) {
        // ------------------------ Common ------------------------
        // Example
        container.register(ExampleViewModel.self) { resolver in
            let useCase = resolver.resolve(ExampleUseCase.self)!
            return ExampleViewModel(exampleUseCase: useCase, coordinator: coordinator)
        }
        container.register(ExampleView.self) { resolver in
            let viewModel = resolver.resolve(ExampleViewModel.self)!
            return ExampleView(viewModel: viewModel)
        }
        container.register(RootTabView.self) { resolver in
            let exampleView = resolver.resolve(ExampleView.self)!
            return RootTabView(tab1: exampleView)
        }
    }
    
}
