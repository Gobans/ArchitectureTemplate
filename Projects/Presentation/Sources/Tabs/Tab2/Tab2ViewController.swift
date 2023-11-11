//
//  ExampleTab2ViewController.swift
//  Presentation
//
//  Created by Lee Myeonghwan on 2023/11/10.
//  Copyright © 2023 gb. All rights reserved.
//

import UIKit

public class Tab2ViewController: BaseViewController {
    let viewModel: Tab2ViewModel
    
    public init(viewModel: Tab2ViewModel) {
        self.viewModel = viewModel
        super.init()
    }
    
    public override func setupBind() {
        viewModel.$adviceQuote
            .compactMap { $0.advice }
            .assign(to: \.text, on: label)
            .store(in: &cancelBag)
        viewModel.loadingSubject
            .sink { _ in
                self.activityIndicator.stopAnimating()
                self.activityIndicator.isHidden = true
            }
            .store(in: &cancelBag)
    }
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "Empty"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        label.numberOfLines = 3
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Change Quote", for: .normal)
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
    
    private var activityIndicator: UIActivityIndicatorView = {
         let activityIndicator = UIActivityIndicatorView(style: .large)
         activityIndicator.color = .gray
        activityIndicator.isHidden = true
        return activityIndicator
    }()
    
    public override func setupViewProperty() {
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    public override func setupHierarchy() {
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(button)
        view.addSubview(stackView)
        view.addSubview(activityIndicator)
    }
    
    public override func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func buttonTapped() {
        // 버튼이 클릭되었을 때의 동작을 정의합니다.
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        viewModel.changeQuote()
    }
    
}
