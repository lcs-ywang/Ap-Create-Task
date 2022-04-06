//
//  StoreSchedule.swift
//  ApCreateTask (iOS)
//
//  

import Foundation

import Foundation

class ApiData2: ObservableObject {
    
    @Published var getData:[DineDetail] = [DineDetail(id: 0, house: "", date: "", brTime: "", luTime: "", diTime: "")]
    private var todayDate : String{
        let today = Date()
        let formatter1 = DateFormatter()
        formatter1.dateStyle = .short

        return (formatter1.string(from: today))
    }
    
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
    
    func filter(house:String, withFilter:DateFilter) -> [DineDetail]{
        var result:[DineDetail] = []
        for detail in self.getData{
            
            if withFilter == .withDateFilte{
                if detail.house == house && detail.date == todayDate{
                    result.append(detail)
                }
                
            }else if withFilter == .withoutDateFilter && detail.house == house{
                result.append(detail)
            }
        }
            return result
        }
}
