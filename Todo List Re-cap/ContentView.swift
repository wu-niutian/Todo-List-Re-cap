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
                HStack {
                    Image(systemName: todo.isCompleted ? "checkmark.square.fill" : "square")
                    Text(todo.title)
                        .strikethrough(todo.isCompleted)
                    // it is onni strikethroughed if it is completed
                }
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
