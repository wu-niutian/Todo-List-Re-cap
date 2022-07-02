//
//  ContentView.swift
//  Todo List Re-cap
//
//  Created by    wuniutian on 2/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        Todo(title: "Work on my skill issue"),
        Todo(title: "Watch some paw patrol"),
        Todo(title: "Gotten hot chocolate",  isCompleted: true)
    ]
    
    @State var isSheetPresented = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach($todos) { $todo in
                    NavigationLink {
                        TodoDetailView(todo: $todo)
                    } label: {
                        HStack {
                            Image(systemName: todo.isCompleted ? "checkmark.square.fill" : "square")
                            Text(todo.title)
                                .strikethrough(todo.isCompleted)
                            // it is onni strikethroughed if it is completed
                        }
                    }
                }
                .onDelete { indexSet in
                    todos.remove(atOffsets: indexSet)
                }
                .onMove { oldOffset, newOffset in
                    todos.move(fromOffsets: oldOffset, toOffset: newOffset)
                }
            }
            .navigationTitle("Todos")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .sheet(isPresented: $isSheetPresented) {
            NewTodoView(todos: $todos)
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
