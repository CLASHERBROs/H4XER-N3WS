//
//  DetailView.swift
//  H4X3R N3W5
//
//  Created by paritosh on 04/04/20.
//  Copyright © 2020 paritosh. All rights reserved.
//

import SwiftUI
import WebKit
struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https//www.google.com")
    }
    
}

    


