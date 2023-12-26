//
//  BaseViewController.swift
//  Presentation
//
//  Created by Lee Myeonghwan on 2023/11/11.
//  Copyright © 2023 gb. All rights reserved.
//

import UIKit
import Combine
import ReactorKit

public protocol BaseViewItemProtocol: AnyObject {
    /// view property 설정 - ex ) view.backgroundColor = .white
    func setupViewProperty()
    
    /// 뷰 계층 구조 설정 - ex ) view.addSubview()
    func setupHierarchy()
    
    /// layout 설정 - ex ) snapkit
    func setupLayout()
}

public protocol BaseViewControllerProtocol: AnyObject, BaseViewItemProtocol {
    /// delegate 설정
    func setupDelegate()
    
    /// view binding 설정
    func setupBind()
}

open class BaseViewController: UIViewController, BaseViewControllerProtocol {
    
    public var disposeBag = DisposeBag()
    
    public var cancelBag = Set<AnyCancellable>()
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable, message: "remove required init")
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .BG_Default
        
        setupViewProperty()
        setupDelegate()
        setupHierarchy()
        setupLayout()
        setupBind()
    }

    open func setupViewProperty() { }
    open func setupDelegate() { }
    open func setupHierarchy() { }
    open func setupLayout() { }
    open func setupBind() { }
}
