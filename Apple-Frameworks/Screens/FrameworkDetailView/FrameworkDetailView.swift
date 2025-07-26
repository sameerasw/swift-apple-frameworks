//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Sameera Sandakelum on 2025-07-27.
//

import SwiftUI

struct FrameworkDetailView: View{

    var framework: Framework
//    @Binding var isShowingDetailsView: Bool
    @State var isShowingSafariView: Bool = false

    var body: some View {
        VStack{
//            XDismissButton(isShowingDetailsView: $isShowingDetailsView)

            Spacer()

            FrameworkTitleView(framework: framework)

            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button{
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        .sheet(
            isPresented: $isShowingSafariView,
            content: {
                SafariView(
                    url: URL(string: framework.urlString) ?? URL(string: "https://www.sameerasw.com")!
                )
            })
    }
}

#Preview {
    FrameworkDetailView(
        framework: MockData.sampleFramework
//        ,isShowingDetailsView: .constant(false)
    )
}
