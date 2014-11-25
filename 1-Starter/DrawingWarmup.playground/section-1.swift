import UIKit

class CircleView: UIView {
  override func drawRect(rect: CGRect) {
    let context = UIGraphicsGetCurrentContext()
  }
}

class TriangleView: UIView {
  override func drawRect(rect: CGRect) {
    let context = UIGraphicsGetCurrentContext()
  }
}

let circle = CircleView(frame: CGRectMake(0, 0, 280, 280))
let triangle = TriangleView(frame: CGRectMake(0, 0, 280, 280))
