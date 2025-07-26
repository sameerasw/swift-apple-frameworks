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
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("⌘ Frameworks")
        }

    }
}

#Preview {
    ContentView()
}


struct FrameworkTitleView: View {
    let framework: Framework

    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
