//
//  ContentView.swift
//  twitter-clone
//
//  Created by Lineu Alberto on 11/04/20.
//  Copyright © 2020 Lineu Alberto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeView()
                .navigationBarTitle(Text("Main"), displayMode: .inline)
            }.tabItem {
                Image("home")
                Text("Home")
            }
                Text("Search")
                .tabItem {
                    Image("search")
                    Text("Search")
            }
                
            Text("Notifications")
                .tabItem {
                    Image("notification")
                    Text("Notifications")
            }
                
            Text("Messages")
                .tabItem {
                    Image("letter")
                    Text("Messages")
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    let tweets: [Tweet] = tweetdata
    var body: some View {
        List {
            ForEach(tweets) { tweet in
                VStack {
                    Image("profile1")
                    
                    VStack {
                        HStack {
                            Text("ddsada")
                            Text("ddsada")
                        }
                        Text("dasdsadas")
                        
                        HStack {
                            Image("comment")
                            Image("retweet")
                            Image("heart")
                            Image("share")
                        }
                    }
                }
        }
    }
}
}
