//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Sameera Sandakelum on 2025-07-27.
//

import SwiftUI

struct AFButton: View {

    var title: String

    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
