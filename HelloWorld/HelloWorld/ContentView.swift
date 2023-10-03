//
//  ContentView.swift
//  HelloWorld
//
//  Created by 전판근 on 2023/10/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("iOS")
                .font(.system(size: 180))
                .fontWeight(.black)
                .foregroundStyle(
                    LinearGradient(
                        colors: [.pink, .purple, .blue]
                        , startPoint: .topLeading
                        , endPoint: .bottomTrailing
                    )
                )
            
            Link(destination: URL(string: "https://apple.com")!) {
                HStack(spacing: 16) {
                    Image(systemName: "apple.logo")
                    Text("Apple Store")
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(
                    Capsule()
                        .fill(Color.blue)
                )
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
