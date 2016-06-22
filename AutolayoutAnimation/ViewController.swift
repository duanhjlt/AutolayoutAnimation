//
//  ViewController.swift
//  AutolayoutAnimation
//
//  Created by duanhongjin on 16/6/22.
//  Copyright © 2016年 duanhongjin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topTitleLabel: UILabel!
    @IBOutlet weak var bottomTitleLabel: UILabel!
    @IBOutlet weak var textFieldBottomLineConstaint: NSLayoutConstraint!
    @IBOutlet weak var photoIcon: UIImageView!
    @IBOutlet weak var topTipsLabel: UILabel!
    @IBOutlet weak var bottomTipsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        topTitleLabel.transform = CGAffineTransformMakeTranslation(0, -200)
        bottomTitleLabel.transform = CGAffineTransformMakeTranslation(0, -200)
        textFieldBottomLineConstaint.constant = 0
        photoIcon.transform = CGAffineTransformMakeTranslation(-200, 0)
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        AnimationUtil.titleLabelAnimation(topTitleLabel)
        AnimationUtil.titleLabelAnimation(bottomTitleLabel)
        AnimationUtil.textFieldBottomLineAnimation(textFieldBottomLineConstaint, view: view)
        AnimationUtil.photoIconAnimation(photoIcon)
        AnimationUtil.tipsLabelMaskAnimation(topTipsLabel, beginTime: 0)
        AnimationUtil.tipsLabelMaskAnimation(bottomTipsView, beginTime: 1)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }
}
