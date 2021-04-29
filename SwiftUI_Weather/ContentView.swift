//
//  ContentView.swift
//  SwiftUI_Weather
//
//  Created by Hiroki Kayanuma on 2021/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(content: {
            BackgroudView(topColor: .blue, bottomColor: Color("lightBlue"))
            VStack(content: {
                CityTextView(cityTextName: "Cuptino, CA")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temprature: 74)
                HStack(spacing:30,content: {
                    WeatherDayView(dayOfTheWeek: "MON",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    WeatherDayView(dayOfTheWeek: "TUE",
                                   imageName: "cloud.sleet.fill",
                                   temperature: 10)
                    WeatherDayView(dayOfTheWeek: "WED",
                                   imageName: "moon.stars.fill",
                                   temperature: 74)
                    WeatherDayView(dayOfTheWeek: "THU",
                                   imageName: "wind.snow",
                                   temperature: 25)
                    WeatherDayView(dayOfTheWeek: "FRI",
                                   imageName: "cloud.sun.bolt.fill",
                                   temperature: 74)
                })
                Spacer()
                ChangeButton(title: "Change Day Time",
                             textColor: .blue,
                             backgroundColor: .white)
                Spacer()
            })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct WeatherDayView: View {
    var dayOfTheWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(content: {
            Text(dayOfTheWeek)
                .font(.system(size: 16, weight: .medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        })
    }
}

struct BackgroudView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading
                       , endPoint:.bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityTextName: String
    var body: some View {
        Text(cityTextName)
            .font(.system(size: 32,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temprature: Int
    var body: some View {
        VStack(spacing:10, content: {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temprature)°")
                .font(.system(size: 79,weight: .medium))
                .foregroundColor(.white)
        })
        .padding(.bottom, 40)
    }
}

struct ChangeButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            print("Tapped")
        }, label: {
            Text(title)
                .frame(width: 200, height: 50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.system(size: 20, weight: .bold,design: .default))
                .cornerRadius(10.0)
        })
    }
}
