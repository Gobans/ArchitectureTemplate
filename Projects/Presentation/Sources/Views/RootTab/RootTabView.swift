//
//  RootTabView.swift
//  Presentation
//
//  Created by 김동락 on 2023/07/03.
//  Copyright © 2023 Lito. All rights reserved.
//

import SwiftUI

public struct RootTabView: View {
    
    private let tab1: ExampleView
    @State private var selection: Int = 1
    
    public init(tab1: ExampleView) {
        self.tab1 = tab1
    }
    
    public var body: some View {
        TabView(selection: $selection) {
            tab1
                .tabItem {
                    VStack {
                        Image(systemName: "hexagon.fill")
                        Text("Tab1")
                    }
                }
                .tag(1)
        }
        .navigationBarBackButtonHidden(true)
        .onAppear {
            UITabBar.appearance().backgroundColor = UIColor(.orange)
        }
    }
}
