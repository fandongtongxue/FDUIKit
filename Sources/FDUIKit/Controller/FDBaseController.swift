//
//  FDBaseController.swift
//  FDUIKit
//
//  Created by bogokj on 2020/2/23.
//

import Foundation
import UIKit
import SPPermissions

public class FDBaseController : UIViewController {
    public override func viewDidLoad() {
        
    }
    
    public class func showPermissions{
        let controller = SPPermissions.dialog([.camera, .photoLibrary])

        // Ovveride texts in controller
        controller.titleText = "Title Text"
        controller.headerText = "Header Text"
        controller.footerText = "Footer Text"

        // Set `DataSource` or `Delegate` if need.
        // By default using project texts and icons.
        controller.dataSource = self
        controller.delegate = self

        // Always use this method for present
        controller.present(on: self)
    }
}
