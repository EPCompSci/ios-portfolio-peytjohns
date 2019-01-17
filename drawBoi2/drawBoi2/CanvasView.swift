//
//  CanvasView.swift
//  drawBoi2
//
//  Created by 90303090 on 10/5/18.
//  Copyright © 2018 90303090. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    var lineColor:UIColor!
    var lineWidth:CGFloat!
    var path:UIBezierPath!
    var touchPoint:CGPoint!
    var startPoint:CGPoint!
    var buttonPurp = false
    var buttonBlack = false
    var buttonGreen = false
    var buttonBlue = false
    var buttonRed = false
    var buttonOrange = false
    var buttonYellow = false
    
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = false
        
        if ( buttonPurp == true){
            lineColor = UIColor.purple
            
        }else if (buttonBlack == true) {
            lineColor = UIColor.black
            
        }else if (buttonGreen == true) {
            lineColor = UIColor.green
            
        }else if (buttonBlue == true) {
            lineColor = UIColor.blue
            
        }else if (buttonRed == true) {
            lineColor = UIColor.red
            
        }else if (buttonOrange == true) {
            lineColor = UIColor.orange
            
        }else if (buttonYellow == true) {
            lineColor = UIColor.yellow
            
        }else{
            lineColor = UIColor.black
        }
        
        lineWidth = 10
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        startPoint = touch?.location(in: self)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        touchPoint = touch?.location(in: self)
        
        path = UIBezierPath()
        path.move(to: startPoint)
        path.addLine(to: touchPoint)
        startPoint = touchPoint
        drawShapeLayer()
        
    }
    
    
    func drawShapeLayer() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.lineWidth = lineWidth
        shapeLayer.lineCap = kCALineCapRound
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = lineColor.cgColor
        self.layer.addSublayer(shapeLayer)
        self.setNeedsDisplay()
        
        
    }
    
    func clearCanvas() {
        path.removeAllPoints()
        self.layer.sublayers = nil
        self.setNeedsDisplay()
    }
    func colorChangerBlack(){
        buttonPurp = false
        buttonGreen = false
        buttonBlue = false
        buttonRed = false
        buttonOrange = false
        buttonYellow = false
        buttonBlack = true
        lineColor = UIColor.black
        
    }
    func colorChangerPurp(){
        buttonBlack = false
        buttonGreen = false
        buttonBlue = false
        buttonRed = false
        buttonOrange = false
        buttonYellow = false
        buttonPurp = true
        lineColor = UIColor.purple
        
    }
    func colorChangerGreen(){
        buttonBlack = false
        buttonPurp = false
        buttonBlue = false
        buttonRed = false
        buttonOrange = false
        buttonYellow = false
        buttonGreen = true
        lineColor = UIColor.green
        
    }
    func colorChangerBlue(){
        buttonBlack = false
        buttonPurp = false
        buttonGreen = false
        buttonRed = false
        buttonOrange = false
        buttonYellow = false
        buttonBlue = true
        lineColor = UIColor.blue
        
    }
    func colorChangerRed(){
        buttonBlack = false
        buttonPurp = false
        buttonGreen = false
        buttonBlue = false
        buttonOrange = false
        buttonYellow = false
        buttonRed = true
        lineColor = UIColor.red
        
    }
    func colorChangerOrange(){
        buttonBlack = false
        buttonPurp = false
        buttonGreen = false
        buttonBlue = false
        buttonRed = false
        buttonYellow = false
        buttonOrange = true
        lineColor = UIColor.orange
        
    }
    func colorChangerYellow(){
        buttonBlack = false
        buttonPurp = false
        buttonGreen = false
        buttonBlue = false
        buttonRed = false
        buttonOrange = false
        buttonYellow = true
        lineColor = UIColor.yellow
        
    }
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}

