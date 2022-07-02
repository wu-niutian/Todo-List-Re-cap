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
                print("Tapped")
            } label: {
                Text("Mark as \(todo.isCompleted ? "incompleted" : "completed" )")
                    .frame(minWidth: .infinity)
                    .padding()
                    .background(.teal)
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
