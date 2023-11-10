//
//  ExampleViewModel.swift
//  Presentation
//
//  Created by Lee Myeonghwan on 2023/06/20.
//  Copyright © 2023 Lito. All rights reserved.
//

import Foundation
import Combine
import Domain

final public class Tab1ViewModel {
    
    @Published private(set) var slip: SlipVO = SlipVO(id: 0, advice: "Empty")
    @Published private(set) var isLoading: Bool = false
    
    private let exampleUseCase: ExampleUseCase
    public weak var tab1Coordinator: Tab1Coordinator?
    
    public init(exampleUseCase: ExampleUseCase) {
        self.exampleUseCase = exampleUseCase
    }
    
    func onChangeQuoteButtonClicked() {
//        isLoading = true
//        exampleUseCase.load()
//            .receive(on: DispatchQueue.main)
//            .sinkToResultWithErrorHandler({ slipVO in
//                self.slip = slipVO
//                self.isLoading = false
//            }, errorHandler: errorHandler)
//            .store(in: cancelBag)
    }
}
