//
//  Tab2ViewReactor.swift
//  Presentation
//
//  Created by Lee Myeonghwan on 2023/12/23.
//  Copyright © 2023 gb. All rights reserved.
//

import ReactorKit
import Domain

final public class Tab2ViewReactor: Reactor {
    
    private let exampleUseCase: ExampleUseCase
    var disposeBag = DisposeBag()
    
    public enum Action {
        case loadQuote
    }
    
    public enum Mutation {
        case changeQuote(String)
        case setLoading(Bool)
    }
    
    public struct State {
        var quote: String
        var isLoading: Bool
    }
    
    public let initialState: State
    
    public init(exampleUseCase: ExampleUseCase) {
        self.exampleUseCase = exampleUseCase
        self.initialState = State(quote: "", isLoading: false)
    }
    
    public func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .loadQuote:
            return Observable.concat([Observable.just(Mutation.setLoading(true)),
                                      exampleUseCase.load().map { Mutation.changeQuote($0.advice) }.asObservable(),
                                      Observable.just(Mutation.setLoading(false))
                                     ])
        }
    }
    
    public func reduce(state: State, mutation: Mutation) -> State {
        var state = state
        switch mutation {
        case .changeQuote(let quote):
            state.quote = quote
        case .setLoading(let isLoading):
            state.isLoading = isLoading
        }
        return state
    }
    
}
