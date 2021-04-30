//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
      let circlePath = UIBezierPath(arcCenter: CGPoint(x: 5,y: 5), radius: CGFloat(10), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)

        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath

        // Change the fill color
        shapeLayer.fillColor = UIColor.red.cgColor
        // You can change the stroke color
        shapeLayer.strokeColor = UIColor.red.cgColor
        // You can change the line width
        shapeLayer.lineWidth = 3.0

        view.layer.addSublayer(shapeLayer)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
