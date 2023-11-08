//
//  ViewController.swift
//  FDUIKitDemo
//
//  Created by Mac on 2021/7/31.
//

import UIKit
import FDUIKit
import SwiftMessages

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        FDMessageView.show(title: "测试标题", message: "测试content", theme: .error)
//        let webVC = BaseWebController()
//        webVC.url = "https://gitee.com/GiteerApp/GiteerFeedback/raw/master/README.md"
//        present(webVC, animated: true, completion: nil)
//        navigationController?.pushViewController(webVC, animated: true)
    }
    
    


}

