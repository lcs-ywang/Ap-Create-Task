//
//  ContentView.swift
//  Shared
//
//  Created by Yining Wang on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    NavigationLink(destination: Breakfast()){
                        HStack{
                            
                            Text("🥞🍳☕️🥨")
                                .font(.largeTitle)
                            
                            VStack(alignment: .leading){
                                Text("Breakfast")
                                    .multilineTextAlignment(.leading)
                                
                                Text("I promise you it feels good after eating breakfast!")
                                    .font(.caption)
                                    .multilineTextAlignment(.leading)
                                
                                
                            }
                        }
                    }
                    NavigationLink(destination:
                                    Lunch()){
                        HStack{
                            
                            Text("🍱🍜🥘🥟")
                                .font(.largeTitle)
                            
                            VStack(alignment: .leading){
                                Text("Lunch")
                                    .multilineTextAlignment(.leading)
                                
                                Text("Hah Hah, yummy yummy!!!!")
                                    .font(.caption)
                                    .multilineTextAlignment(.leading)
                                
                            }
                        }
                    }
                    NavigationLink(destination:
                                    Dinner()){
                        HStack{
                            
                            Text("🍛🍝🍲🍧")
                                .font(.largeTitle)
                            
                            VStack(alignment: .leading){
                                Text("Dinner")
                                    .multilineTextAlignment(.leading)
                                
                                Text("Hope there is some ice-cream for dinner!")
                                    .font(.caption)
                                    .multilineTextAlignment(.leading)
                                
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("Menu")
        }
        .padding(.all)
    }
}

struct ReminderView: View {
    
    @ObservedObject var store: TaskStore
    
    var body: some View {
        List(store.tasks) { task in
            HStack{
                
                Image(systemName: task.completed ? "checkmark.circle fill" : "circle")
                    .onTapGesture {
                        task.completed.toggle()
                    }
                
                Text(task.description)
               
            }
            
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
