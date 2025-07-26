//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Sameera Sandakelum on 2025-07-27.
//

import SwiftUI

struct ContentView: View {

    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]

    var body: some View {
        LazyVGrid(columns: columns){
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
        }

    }
}

#Preview {
    ContentView()
}


struct FrameworkTitleView: View {
    let name: String
    let imageName: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
