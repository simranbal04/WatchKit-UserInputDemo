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
        
        //show the built in UI for accepting user input
        let cannedResponse = ["8:00am","9:40am", "2:00pm",]
                
        presentTextInputController(withSuggestions: cannedResponse, allowedInputMode: .plain) {
                
                 (results) in
            
            
            if (results != nil && results!.count > 0) {
                // 2. write your code to process the person's response
                let userResponse = results?.first as? String
                self.responseLabel.setText(userResponse)
            }

                // Put your code here
        }
    }
    
    
    

}
