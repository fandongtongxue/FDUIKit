//
//  FDPopView.swift
//  FDLiveKit
//
//  Created by fandongtongxue on 2020/8/25.
//

import UIKit

public enum FDPopType {
    case bottom
    case center
}

open class FDPopView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame.origin.y = .screenH
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public func show(_ containView : UIView, _ type : FDPopType) {
        containView.addSubview(shadowView)
        containView.addSubview(self)
        UIView.animate(withDuration: 0.25) {
            var offsetY : CGFloat = 0
            if type == .bottom{
                offsetY = containView.frame.size.height - self.frame.size.height
            }
            if type == .center{
                offsetY = (containView.frame.size.height - self.frame.size.height) / 2
            }
            self.frame = CGRect.init(x: self.frame.origin.x, y: offsetY, width: self.frame.size.width, height: self.frame.size.height)
        }
    }
    
    @objc public func hide() {
        UIView.animate(withDuration: 0.25, animations: {
            self.frame = CGRect.init(x: self.frame.origin.x, y: self.superview?.frame.size.height ?? 0, width: self.frame.size.width, height: self.frame.size.height)
        }) { (finish) in
            self.shadowView.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
    
    lazy var shadowView: UIView = {
        let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: .screenW, height: .screenH))
        view.backgroundColor = UIColor.black.withAlphaComponent(0.05)
        view.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(FDPopView.hide))
        view.addGestureRecognizer(tap)
        return view
    }()
}
