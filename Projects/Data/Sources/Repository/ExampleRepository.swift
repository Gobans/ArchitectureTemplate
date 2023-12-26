//
//  ExampleRepository.swift
//  Data
//
//  Created by Lee Myeonghwan on 2023/06/20.
//  Copyright © 2023 Lito. All rights reserved.
//

import Domain
import RxSwift

final public class DefaultExampleRepository: ExampleRepository {
    private let dataSource: ExampleDataSource
    
    public init(dataSource: ExampleDataSource) {
        self.dataSource = dataSource
    }
    
    public func loadSlip() -> Single<SlipVO> {
        dataSource.loadMaxim()
            .map { $0.toVO() }
    }
}
