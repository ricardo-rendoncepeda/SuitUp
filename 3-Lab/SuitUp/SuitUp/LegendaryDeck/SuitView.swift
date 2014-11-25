//
//  SuitView.swift
//  SuitUp
//
//  Created by Ricardo on 11/25/14.
//  Copyright (c) 2014 RayWenderlich. All rights reserved.
//

import UIKit
import AVFoundation

@IBDesignable
class SuitView: UIView {
  // MARK: Inspectables
  @IBInspectable var suit: String = "Spade"
  @IBInspectable var color: UIColor = UIColor.blackColor()
  @IBInspectable var joker: UIImage? = UIImage(named: "Joker")
  
  // MARK: Drawing code
  override func drawRect(rect: CGRect) {
    var path: UIBezierPath!
    switch(suit) {
    case "Spade":
      path = spade()
    case "Heart":
      path = heart()
    case "Club":
      path = club()
    case "Diamond":
      path = diamond()
    default:
      path = nil
    }
    if(path != nil) {
      modifyPath(&path)
      color.setFill()
      path.fill()
    } else if let image = joker {
      image.drawInRect(AVMakeRectWithAspectRatioInsideRect(image.size, bounds))
    }
  }
  
  // MARK: Transformations
  // Translate to center & Scale to fit
  private func modifyPath(inout path: UIBezierPath!) {
    let b: (w: CGFloat, h: CGFloat) = (CGRectGetWidth(bounds), CGRectGetHeight(bounds))
    let p: (w: CGFloat, h: CGFloat) = (CGRectGetWidth(path.bounds), CGRectGetHeight(path.bounds))
    
    if(p.w < p.h) {
      path.applyTransform(CGAffineTransformMakeTranslation((p.h - p.w) / 2.0, 0.0))
      path.applyTransform(CGAffineTransformMakeScale(b.w / p.h, b.h / p.h))
    } else {
      path.applyTransform(CGAffineTransformMakeTranslation(0.0, (p.w - p.h) / 2.0))
      path.applyTransform(CGAffineTransformMakeScale(b.w / p.w, b.h / p.w))
    }
  }
  
  // MARK: PaintCode Suits
  private func spade() -> UIBezierPath {
    var spadePath = UIBezierPath()
    spadePath.moveToPoint(CGPointMake(38, 0))
    spadePath.addCurveToPoint(CGPointMake(31.73, 15.14), controlPoint1: CGPointMake(36.64, 5.64), controlPoint2: CGPointMake(34.55, 10.7))
    spadePath.addCurveToPoint(CGPointMake(16.65, 31.59), controlPoint1: CGPointMake(28.91, 19.57), controlPoint2: CGPointMake(23.89, 25.04))
    spadePath.addCurveToPoint(CGPointMake(2.89, 46.66), controlPoint1: CGPointMake(9.41, 38.14), controlPoint2: CGPointMake(4.82, 43.16))
    spadePath.addCurveToPoint(CGPointMake(0, 57.31), controlPoint1: CGPointMake(0.96, 50.16), controlPoint2: CGPointMake(0, 53.71))
    spadePath.addCurveToPoint(CGPointMake(5.02, 69.83), controlPoint1: CGPointMake(0, 62.32), controlPoint2: CGPointMake(1.67, 66.49))
    spadePath.addCurveToPoint(CGPointMake(17.24, 74.84), controlPoint1: CGPointMake(8.36, 73.17), controlPoint2: CGPointMake(12.43, 74.84))
    spadePath.addCurveToPoint(CGPointMake(36.89, 61.73), controlPoint1: CGPointMake(25.85, 74.84), controlPoint2: CGPointMake(32.5, 68.57))
    spadePath.addCurveToPoint(CGPointMake(33.16, 79.68), controlPoint1: CGPointMake(36.55, 69.21), controlPoint2: CGPointMake(35.32, 75.2))
    spadePath.addCurveToPoint(CGPointMake(22.47, 91.68), controlPoint1: CGPointMake(30.83, 84.51), controlPoint2: CGPointMake(27.27, 88.5))
    spadePath.addCurveToPoint(CGPointMake(4.98, 97.32), controlPoint1: CGPointMake(19.23, 93.83), controlPoint2: CGPointMake(13.39, 95.7))
    spadePath.addLineToPoint(CGPointMake(4.35, 100))
    spadePath.addLineToPoint(CGPointMake(37.96, 100))
    spadePath.addLineToPoint(CGPointMake(71.61, 100))
    spadePath.addLineToPoint(CGPointMake(70.99, 97.32))
    spadePath.addCurveToPoint(CGPointMake(53.5, 91.68), controlPoint1: CGPointMake(62.57, 95.7), controlPoint2: CGPointMake(56.74, 93.83))
    spadePath.addCurveToPoint(CGPointMake(42.81, 79.68), controlPoint1: CGPointMake(48.69, 88.5), controlPoint2: CGPointMake(45.13, 84.51))
    spadePath.addCurveToPoint(CGPointMake(39.08, 61.76), controlPoint1: CGPointMake(40.65, 75.2), controlPoint2: CGPointMake(39.42, 69.23))
    spadePath.addCurveToPoint(CGPointMake(58.76, 74.84), controlPoint1: CGPointMake(43.46, 68.59), controlPoint2: CGPointMake(50.16, 74.84))
    spadePath.addCurveToPoint(CGPointMake(70.98, 69.83), controlPoint1: CGPointMake(63.57, 74.84), controlPoint2: CGPointMake(67.64, 73.17))
    spadePath.addCurveToPoint(CGPointMake(76, 57.31), controlPoint1: CGPointMake(74.33, 66.49), controlPoint2: CGPointMake(76, 62.32))
    spadePath.addCurveToPoint(CGPointMake(73.11, 46.66), controlPoint1: CGPointMake(76, 53.71), controlPoint2: CGPointMake(75.04, 50.16))
    spadePath.addCurveToPoint(CGPointMake(59.35, 31.59), controlPoint1: CGPointMake(71.18, 43.16), controlPoint2: CGPointMake(66.59, 38.14))
    spadePath.addCurveToPoint(CGPointMake(44.27, 15.14), controlPoint1: CGPointMake(52.11, 25.04), controlPoint2: CGPointMake(47.09, 19.57))
    spadePath.addCurveToPoint(CGPointMake(38, 0), controlPoint1: CGPointMake(41.45, 10.7), controlPoint2: CGPointMake(39.36, 5.64))
    spadePath.closePath()
    spadePath.miterLimit = 4
    return spadePath
  }
  
  private func heart() -> UIBezierPath {
    var heartPath = UIBezierPath()
    heartPath.moveToPoint(CGPointMake(43.66, 100))
    heartPath.addCurveToPoint(CGPointMake(36.6, 82.35), controlPoint1: CGPointMake(42.01, 93.73), controlPoint2: CGPointMake(39.66, 87.85))
    heartPath.addCurveToPoint(CGPointMake(18.84, 56.73), controlPoint1: CGPointMake(33.54, 76.85), controlPoint2: CGPointMake(27.62, 68.31))
    heartPath.addCurveToPoint(CGPointMake(6.94, 40.56), controlPoint1: CGPointMake(12.4, 48.23), controlPoint2: CGPointMake(8.43, 42.84))
    heartPath.addCurveToPoint(CGPointMake(1.64, 30.32), controlPoint1: CGPointMake(4.5, 36.84), controlPoint2: CGPointMake(2.73, 33.43))
    heartPath.addCurveToPoint(CGPointMake(0, 20.88), controlPoint1: CGPointMake(0.55, 27.21), controlPoint2: CGPointMake(0, 24.06))
    heartPath.addCurveToPoint(CGPointMake(5.91, 6.06), controlPoint1: CGPointMake(0, 14.98), controlPoint2: CGPointMake(1.97, 10.04))
    heartPath.addCurveToPoint(CGPointMake(20.51, 0.08), controlPoint1: CGPointMake(9.84, 2.07), controlPoint2: CGPointMake(14.71, 0.08))
    heartPath.addCurveToPoint(CGPointMake(35.76, 6.3), controlPoint1: CGPointMake(26.37, 0.08), controlPoint2: CGPointMake(31.45, 2.15))
    heartPath.addCurveToPoint(CGPointMake(43.66, 20.08), controlPoint1: CGPointMake(39, 9.38), controlPoint2: CGPointMake(41.64, 13.97))
    heartPath.addCurveToPoint(CGPointMake(51.08, 6.37), controlPoint1: CGPointMake(45.42, 14.08), controlPoint2: CGPointMake(47.89, 9.51))
    heartPath.addCurveToPoint(CGPointMake(66.41, 0), controlPoint1: CGPointMake(55.5, 2.12), controlPoint2: CGPointMake(60.61, 0))
    heartPath.addCurveToPoint(CGPointMake(81.01, 5.94), controlPoint1: CGPointMake(72.15, 0), controlPoint2: CGPointMake(77.02, 1.98))
    heartPath.addCurveToPoint(CGPointMake(87, 20.08), controlPoint1: CGPointMake(85, 9.89), controlPoint2: CGPointMake(87, 14.61))
    heartPath.addCurveToPoint(CGPointMake(83.49, 35.02), controlPoint1: CGPointMake(87, 24.86), controlPoint2: CGPointMake(85.83, 29.84))
    heartPath.addCurveToPoint(CGPointMake(69.92, 55.38), controlPoint1: CGPointMake(81.15, 40.2), controlPoint2: CGPointMake(76.62, 46.99))
    heartPath.addCurveToPoint(CGPointMake(50.84, 82.47), controlPoint1: CGPointMake(61.19, 66.37), controlPoint2: CGPointMake(54.83, 75.41))
    heartPath.addCurveToPoint(CGPointMake(43.66, 100), controlPoint1: CGPointMake(47.7, 88.05), controlPoint2: CGPointMake(45.31, 93.89))
    heartPath.addLineToPoint(CGPointMake(43.66, 100))
    heartPath.closePath()
    heartPath.miterLimit = 4
    return heartPath
  }
  
  private func club() -> UIBezierPath {
    var clubPath = UIBezierPath()
    clubPath.moveToPoint(CGPointMake(49.98, 0))
    clubPath.addCurveToPoint(CGPointMake(33.97, 6.43), controlPoint1: CGPointMake(43.63, 0), controlPoint2: CGPointMake(38.3, 2.15))
    clubPath.addCurveToPoint(CGPointMake(27.47, 21.7), controlPoint1: CGPointMake(29.63, 10.7), controlPoint2: CGPointMake(27.47, 15.79))
    clubPath.addCurveToPoint(CGPointMake(33.03, 36.86), controlPoint1: CGPointMake(27.47, 26.52), controlPoint2: CGPointMake(29.32, 31.55))
    clubPath.addCurveToPoint(CGPointMake(20.5, 32.56), controlPoint1: CGPointMake(29.82, 34.16), controlPoint2: CGPointMake(26.61, 32.56))
    clubPath.addCurveToPoint(CGPointMake(0, 54.73), controlPoint1: CGPointMake(8.56, 32.56), controlPoint2: CGPointMake(0, 42.42))
    clubPath.addCurveToPoint(CGPointMake(22.12, 77.73), controlPoint1: CGPointMake(0, 67.78), controlPoint2: CGPointMake(9.48, 77.73))
    clubPath.addCurveToPoint(CGPointMake(48.94, 58.48), controlPoint1: CGPointMake(34.78, 77.73), controlPoint2: CGPointMake(44.27, 69.05))
    clubPath.addCurveToPoint(CGPointMake(45.03, 78.92), controlPoint1: CGPointMake(48.73, 67.09), controlPoint2: CGPointMake(47.42, 73.91))
    clubPath.addCurveToPoint(CGPointMake(34, 91.37), controlPoint1: CGPointMake(42.63, 83.93), controlPoint2: CGPointMake(38.96, 88.07))
    clubPath.addCurveToPoint(CGPointMake(15.98, 97.22), controlPoint1: CGPointMake(30.66, 93.59), controlPoint2: CGPointMake(24.65, 95.54))
    clubPath.addLineToPoint(CGPointMake(15.33, 100))
    clubPath.addLineToPoint(CGPointMake(49.98, 100))
    clubPath.addLineToPoint(CGPointMake(84.67, 100))
    clubPath.addLineToPoint(CGPointMake(84.02, 97.22))
    clubPath.addCurveToPoint(CGPointMake(66, 91.37), controlPoint1: CGPointMake(75.35, 95.54), controlPoint2: CGPointMake(69.34, 93.59))
    clubPath.addCurveToPoint(CGPointMake(54.97, 78.92), controlPoint1: CGPointMake(61.04, 88.07), controlPoint2: CGPointMake(57.37, 83.93))
    clubPath.addCurveToPoint(CGPointMake(51.06, 58.48), controlPoint1: CGPointMake(52.58, 73.91), controlPoint2: CGPointMake(51.27, 67.09))
    clubPath.addCurveToPoint(CGPointMake(77.88, 77.73), controlPoint1: CGPointMake(55.73, 69.05), controlPoint2: CGPointMake(65.22, 77.73))
    clubPath.addCurveToPoint(CGPointMake(100, 54.73), controlPoint1: CGPointMake(90.52, 77.73), controlPoint2: CGPointMake(100, 67.78))
    clubPath.addCurveToPoint(CGPointMake(79.5, 32.56), controlPoint1: CGPointMake(100, 42.42), controlPoint2: CGPointMake(91.44, 32.56))
    clubPath.addCurveToPoint(CGPointMake(66.97, 36.86), controlPoint1: CGPointMake(73.4, 32.56), controlPoint2: CGPointMake(70.19, 34.16))
    clubPath.addCurveToPoint(CGPointMake(72.53, 21.7), controlPoint1: CGPointMake(70.68, 31.55), controlPoint2: CGPointMake(72.53, 26.52))
    clubPath.addCurveToPoint(CGPointMake(66.03, 6.43), controlPoint1: CGPointMake(72.53, 15.79), controlPoint2: CGPointMake(70.37, 10.7))
    clubPath.addCurveToPoint(CGPointMake(49.98, 0), controlPoint1: CGPointMake(61.7, 2.15), controlPoint2: CGPointMake(56.34, 0))
    clubPath.closePath()
    clubPath.miterLimit = 4
    return clubPath
  }
  
  private func diamond() -> UIBezierPath {
    var diamondPath = UIBezierPath()
    diamondPath.moveToPoint(CGPointMake(36.5, 0))
    diamondPath.addCurveToPoint(CGPointMake(0, 49.95), controlPoint1: CGPointMake(25.79, 17.66), controlPoint2: CGPointMake(13.49, 34.33))
    diamondPath.addCurveToPoint(CGPointMake(36.5, 100), controlPoint1: CGPointMake(13.51, 65.56), controlPoint2: CGPointMake(26.01, 82.18))
    diamondPath.addCurveToPoint(CGPointMake(73, 49.95), controlPoint1: CGPointMake(46.99, 82.18), controlPoint2: CGPointMake(59.49, 65.56))
    diamondPath.addCurveToPoint(CGPointMake(36.5, 0), controlPoint1: CGPointMake(59.51, 34.33), controlPoint2: CGPointMake(47.21, 17.66))
    diamondPath.closePath()
    diamondPath.miterLimit = 4
    return diamondPath
  }
}
