import UIKit
import AVFoundation

// MARK: Resources
let jokerImage = UIImage(named: "Joker.png")!
let standardFont = UIFont(name: "HelveticaNeue-CondensedBlack", size: 64.0)!
let rwGrayColor = UIColor(red: 35.0 / 255.0, green: 31.0 / 255.0, blue: 32.0 / 255.0, alpha: 1.0)
let rwGreenColor = UIColor(red: 0.0 / 255.0, green: 110.0 / 255.0, blue: 56.0 / 255.0, alpha: 1.0)

// MARK: Designable
class FrontView: UIView {
  // MARK: Constants
  let labelFont: UIFont = standardFont
  let primaryColor: UIColor = rwGrayColor
  let secondaryColor: UIColor = rwGreenColor
  
  // MARK: Initializers
  init(suit: String, rank: String) {
    super.init(frame: CGRectMake(0, 0, 400, 600))
    
    // Card
    
    // Suit
    
    // Label
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

let front = FrontView(suit: "Heart", rank: "Q")
