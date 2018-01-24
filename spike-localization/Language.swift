//
//  Language.swift
//  spike-localization
//
//  Created by Nonthanun Sudlapa on 01/24/2561 BE.
//  Copyright © 2561 nun. All rights reserved.
//
import UIKit

let APPLE_LANGUAGE_KEY = "AppleLanguages"
let APPLE_I18N_LANGUAGE_KEY = "i18n_language"


class Language {
    class func currentAppleLanguage() -> String{
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        let current = langArray.firstObject as! String
        let endIndex = current.startIndex
        let currentWithoutLocale = String(current[current.index(endIndex, offsetBy: 2)...])
        
        return currentWithoutLocale
    }
    
    class func currentAppleLanguageFull() -> String{
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        let current = langArray.firstObject as! String
        return current
    }
    
    
    class func setAppleLAnguageTo(lang: String) {
        let userdef = UserDefaults.standard
        userdef.set([lang,currentAppleLanguage()], forKey: APPLE_LANGUAGE_KEY)
        userdef.set([lang,currentAppleLanguage()], forKey: APPLE_I18N_LANGUAGE_KEY)
        userdef.synchronize()
    }
}
