//
//  ContentView.swift
//  Shared
//
//  Created by Yining Wang on 2022-03-25.
//

import SwiftUI

struct MenuView: View {
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
                                    .padding()
                                
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
                    HStack{
                    Text("Menu")
                            .font(.largeTitle)
                        .foregroundColor(Color(hue: 0.132, saturation: 1.0, brightness: 1.0, opacity: 1.0))
                       
                    
                    Text("🍣")
                        .font(.largeTitle)
                    }
                }
            
            HouseView()
                .tabItem{
                    HStack{
                    Text("House Schedule")
                        .font(.largeTitle)
                        .foregroundColor(Color(hue: 0.469, saturation: 1.0, brightness: 1.0))
                        .padding(.all)
                    Text("🕛")
                            .font(.largeTitle)
                    }
                    .padding()
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
