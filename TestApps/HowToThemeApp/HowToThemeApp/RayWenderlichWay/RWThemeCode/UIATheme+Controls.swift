//
//  UIATheme+Controls.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/22/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

extension UIATheme {
    
    internal func cusomizedStepper() {
        let controlBackground = UIImage(named: "controlBackground")?
          .withRenderingMode(.alwaysTemplate)
          .resizableImage(withCapInsets: UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3))

//        let controlSelectedBackground = UIImage(named: "controlSelectedBackground")?
//          .withRenderingMode(.alwaysTemplate)
//          .resizableImage(withCapInsets: UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3))
        
        UIStepper.appearance().setBackgroundImage(controlBackground, for: .normal)
        UIStepper.appearance().setBackgroundImage(controlBackground, for: .disabled)
        UIStepper.appearance().setBackgroundImage(controlBackground, for: .highlighted)
        UIStepper.appearance().setDecrementImage(UIImage(named: "fewerPaws"), for: .normal)
        UIStepper.appearance().setIncrementImage(UIImage(named: "morePaws"), for: .normal)
        
        UIStepper.appearance().tintColor = self.mainColor
    }
    
    internal func cusomizedSlider() {
        UISlider.appearance().setThumbImage(UIImage(named: "sliderThumb"), for: .normal)
        UISlider.appearance().setMaximumTrackImage(UIImage(named: "maximumTrack")?
          .resizableImage(withCapInsets:UIEdgeInsets(top: 0, left: 0.0, bottom: 0, right: 6.0)), for: .normal)
            
        UISlider.appearance().setMinimumTrackImage(UIImage(named: "minimumTrack")?
          .withRenderingMode(.alwaysTemplate)
          .resizableImage(withCapInsets:UIEdgeInsets(top: 0, left: 6.0, bottom: 0, right: 0)), for: .normal)
    }
    
    internal func cusomizedSwitch() {
        UISwitch.appearance().onTintColor = mainColor.withAlphaComponent(0.3)
        UISwitch.appearance().thumbTintColor = mainColor
    }
}
