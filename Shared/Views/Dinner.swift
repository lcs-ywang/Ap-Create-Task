//
//  Dinner.swift
//  ApCreateTask (iOS)
//
//  Created by Yining Wang on 2022-03-26.
//

import SwiftUI

struct Dinner: View {
    @ObservedObject var details = ApiData2()
    
    private var todayDate : String{
        let today = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .short

        return (formatter.string(from: today))
    }
    
    var body: some View {
        VStack{
            Form{
                ForEach(0..<details.getData.count){ num in
                    
                    
                    
                    if details.getData[num].date == todayDate{
                        Section(header: Text(" Dinner ")){
                            Text("Menu: \(details.getData[num].dinner)")
                            
                        }
                    }
                    
                }
            }
        }
    }
}

struct Dinner_Previews: PreviewProvider {
    static var previews: some View {
        Dinner()
    }
}
