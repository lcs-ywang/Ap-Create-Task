//
//  Breakfast.swift
//  ApCreateTask (iOS)
//
//  Created by Yining Wang on 2022-03-25.
//

import SwiftUI

struct Breakfast: View {
    
    
    
    @ObservedObject var details = ApiData()
    
    private var todayDate : String{
        let today = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .short

        return (formatter.string(from: today))
    }
    // add the time formmater to check of the date of the menu
    
    var body: some View {
        VStack{
            Form{
                ForEach(0..<details.getData.count){ num in
                    if details.getData[num].date == todayDate{
                        Section(header: Text(" Breakfast")){
                            Text("Menu: \(details.getData[num].breakfast)")
                            
                        }
                    }
                    
                }
            }
        }
    }
}
//Add the code of getting the data
struct Breakfast_Previews: PreviewProvider {
    static var previews: some View {
        Breakfast()
    }
}
