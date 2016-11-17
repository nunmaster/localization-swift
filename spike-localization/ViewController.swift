//
//  ViewController.swift
//  spike-localization
//
//  Created by Nonthanun Sudlapa on 11/16/2559 BE.
//  Copyright © 2559 nun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func englishButtonDidTouch(_ sender: Any) {
        defaults.set(["en"], forKey: "AppleLanguages")
        defaults.synchronize()
        self.showAlert()
    }
    
    @IBAction func thaiButtonDidTouch(_ sender: Any) {
        defaults.set(["th"], forKey: "AppleLanguages")
        defaults.synchronize()
        self.showAlert()
    }
    
    @IBAction func frenchButtonDidTouch(_ sender: Any) {
        defaults.set(["fr"], forKey: "AppleLanguages")
        defaults.synchronize()
        self.showAlert()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showAlert() {
        
        let alertTitle = NSLocalizedString("alertTitle", comment: "")
        let alertMessage = NSLocalizedString("alertMessage", comment: "")
        let alertButton = NSLocalizedString("alertButton", comment: "")
        
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: alertButton, style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
