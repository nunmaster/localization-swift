//
//  ViewController.swift
//  spike-localization
//
//  Created by Nonthanun Sudlapa on 11/16/2559 BE.
//  Copyright © 2559 nun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func englishButtonDidTouch(_ sender: Any) {
        Language.setAppleLAnguageTo(lang: "en")
        showAlert()
        reload()
    }
    
    @IBAction func thaiButtonDidTouch(_ sender: Any) {
        Language.setAppleLAnguageTo(lang: "th")
        self.showAlert()
        showAlert()
        reload()
    }
    
    @IBAction func frenchButtonDidTouch(_ sender: Any) {
        Language.setAppleLAnguageTo(lang: "fr")
        showAlert()
        reload()
    }
    
    func reload() {
        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        rootviewcontroller.rootViewController = self.storyboard?.instantiateViewController(withIdentifier: "root")
    }
    
    func showAlert() {
        let alertMessage = NSLocalizedString("alertMessage", comment: "")
        let alertButton = NSLocalizedString("alertButton", comment: "")
        
        let alert = UIAlertController(title: nil, message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: alertButton, style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
