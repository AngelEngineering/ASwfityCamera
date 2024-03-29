//
//  ASCameraButton.swift
//  ASCamera

import UIKit

@objc open class ASCameraButton: UIView {
    var isEnabled: Bool {
        didSet {
            if isUserInteractionEnabled != isEnabled {
                isUserInteractionEnabled = isEnabled
            }
        }
    }
    
    override open var isUserInteractionEnabled: Bool {
        didSet {
            if isUserInteractionEnabled != isEnabled {
                isEnabled = isUserInteractionEnabled
            }
        }
    }
    
    public var longPressGestureRecognizer: UILongPressGestureRecognizer?
    
    public init() {
        self.isEnabled = true
        super.init(frame: .zero)
        self.isUserInteractionEnabled = true
    }
    
    public override init(frame: CGRect) {
        self.isEnabled = true
        super.init(frame: frame)
        self.isUserInteractionEnabled = true
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

