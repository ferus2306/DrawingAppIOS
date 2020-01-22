//
//  DrawView2.swift
//  GestureRecognizerByFirus
//
//  Created by Firus Hanov on 11/30/19.
//  Copyright © 2019 Firus Hanov. All rights reserved.
//

import UIKit

class DrawView2: ShadowView, UIGestureRecognizerDelegate {
    
    
    var lastPoint: CGPoint!
    var strokeColor: CGColor = UIColor.black.cgColor
    var strokes = [Stroke]()
    var strokeWidth = Float(10.0)
    var isDrawing = false
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !isDrawing else { return }
        isDrawing = true
        guard let touch = touches.first else { return }
        let currentPoint = touch.location(in: self)
        lastPoint = currentPoint
        print(currentPoint)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isDrawing else {return}
        
        guard let touch = touches.first else { return }
        let currentPoint = touch.location(in: self)
        let stroke = Stroke(startPoint: lastPoint, endPoint: currentPoint, color: strokeColor, width: strokeWidth)
        strokes.append(stroke)
        lastPoint = currentPoint
        setNeedsDisplay()
        print(currentPoint)
    }
    
    func erase (){
        strokes=[]
        setNeedsDisplay()
    }
    
    
    func undo (){
        strokes.removeLast()
        setNeedsDisplay()
    }
    
    func oppUndo() {
        strokes.removeFirst()
        setNeedsDisplay()
    }


    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isDrawing else {return}
        isDrawing = false
        guard let touch = touches.first else { return }
        let currentPoint = touch.location(in: self)
        let stroke = Stroke(startPoint: lastPoint, endPoint: currentPoint, color: strokeColor, width: strokeWidth)
        lastPoint = nil
        setNeedsDisplay()
        print(currentPoint)
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        for stroke in strokes {
            context?.beginPath()
            context?.move(to: stroke.startPoint)
            context?.addLine(to: stroke.endPoint)
            context?.setStrokeColor(stroke.color)
            context?.strokePath()
            context?.setLineWidth(CGFloat(stroke.width))
            context?.setLineCap(.round)
        }
    }

}
