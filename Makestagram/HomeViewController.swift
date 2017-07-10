//
//  HomeViewController.swift
//  Makestagram
//
//  Created by Anika Morris on 7/5/17.
//  Copyright © 2017 Anika Morris. All rights reserved.
//

import UIKit
import Kingfisher

class HomeViewController: UIViewController {
    
    //MARK: - Properties
    
    var posts = [Post]()
    
    //MARK: - Subviews
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - VC Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    func configureTableView() {
        tableView.tableFooterView = UIView()
        
        tableView.separatorStyle = .none
    }
        
        configureTableView()
        
        UserService.posts(for: User.current) { (posts) in
            self.posts = posts
            self.tableView.reloadData()
        }
    }
}

//MARK: - UITableViewDataSource
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = posts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostImageCell", for: indexPath) as! PostImageCell

        let imageURL = URL(string: post.imageURL)
        cell.postImageView.kf.setImage(with: imageURL)
        
        return cell
    }
}

//MARK: - UITableViewDelegate
extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let post = posts[indexPath.row]
        
        return post.imageHeight
    }
}
