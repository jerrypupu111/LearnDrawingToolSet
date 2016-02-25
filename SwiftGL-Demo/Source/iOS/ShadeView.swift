//
//  ShadeView.swift
//  SwiftGL
//
//  Created by jerry on 2015/8/18.
//  Copyright © 2015年 Jerry Chan. All rights reserved.
//

import UIKit
class ShadeView :UIView{
    var cropArea:CGRect!
    
    override init(frame:CGRect)
    {
        super.init(frame: frame)
        self.opaque = false
        alpha = 0.5
    }
    
    required init?(coder aDecoder: NSCoder) {        
        super.init(coder: aDecoder)
    }
    
    func setCropArea(_clearArea: CGRect) {
        cropArea = _clearArea
        self.setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        
        UIColor.blackColor().setFill()
        UIRectFill(rect)
        //let intersection = CGRectIntersection(cropArea, rect)
        
        UIColor.clearColor().setFill()
        UIRectFill(cropArea)
        //let layer = self.blurredImageView.layer;
        
        /*
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0);
        let c = UIGraphicsGetCurrentContext();
        CGContextAddRect(c, self.cropArea);
        CGContextAddRect(c, rect);
        
        CGContextEOClip(c);
        CGContextSetFillColorWithColor(c, UIColor.blackColor().CGColor);
        
        CGContextFillRect(c, rect);
        UIGraphicsEndImageContext();
*/
        /*
        let maskim = UIGraphicsGetImageFromCurrentImageContext();
        
        
        
        let mask = layer
        mask.frame = rect;
        mask.contents = maskim.CGImage;
        layer.mask = mask;
        */
        

    }
}