//
//  WeatherButton.swift
//  SwiftUI_Weather
//
//  Created by Hiroki Kayanuma on 2021/04/29.
//

import SwiftUI
struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 200, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold,design: .default))
            .cornerRadius(10.0)
    }
}
