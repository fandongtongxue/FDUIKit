//
//  FDDefine.swift
//  FDUIKit
//
//  Created by fandongtongxue on 2020/2/23.
//

import Foundation
import UIKit

public extension CGFloat {
    public static let screenW = UIScreen.main.bounds.size.width
    public static let screenH = UIScreen.main.bounds.size.height
    public static let navigationBarHeight = CGFloat(44)
    public static let statusBarHeight = CGFloat(UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.size.height ?? 0)
    public static let largeNavigationTitleHeight = CGFloat(96)
    public static let topHeight = (statusBarHeight + navigationBarHeight)
    public static let tabBarHeight = CGFloat(49 + (statusBarHeight > 20 ? 34 : 0))
    public static let safeAreaBottomHeight = CGFloat(statusBarHeight > 20 ? 34 : 0)
    public static let screenScale = UIScreen.main.scale
}
