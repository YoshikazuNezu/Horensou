//
//  ViewController.swift
//  Hourensou
//
//  Created by 根津嘉一 on 2019/05/11.
//  Copyright © 2019 根津嘉一. All rights reserved.
//

import UIKit
import APIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Session.send(GoogleAPI.SearchRepositories(origin: "東京駅", destination: "東京スカイツリー")) { result in
            switch result {
            case .success(let response):
                print(response)
            case .failure(let error):
                print(error)
            }
        }
    }

}
