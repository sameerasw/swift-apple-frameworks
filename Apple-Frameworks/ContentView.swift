//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Sameera Sandakelum on 2025-07-27.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel = ContentViewViewModel()

    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .padding()
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
