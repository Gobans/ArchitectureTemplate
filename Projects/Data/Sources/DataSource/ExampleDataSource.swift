//
//  ExampleDataSource.swift
//  Data
//
//  Created by Lee Myeonghwan on 2023/06/20.
//  Copyright © 2023 Lito. All rights reserved.
//

import Combine
import Moya
import RxSwift
import RxMoya

public protocol ExampleDataSource {
    func loadMaxim() -> Single<SlipDTO>
}

final public class DefaultExampleDataSource: ExampleDataSource {
    
    public init() {}
    
    private let moyaProvider = MoyaProvider<ExampleAPI>()
    
    public func loadMaxim() -> Single<SlipDTO> {
        moyaProvider.rx.request(.oneSlip)
            .map(SlipDTO.self)
    }
    
}
