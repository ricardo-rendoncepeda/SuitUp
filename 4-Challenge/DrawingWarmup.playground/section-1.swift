import UIKit

class CircleView: UIView {
  override func drawRect(rect: CGRect) {
    let context = UIGraphicsGetCurrentContext()
    CGContextSetFillColorWithColor(context, UIColor.grayColor().CGColor)
    CGContextFillEllipseInRect(context, rect)
  }
}

class TriangleView: UIView {
  override func drawRect(rect: CGRect) {
    let context = UIGraphicsGetCurrentContext()
    CGContextSetStrokeColorWithColor(context, UIColor.greenColor().CGColor)
    CGContextSetLineWidth(context, 5.0)
    CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMaxY(rect))
    CGContextAddLineToPoint(context, CGRectGetMidX(rect), CGRectGetMinY(rect))
    CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect))
    CGContextClosePath(context)
    CGContextStrokePath(context)
  }
}

let circle = CircleView(frame: CGRectMake(0, 0, 280, 280))
let triangle = TriangleView(frame: CGRectMake(0, 0, 280, 280))
