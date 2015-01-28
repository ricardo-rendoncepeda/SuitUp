![image](3-LabImages/3.png =680x)

# It's Going To Be Legen...

At this point, you have a solid Suit View that you can customize to display the four French suits and a Joker image.

But what about the **card** itself? What will these suits be displayed on?

Furthermore, the distinctive feature of any deck of cards is the visual design of the **back**.

You’ve already begun to *suit up*, so let’s use this lab time to make this deck *…dary!*

## Part 1: Card View

Open up **CardView.Swift** and you won't see anything but an empty `UIView` subclass... so let's start here!

First of all, make this a designable class by adding the following class attribute just above the line `class CardView: UIView`:

	@IBDesignable
	
Add the following code inside the class declaration:

	// MARK: Inspectables




	override func prepareForInterfaceBuilder() {























