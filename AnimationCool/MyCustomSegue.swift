//
//  MyCustomSegue.swift
//  AnimationCool
//
//  Created by Бекболат Куанышев on 07.04.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import UIKit

class MyCustomSegue: UIStoryboardSegue {

    override func perform() {
        scale()
    }
    
    func scale(){
        let fromVC = self.source
        let toVC = self.destination
        toVC.view.transform = CGAffineTransform(scaleX : 0.1, y: 0.1)
        toVC.view.center = fromVC.view.center
        let containerView = fromVC.view.superview
        containerView?.addSubview(toVC.view)
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseInOut, animations: {
            toVC.view.transform = CGAffineTransform.identity
        }) { (success) in
            fromVC.present(toVC, animated: false, completion: nil)
        }
        
    }
}
