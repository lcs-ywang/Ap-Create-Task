//
//  Store.swift
//  ApCreateTask (iOS)
//
//  Created by Yining Wang on 2022-03-25.
//

import Foundation

class ApiData: ObservableObject {
    
    @Published var getData:[Menu] = [Menu(id: 0,  date: "", breakfast: "", lunch: "", dinner: "")]
    
    
    
    //use the function to get the data from the Url link of the menu
    func updateData(){
        let url = URL(string: "https://api.sheety.co/220245891211d5ab8bb3d71e75542ffb/menu/list")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            //decode the code
            if let placeholder = try? JSONDecoder().decode(MealMenu.self, from: data){
                DispatchQueue.main.async {
                    self.getData = placeholder.list
                }
            }
            
        }.resume()
    }
    init() {
        self.updateData()//updated the data of the menu
    }
    
}




