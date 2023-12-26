//
//  HomeRepository.swift
//  Domain
//
//  Created by Lee Myeonghwan on 2023/06/20.
//  Copyright © 2023 Lito. All rights reserved.
//

import RxSwift

public protocol ExampleRepository {
    func loadSlip() -> Single<SlipVO>
}
