//
//  FDBaseController.swift
//  FDUIKit
//
//  Created by fandongtongxue on 2020/2/23.
//

import UIKit

open class BaseViewController : UIViewController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            view.backgroundColor = .systemBackground
        } else {
            // Fallback on earlier versions
            view.backgroundColor = .white
        }
    }
}
