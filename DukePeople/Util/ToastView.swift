//
//  ToastView.swift
//  Hugo
//
//  Created by Hugooooo on 9/20/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showToast(message : String, font: UIFont) {
        
        let toastLabel = UILabel(frame: CGRect(x: (self.view.frame.size.width - 300) / 2, y: self.view.frame.size.height-300-230, width: 300, height: 230))
        toastLabel.backgroundColor = UIColor.white.withAlphaComponent(1.0)
        toastLabel.textColor = UIColor.black
        toastLabel.font = font
        toastLabel.textAlignment = .center
        toastLabel.numberOfLines = 15
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 0.8, delay: 4, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    } }
