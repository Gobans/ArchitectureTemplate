//
//  Dependency+SPM.swift
//  DependencyPlugin
//
//  Created by Lee Myeonghwan on 2023/06/19.
//

import ProjectDescription

public extension TargetDependency {
    enum SPM {}
}

public extension TargetDependency.SPM {
    static let Swinject = TargetDependency.external(name: "Swinject")
    static let Moya = TargetDependency.external(name: "Moya")
    static let RxMoya = TargetDependency.external(name: "RxMoya")
    static let RxSwift = TargetDependency.external(name: "RxSwift")
    static let RxCocoa = TargetDependency.external(name: "RxCocoa")
    static let ReactorKit = TargetDependency.external(name: "ReactorKit")
}
