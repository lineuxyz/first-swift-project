//
//  Tweet.swift
//  twitter-clone
//
//  Created by Lineu Alberto on 12/04/20.
//  Copyright © 2020 Lineu Alberto. All rights reserved.
//

import Foundation
import SwiftUI

struct Tweet: Identifiable {
    var id = UUID()
    var userName: String
    var userNickName: String
    var text: String
    var profileImage: Image
}
