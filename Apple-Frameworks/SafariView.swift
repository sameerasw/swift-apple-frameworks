//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Sameera Sandakelum on 2025-07-27.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        // No update needed in this case
    }
}
