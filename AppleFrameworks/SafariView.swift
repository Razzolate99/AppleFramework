//
//  SafariView.swift
//  AppleFrameworks
//
//  Created by Aaron Ward on 2021-08-20.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url:URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context:
                        UIViewControllerRepresentableContext<SafariView>) {}
}
