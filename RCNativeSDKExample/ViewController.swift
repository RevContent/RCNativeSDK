//
//  ViewController.swift
//  RCNativeSDKExample
//
//  Created by Apple on 29/04/20.
//  Copyright © 2020 Revcontent. All rights reserved.
//

import UIKit
import RCNativeSDK
class ViewController: UIViewController {
        
       override func viewDidLoad() {
            RCNativeSDK.setup()
        let widget = RCNactiveJSWidgetView.init(frame: self.view.frame)
            widget.setWidgetId(widgetId: "66620")
            widget.setWidgetSubId(widgetSubId:["category":"entertainment", "utm_code":"123456"]);  // It is Optional
         //   widget.setWidgetSubId(widgetId:"66620", widgetSubId:["category":"entertainment", "utm_code":"123456"]);  // You can also use this way.
            self.view.addSubview(widget)
        widget.loadWidget()

       }
      

}

