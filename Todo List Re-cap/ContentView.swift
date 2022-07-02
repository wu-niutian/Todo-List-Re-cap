//
//  ContentView.swift
//  Todo List Re-cap
//
//  Created by    wuniutian on 2/7/22.
//

import SwiftUI

struct ContentView: View {
    
    var todos = [
        Todo(title: "Work on my skill issue"),
        Todo(title: "Watch some paw patrol"),
        Todo(title: "Gotten hot chocolate",  isCompleted: true)
    ]
    
    var body: some View {
        NavigationView {
            List(todos) { todo in
                Text(todo.title)
            }
            .navigationTitle("Todos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
