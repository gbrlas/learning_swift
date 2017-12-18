//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let liveViewFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let liveView = UIView(frame: liveViewFrame)

liveView.backgroundColor = UIColor.white
PlaygroundPage.current.liveView = liveView

let smallFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
let square = UIView(frame: smallFrame)
square.backgroundColor = .purple

liveView.addSubview(square)

/* UIView.animate(withDuration: 3.0, animations: {
    square.backgroundColor = .orange
    square.frame = CGRect(x: 150, y: 150, width: 200, height: 200)
}) { (_) in
    UIView.animate(withDuration: 3.0, animations: {
        square.backgroundColor = .purple
        square.frame = smallFrame
    })
} */

/* UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat], animations: {
    square.backgroundColor = .orange
    square.frame = CGRect(x: 400, y: 400, width: 100, height: 100)
}) { (_) in
    UIView.animate(withDuration: 3.0, animations: {
        square.backgroundColor = .purple
        square.frame = smallFrame
    })
} */

UIView.animate(withDuration: 3.0, animations: {
    let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    let rotateTransform = CGAffineTransform(rotationAngle: .pi)
    let translateTransform = CGAffineTransform(translationX: 350, y: 350)
    
    let comboTranform = scaleTransform.concatenating(rotateTransform).concatenating(translateTransform)
    
    square.transform = comboTranform
    square.backgroundColor = .orange
}) { (_) in
    UIView.animate(withDuration: 3.0, animations: {
        square.transform = CGAffineTransform.identity
    })
}
