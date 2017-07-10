//
//  StorageReference+Post.swift
//  Makestagram
//
//  Created by Anika Morris on 7/6/17.
//  Copyright © 2017 Anika Morris. All rights reserved.
//

import Foundation
import FirebaseStorage

extension StorageReference {
    static let dateFormatter = ISO8601DateFormatter()
    
    static func newPostImageReference() -> StorageReference {
        let uid = User.current.uid
        let timestamp = dateFormatter.string(from: Date())
        
        return Storage.storage().reference().child("image/posts/\(uid)/\(timestamp).jpg")
    }
}
