//
//  HomeView.swift
//  twitter-clone
//
//  Created by Lineu Alberto on 13/04/20.
//  Copyright © 2020 Lineu Alberto. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    let tweets: [Tweet] = tweetdata
    
    var body: some View {
        List {
            ForEach(tweets) { tweet in
                HStack(alignment: .top) {
                    tweet.profileImage
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text(tweet.userName).fontWeight(.bold)
                            Text(tweet.userNickName).foregroundColor(.gray)
                        }
                        Text(tweet.text)
                            .layoutPriority(1)
                            .padding(.top, 1)
                        
                        HStack {
                            MainTweetRowButton(imageName: "comment", count: "19")
                            Spacer()
                            MainTweetRowButton(imageName: "retweet", count: "10")
                            Spacer()
                            MainTweetRowButton(imageName: "heart", count: "5")
                            Spacer()
                            MainTweetRowButton(imageName: "share", count: "12")
                            Spacer()
                        }
                        .padding(.top, 5)
                        .padding(.bottom, 10)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct MainTweetRowButton: View {
    var imageName: String = "comment"
    var count: String = "19"
    
    var body: some View {
        HStack(alignment: .center, spacing: 1) {
            Image(self.imageName)
                .resizable()
                .frame(width: 20, height: 20)
            Text(self.count)
        }
    }
}
