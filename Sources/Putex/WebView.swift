//
//  SafariView.swift
//  Putex
//
//  Created by Herve Crespel on 12/11/2025.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    let url: URL

    func makeNSView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateNSView(_ nsView: WKWebView, context: Context) {}
}

struct WebPreview : View {
    var url = "https://apple.com"
    var body: some View {
        WebView(url: URL(string: url)!)
            .frame(minWidth: 800, minHeight: 600)
    }
}

#Preview {
    WebPreview()
}
#Preview {
    WebPreview(url:"https://particuliers.sg.fr/services-en-ligne/espace-client")
}

/*
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: Context) -> SFSafariViewController {
        let config = SFSafariViewController.Configuration()
        config.entersReaderIfAvailable = false
        return SFSafariViewController(url: url, configuration: config)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
}
*/
