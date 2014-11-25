//
//  CardView.swift
//  SuitUp
//
//  Created by Ricardo on 11/25/14.
//  Copyright (c) 2014 RayWenderlich. All rights reserved.
//

import UIKit

@IBDesignable
class CardView: UIView {
  // MARK: Inspectables
  @IBInspectable var cornerRadius: CGFloat = 20.0 {
    didSet {
      layer.cornerRadius = cornerRadius
    }
  }
  
  @IBInspectable var borderColor: UIColor = UIColor.blackColor() {
    didSet {
      layer.borderColor = borderColor.CGColor
    }
  }
  
  @IBInspectable var borderWidth: CGFloat = 4.0 {
    didSet {
      layer.borderWidth = borderWidth
    }
  }
  
  @IBInspectable var skeumorphic: Bool = false {
    didSet {
      if(skeumorphic) {
        layer.shadowColor = UIColor.blackColor().CGColor
        layer.shadowOpacity = 0.33
        layer.shadowRadius = 3.0
        layer.shadowOffset = CGSizeMake(6.0, 6.0)
      }
    }
  }
  
  // MARK: IB code
  override func prepareForInterfaceBuilder() {
    layer.cornerRadius = cornerRadius
    layer.borderColor = borderColor.CGColor
    layer.borderWidth = borderWidth
  }
}
