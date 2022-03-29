//
//  HouseView.swift
//  ApCreateTask (iOS)
//
//  Created by Yining Wang on 2022-03-28.
//

import SwiftUI

struct HouseView: View {
    
    @ObservedObject private var apiData = ApiData2()
    private var houses:[String] = ["Ryder", "Wads", "Lower", "Ondaatje", "Matthews", "Uplands", "Memorial", "Moodie", "Cooper", "Grove", "Upper", "Rashleigh"]
    @State private var placeholder = "Search Bar"
    var body: some View {
        NavigationView{
            VStack{
                TextField("" ,
                          text: $placeholder)
                    .padding([.top, .leading, .bottom])
                List{
                    ForEach(0..<houses.count){ num in
                        if houses[num].contains(placeholder) || placeholder == "Search Bar" || placeholder == "Search Bar"{
                            NavigationLink(destination: ScheduleView(details: apiData.filter(house: houses[num]), house: houses[num])){
                                Text("\(houses[num])")
                                    .font(.largeTitle)
                            }
                        }
                    }
                    .padding(.all)
                    
                }
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
