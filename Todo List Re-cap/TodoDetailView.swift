//
//  TodoDetailView.swift
//  Todo List Re-cap
//
//  Created by    wuniutian on 2/7/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        VStack {
            TextField("Please enter a title" , text: $todo.title)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button {
                todo.isCompleted.toggle()
            } label: {
                Text("Mark as \(todo.isCompleted ? "incompleted" : "completed" )")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(todo.isCompleted ? .teal : .purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    
            }
            Spacer()
        }
        
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "Water the cat demo")))
    }
}
