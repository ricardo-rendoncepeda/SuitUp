//
//  FrontView.swift
//  SuitUp
//
//  Created by Ricardo on 11/25/14.
//  Copyright (c) 2014 RayWenderlich. All rights reserved.
//

import UIKit

@IBDesignable
class FrontView: UIView {
  // MARK: Inspectables
  @IBInspectable var primaryColor: UIColor = UIColor(red: 35.0 / 255.0, green: 31.0 / 255.0, blue: 32.0 / 255.0, alpha: 1.0)
  @IBInspectable var secondaryColor: UIColor = UIColor(red: 0.0 / 255.0, green: 110.0 / 255.0, blue: 56.0 / 255.0, alpha: 1.0)
  @IBInspectable var rank: String = "A"
  @IBInspectable var suit: String = "Spade"
  
  // MARK: IB code
  override func prepareForInterfaceBuilder() {
    // Self
    backgroundColor = UIColor.whiteColor()
    
    // Validation
    let ranks = ["A", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    let suits = ["Spade", "Heart", "Club", "Diamond"]
    if(!contains(ranks, rank) || !contains(suits, suit)) {
      return
    }
    
    // Card
    let cardView = CardView(frame: frame)
    cardView.prepareForInterfaceBuilder()
    cardView.backgroundColor = UIColor.whiteColor()
    addSubview(cardView)
    
    // Suit
    let suitView = SuitView(frame: CGRectMake(0, 0, 280, 280))
    suitView.suit = suit
    suitView.color = primaryColor
    suitView.backgroundColor = UIColor.clearColor()
    addSubview(suitView)
    suitView.center = center
    
    // Label
    let rankLabel = UILabel()
    rankLabel.text = rank
    rankLabel.textColor = secondaryColor
    rankLabel.font = UIFont(name: "Bitter-Bold", size: 64.0)!
    rankLabel.sizeToFit()
    addSubview(rankLabel)
    rankLabel.center = center
  }
}
