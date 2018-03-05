//
//  DrawPatternView.swift
//  DrawFrameWork
//
//  Created by Perry Davies on 05/03/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

import UIKit
@IBDesignable
class DrawPatternView: UIView {

    @IBInspectable var lineWidth:CGFloat = 1.0
    @IBInspectable var lineColor:UIColor = UIColor.white
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        let dashArray: [CGFloat] = [2,3,4,2]
        
        context?.setLineWidth(lineWidth)
        context?.setStrokeColor(lineColor.cgColor)
        context?.setLineDash(phase: 3, lengths: dashArray)
        context?.move(to: CGPoint(x:10, y: 200))
        context?.addQuadCurve(to: CGPoint(x:300, y:200), control: CGPoint(x:150, y:10))
        context?.strokePath()
    }
    

}
