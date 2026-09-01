//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Student2 on 01/09/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                
                DayForecast(day: "Mon",isRainy: false, high: 70, low: 50)
                DayForecast(day: "Tue",isRainy: true, high: 60, low: 40)
                DayForecast(day: "Wed",isRainy: false, high: 40, low: 40)
                
                
            }
            HStack {
                
            }
        }
    }
    
    struct DayForecast : View{
        
        let day: String
        let isRainy: Bool
        let high: Int
        let low: Int
        
        /*enum iconColor{
            case blue
            case yellow
            case green
            case pink
        }
        
       enum iconName: String {
            case "cloud.rain.fill"
            case "sun.max.fill"
        }
        */
         var iconName: String {
            if isRainy{
                return "cloud.rain.fill"
            } else {
                return "sun.max.fill"
            }
        }
        var iconColor: Color{
            if isRainy{
                return Color.blue
            }else {
                return Color.yellow
            }
        }
        var body: some View{
            VStack {
                Text(day)
                    .font(Font.headline)
                    .fontDesign(Font.Design.rounded)
                Image(systemName: iconName)
                   .foregroundStyle(iconColor)
                    .font(Font.largeTitle)
                    .padding(5)
                Text("High: \(high)º")
                    .foregroundStyle(Color.cyan)
                    .fontWeight(Font.Weight.semibold)
                Text("Low: \(low)º")
                    .foregroundStyle(Color.orange)
                    .fontWeight(Font.Weight.medium)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
