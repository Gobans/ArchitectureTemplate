//
//  Coordinator.swift
//  Presentation
//
//  Created by 김동락 on 2023/07/03.
//  Copyright © 2023 Lito. All rights reserved.
//

import SwiftUI
import Domain

public enum AppScene: Identifiable, Hashable {
    case exampleScene
    case rootTabScene
    
    public var id: Self {
        return self
    }
    
}
