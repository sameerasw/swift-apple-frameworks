//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Sameera Sandakelum on 2025-07-27.
//

import SwiftUI

struct FrameworkDetailView: View{

    var framework: Framework
    @Binding var isShowingDetailsView: Bool

    var body: some View {
        VStack{
            HStack{
                Spacer()

                Button{
                    isShowingDetailsView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()

            Spacer()

            FrameworkTitleView(framework: framework)

            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button{

            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(
        framework: MockData.sampleFramework, isShowingDetailsView:
                .constant(false)
    )
}
