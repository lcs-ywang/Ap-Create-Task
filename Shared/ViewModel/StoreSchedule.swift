//
//  StoreSchedule.swift
//  ApCreateTask (iOS)
//
//  Created by Yining Wang on 2022-03-28.
//

import Foundation

import Foundation

class ApiData2: ObservableObject {
    
    @Published var getData:[DineDetail] = [DineDetail(id: 0, house: "", date: "", brTime: "", luTime: "", diTime: "")]
    
    func updateData(){
        let url = URL(string: "https://api.sheety.co/220245891211d5ab8bb3d71e75542ffb/meal/list")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            
            if let placeholder = try? JSONDecoder().decode(Schedule.self, from: data){
                DispatchQueue.main.async {
                    self.getData = placeholder.list
                    print("Done")
                }
            }
            
        }.resume()
    }
    init() {
        self.updateData()
    }
    
    func filter(house:String) -> [DineDetail]{
        var result:[DineDetail] = []
        for detail in self.getData{
            
            if detail.house == house{
                result.append(detail)
            }
        }
        
        return result
    }
    
}


