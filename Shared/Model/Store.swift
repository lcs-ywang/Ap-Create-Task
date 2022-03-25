//
//  Store.swift
//  ApCreateTask (iOS)
//
//  Created by Yining Wang on 2022-03-25.
//

import Foundation

class ApiData: ObservableObject {
    
    @Published var getData:[Menu] = [Menu(id: 0,  date: "", breakfast: "", lunch: "", dinner: "")]
    
    func updateData(){
        let url = URL(string: "https://api.sheety.co/7deed22e80a5e8242df797431ad2d48f/menu/list")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            
            if let placeholder = try? JSONDecoder().decode(MealMenu.self, from: data){
                DispatchQueue.main.async {
                    self.getData = placeholder.list
                }
            }
            
        }.resume()
    }
    init() {
        self.updateData()
    }
    
}

