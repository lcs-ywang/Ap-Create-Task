//
//  Lunch.swift
//  ApCreateTask (iOS)
//
//  

import SwiftUI

struct Lunch: View {
    
    @ObservedObject var details = ApiData()
    
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
                        Section(header: Text(" Lunch ")){
                            Text("Menu: \(details.getData[num].lunch)")
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding(.all)
                            
                        }
                        
                    }
                    
                }
                .padding(.all)
            }
        }
        Text("Enjoy your Meal!!!")
        
    }
}

struct Lunch_Previews: PreviewProvider {
    static var previews: some View {
        Lunch()
    }
}
