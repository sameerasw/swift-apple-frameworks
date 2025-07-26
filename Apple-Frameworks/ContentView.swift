//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Sameera Sandakelum on 2025-07-27.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel = ContentViewViewModel()

    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]

    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("⌘ Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailsView){
                FrameworkDetailView(
                    framework: viewModel.selectedFramework ?? MockData
                        .sampleFramework, // usually you put the not found or error message as no frameworks are selected
                    isShowingDetailsView: $viewModel.isShowingDetailsView)
            }
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
