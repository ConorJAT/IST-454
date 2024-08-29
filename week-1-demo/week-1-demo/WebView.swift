//
//  WebView.swift
//  week-1-demo
//
//  Created by Conor Race (RIT Student) on 8/29/24.
//

import Foundation
import SwiftUI
import WebKit
import OSLog

// Can create a log for each part of the app.
let logger = Logger(subsystem: "com.conor.race.fullscreenbrowser", category: "WebView")

struct WebView: UIViewRepresentable {
    var url: String // Passed in when WebView created.
    
    func makeUIView(context: Context) -> some UIView {
        
        logger.info("URL is: \(url)")
        logger.debug("ONE is: \(url)")
        logger.warning("TWO is: \(url)")
        
        // Return actual view we're going to show.
        guard let url = URL(string: self.url) else {
            // Return an empty view if URL can't be created.
            return WKWebView()
        }
        // print("URL is: \(url)")
        let request = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(request)
        
        return wkWebView;
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        // Required - Going to ignore
    }
}
