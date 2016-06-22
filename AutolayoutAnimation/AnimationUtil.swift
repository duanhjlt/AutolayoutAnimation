//
//  AnimationUtil.swift
//  AutolayoutAnimation
//
//  Created by duanhongjin on 16/6/22.
//  Copyright © 2016年 duanhongjin. All rights reserved.
//

import UIKit

class AnimationUtil: NSObject {
    static func titleLabelAnimation(lable: UILabel) {
        UIView.animateWithDuration(1.5) {
            lable.transform = CGAffineTransformIdentity
        }
    }
    
    static func textFieldBottomLineAnimation(constraint: NSLayoutConstraint, view: UIView) {
        constraint.constant = 345
        UIView.animateWithDuration(1.5) { 
            view.layoutIfNeeded()
        }
    }
    
    static func photoIconAnimation(photoIcon: UIImageView) {
        UIView.animateWithDuration(1.5) {
            photoIcon.transform = CGAffineTransformIdentity
        }
    }
    
    static func tipsLabelMaskAnimation(view: UIView, beginTime:NSTimeInterval) {
        let beginPath: CGPathRef = UIBezierPath(rect: CGRectMake(0, 0, 0, view.bounds.size.height)).CGPath
        let endPath: CGPathRef = UIBezierPath(rect: CGRectMake(0, 0, view.bounds.size.width, view.bounds.size.height)).CGPath
        
        let layer: CAShapeLayer = CAShapeLayer()
        layer.fillColor = UIColor.whiteColor().CGColor
        layer.path = beginPath
        
        view.layer.mask = layer
        
        let animation: CABasicAnimation = CABasicAnimation(keyPath: "path")
        animation.duration = 1
        animation.beginTime = CACurrentMediaTime() + beginTime
        animation.fromValue = layer.path
        animation.toValue = endPath
        animation.removedOnCompletion = false
        animation.fillMode = kCAFillModeForwards
        
        layer.addAnimation(animation, forKey: "shapeLayerPath")
    }
}
