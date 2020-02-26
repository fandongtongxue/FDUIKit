//
//  FDWebController.swift
//  FDUIKit
//
//  Created by bogokj on 2020/2/24.
//

import Foundation
import UIKit
import WebKit

public class FDWebController : FDBaseController {
    
    public let url : URL
    
    init(url : URL) {
        self.url = url;
    }
    
    public override func viewDidLoad() {
        let config = WKWebViewConfiguration.init()
        let webView = WKWebView.init(frame: view.bounds, configuration: config)
        webView.load(URLRequest.init(url: url))
        view.addSubview(webView)
    }
}
