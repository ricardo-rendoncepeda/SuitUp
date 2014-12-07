# Basic Suit View

In this demo, you will have a quick drawing warm-up in a Playground followed by an introduction to IBDesignable and IBInspectable in the SuitUp project.

The steps here will be explained in the demo, but here are the raw instructions in case you miss a step or get stuck.

## 1) Draw a Circle

Open up **DrawingWarmup.playground** and add the following lines to the bottom of the `drawRect(rect:)` function inside the `CircleView` class:

    CGContextSetFillColorWithColor(context, UIColor.grayColor().CGColor)
    CGContextFillEllipseInRect(context, rect)

Check the output with *Quick Look* in the side-bar. You should see a filled gray circle inside a black view.

## 2) Draw a Triangle

Still in **DrawingWarmup.playground**, add the following lines to the bottom of the `drawRect(rect:)` function inside the `TriangleView` class:

    CGContextSetStrokeColorWithColor(context, UIColor.greenColor().CGColor)
    CGContextSetLineWidth(context, 5.0)
    CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMaxY(rect))
    CGContextAddLineToPoint(context, CGRectGetMidX(rect), CGRectGetMinY(rect))
    CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect))
    CGContextClosePath(context)
    CGContextStrokePath(context)

Check the output with *Quick Look* in the side-bar. You should see a stroked green trianghle inside a black view.

## 3) Draw a Circle... Again.

Open up **SuitView.swift** in **SuitUp.xcodeproj** and add the following lines to the bottom of the `drawRect(rect:)` function, just like in the playground example:

    CGContextSetFillColorWithColor(context, UIColor.grayColor().CGColor)
    CGContextFillEllipseInRect(context, rect)

This time, you can't check the output just yet...

## 4) Add the IBDesignable Attribute

Add the following class attribute just above the `class SuitView: UIView` declaration:

    @IBDesignable

## 5) See Your Live Rendering!

Open up **Main.storyboard** and click on the white *View* in the middle of the *View Controller*. Change its class to **SuitView** in the *Identity Inspector* and let Interface Builder update itself. You should now see a gray circle inside the view, just like your code says so!

## 6) Draw a Spade

Back in **SuitView.swift**, replace the contents of `drawRect(rect:)` with the following:

    var path = spade()
    modifyPath(&path)
    UIColor.blackColor().setFill()
    path.fill()

Check the automatic update in **Main.storyboard**. Pretty neat :]

## 7) Make the Color a Variable

Add the following lines before the `drawRect(rect:)` function in `SuitView`:

    // MARK: Variables
    var color: UIColor = UIColor.blackColor()

Then, replace the following line:

    UIColor.blackColor().setFill()

With this one:

    color.setFill()

## 8) Add the IBInspectable Attribute

Make the `color` variable an *Inspectable* type by adding the following keyword just in front of its `var` declaration:

    @IBInspectable

Replace the `MARK` comment with the following:

    // MARK: Inspectables

## 9) See Your Custom Control!

Open up **Main.storyboard** and switch to the *Attributes Inspector* tab of *SuitView*. Check out your brand new custom control for *Color* and try changing its value. Your path should now fill itself with a new color, just like you programmed it to do so!

## 10) Draw any Suit

Back in **SuitView.swift**, add the following line just above `color`:

    @IBInspectable var suit: String = "Spade"

Then, replace the contents of `drawRect(rect:)` with the following:

    var path: UIBezierPath
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
      path = UIBezierPath()
    }
    modifyPath(&path)
    color.setFill()
    path.fill()

Check the automatic update in **Main.storyboard** and try selecting all the four valid suits by typing the appropriate String. Type a bogus value and you'll see an error!

## 11) Handle Drawing Errors

Make the `path` variable an *optional* like so:`color`:

    var path: UIBezierPath?

Then, replace the `default:` switch case with the following:

    path = nil

Finally, wrap up the drawing code in an `if var` statement:

    if var p = path {
      modifyPath(&p)
      color.setFill()
      p.fill()
    }

Check back on your storyboard to see the error go away :]

## 12) Add a Joker

Add the following inspectable variable just below `color`:

    @IBInspectable var joker: UIImage? = UIImage(named: "Joker")

Then, attempt to unwrap and draw the image by adding the following lines at the end of `drawRect(rect:)`:

    else if let image = joker {
      image.drawInRect(AVMakeRectWithAspectRatioInsideRect(image.size, bounds))
    }

## 13) Test your Dynamic Custom Control

Open up **Main.storyboard** and set an image for your *Joker*. Type in a bogus *Suit* value to activate it and revel in your awesome new UI component!

## 14) That's It!

Congrats, at this time you should have a complete **SuitView**, and learned a lot about IBDesignable and IBInspectable along the way! You are ready to move on to the lab.