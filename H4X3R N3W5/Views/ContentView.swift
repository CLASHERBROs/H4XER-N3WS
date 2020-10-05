//
//  ContentView.swift
//  H4X3R N3W5
//
//  Created by paritosh on 04/04/20.
//  Copyright © 2020 paritosh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){post in
                NavigationLink(destination:DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4XER N3W5")
            
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
