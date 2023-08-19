//
//  WebView.swift
//  Crypto Bull
//
//  Created by Tegar Marino on 03/06/23.
//

// Bagian Miranda nn
import Foundation
import SwiftUI
import SafariServices

struct WebView: UIViewControllerRepresentable {
    let url: String
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        let safariViewController = SFSafariViewController(url: URL(string: url)!)
        return safariViewController
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        // Do nothing
    }
}
