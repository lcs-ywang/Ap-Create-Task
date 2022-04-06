//
//  HouseView.swift
//  ApCreateTask (iOS)
//
//  

import SwiftUI


struct HouseView: View {
    
    @ObservedObject private var apiData = ApiData2()
    private var houses:[String] = ["Ryder", "Wads", "Lower", "Ondaatje", "Matthews", "Uplands", "Memorial", "Moodie", "Cooper", "Grove", "Upper", "Rashleigh"]
    @State private var placeholder = "Search Bar"
    @State private var filter:DateFilter = .withoutDateFilter
    
    var body: some View {
        NavigationView{
            VStack{
                Picker("Should Houses be sorted? ", selection: $filter){
                    ForEach(DateFilter.allCases, id: \.self){ value in
                        Text(value.rawValue)
                    }
                }
                
                List{
                    ForEach(0..<houses.count){ num in
                        if houses[num].contains(placeholder) || placeholder == "" || placeholder == "Search Bar"{
                            NavigationLink(destination: ScheduleView(details: apiData.filter(house: houses[num], withFilter: filter), house: houses[num])){
                                Text("\(houses[num])")
                                    .font(.largeTitle)
                            }
                        }
                    }
                    .padding(.all)
                    
                }
                .searchable(text: $placeholder)
                .navigationBarTitle("Houses")
            }
        }
    }
}

struct HouseView_Previews: PreviewProvider {
    static var previews: some View {
        HouseView()
    }
}
