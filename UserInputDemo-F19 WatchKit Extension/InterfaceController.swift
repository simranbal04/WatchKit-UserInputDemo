//
//  InterfaceController.swift
//  UserInputDemo-F19 WatchKit Extension
//
//  Created by MacStudent on 2019-10-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    // MARK: Outlets
    // -----------------
    @IBOutlet weak var responseLabel: WKInterfaceLabel!
    
    // MARK: Default Functions
    // -----------------
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    // MARK: Custom Functions & Actions
    // -------------------------------
    @IBAction func replyButtonPressed() {
        print("Reply button pressed")
    }
    
    
    

}
