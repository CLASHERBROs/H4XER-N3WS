//
//  WebView.swift
//  H4X3R N3W5
//
//  Created by paritosh on 04/04/20.
//  Copyright © 2020 paritosh. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit
struct WebView : UIViewRepresentable{
let urlString : String?
func makeUIView(context: Context) ->WKWebView {
    return WKWebView()
}

func updateUIView(_ uiView: WKWebView, context: Context) {
    if let safeString = urlString{
        if let url = URL(string:safeString)
        { let request = URLRequest(url: url)
            uiView.load(request)
            
        }
        
    }
    else{
        
    }
}
}
