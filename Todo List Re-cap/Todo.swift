//
//  Todo.swift
//  Todo List Re-cap
//
//  Created by    wuniutian on 2/7/22.
//

import Foundation

struct Todo: Identifiable {
    
    var id = UUID()
    var title: String
    var isCompleted: Bool = false
    
}
