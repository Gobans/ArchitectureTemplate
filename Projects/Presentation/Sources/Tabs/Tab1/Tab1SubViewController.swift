//
//  Tab1SubViewController.swift
//  Presentation
//
//  Created by Lee Myeonghwan on 2023/11/10.
//  Copyright © 2023 gb. All rights reserved.
//

import UIKit

public class Tab1SubViewController: BaseViewController {
    
    let viewModel: Tab1ViewModel
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Pop to previous page"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("클릭하세요", for: .normal)
        return button
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        return stackView
    }()
    
    public init(viewModel: Tab1ViewModel) {
        self.viewModel = viewModel
        super.init()
    }
    
    public override func setupViewProperty() {
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    public override func setupHierarchy() {
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(button)
        view.addSubview(stackView)
    }
    
    public override func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func buttonTapped() {
        // 버튼이 클릭되었을 때의 동작을 정의합니다.
        viewModel.popButtonClicked()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
