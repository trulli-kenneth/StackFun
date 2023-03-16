//
//  ViewModels.swift
//  StackFun
//
//  Created by Kenneth Adams on 3/16/23.
//

import Foundation
import SwiftUI

class NextViewOptionTwoViewModel: ObservableObject, Hashable {
    static func == (lhs: NextViewOptionTwoViewModel, rhs: NextViewOptionTwoViewModel) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(id)
    }
    
    init(name: String) {
        self.name = name
    }
    
    var name: String = "Hello"
    var id: Int = 11
}

class NextViewOptionThreeViewModel: ObservableObject, Hashable {
    static func == (lhs: NextViewOptionThreeViewModel, rhs: NextViewOptionThreeViewModel) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(id)
    }
    
    init(name: String) {
        self.name = name
    }
    
    var name: String = "Hello"
    var id: Int = 11
}

class NextViewOptionFourViewModel: ObservableObject, Hashable {
    static func == (lhs: NextViewOptionFourViewModel, rhs: NextViewOptionFourViewModel) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(id)
    }
    
    init(name: String) {
        self.name = name
    }
    
    var name: String = "Hello"
    var id: Int = 11
}

class NextViewOptionFiveViewModel: ObservableObject, Hashable {
    static func == (lhs: NextViewOptionFiveViewModel, rhs: NextViewOptionFiveViewModel) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(id)
    }
    
    init(name: String) {
        self.name = name
    }
    
    var name: String = "Hello"
    var id: Int = 11
}


class NextViewViewModel: ObservableObject, Hashable {
    static func == (lhs: NextViewViewModel, rhs: NextViewViewModel) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(id)
    }
    
    var name: String = "Hello"
    var id: Int = 11
}

class ContentViewViewModel: ObservableObject, Hashable {
    static func == (lhs: ContentViewViewModel, rhs: ContentViewViewModel) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(id)
    }
    
    var name: String = "Hello"
    var id: Int = 11
}
