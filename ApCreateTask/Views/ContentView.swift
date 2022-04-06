//
//  ContentView.swift
//  Shared
//
//  

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    NavigationLink(destination:
                                    Breakfast()){
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
      
    }
}

struct ContentView: View {
    var body: some View {
        TabView{
            
            MenuView()
                .tabItem {
                   
                        Label("Menu", systemImage: "list.dash")
                            
                        }
            HouseView()
                .tabItem{
                    Label("Schedule", systemImage: "calendar")
                    
                }
                    
        }
    }
}
            
            



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
