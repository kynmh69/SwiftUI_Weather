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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading
                           , endPoint:.bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(content: {
                Text("Cuptino, CA")
                    .font(.system(size: 32,weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing:10, content: {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 79,weight: .medium))
                        .foregroundColor(.white)
                })
                HStack(content: {
                    VStack(content: {
                        Text("TUE")
                            .font(.system(size: 16, weight: .medium,design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:40, height: 40)
                        Text("76°")
                            .font(.system(size: 28,weight: .medium))
                            .foregroundColor(.white)
                    })
                })
                Spacer()
            })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
