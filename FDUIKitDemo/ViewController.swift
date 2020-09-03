//
//  ViewController.swift
//  FDUIKitDemo
//
//  Created by fandongtongxue on 2020/2/23.
//  Copyright © 2020 fandong. All rights reserved.
//

import UIKit
import FDUIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let webVC = FDWebController()
        webVC.url = "http://baidu.com"
        present(webVC, animated: true, completion: nil)
    }

}

