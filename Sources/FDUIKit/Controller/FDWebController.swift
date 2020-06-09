//
//  FDWebController.swift
//  FDUIKit
//
//  Created by bogokj on 2020/2/24.
//

import Foundation
import UIKit
import WebKit

open public class FDWebController : FDBaseController {
    
    open var url: String = ""
    
    public override func viewDidLoad() {
        let webView = loadWebView
        webView().load(URLRequest.init(url: URL.init(string: url)!))
        view.addSubview(webView())
    }
    
    private func loadWebView() -> WKWebView {
        let jScript = "var meta = document.createElement('meta'); meta.setAttribute('name', 'viewport'); meta.setAttribute('content', 'width=device-width'); document.getElementsByTagName('head')[0].appendChild(meta);"
        let wkUScript = WKUserScript(source: jScript, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        let wkUController = WKUserContentController()
        wkUController.addUserScript(wkUScript)
        let wkWebConfig = WKWebViewConfiguration()
        wkWebConfig.userContentController = wkUController
        let webView = WKWebView(frame: view.bounds, configuration: wkWebConfig)
        webView.isOpaque = false
        webView.scrollView.bounces = false
        webView.backgroundColor = .white
        return webView
    }
}
