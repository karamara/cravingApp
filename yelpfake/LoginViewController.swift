//
//  LoginViewController.swift
//  yelpfake
//
//  Created by Paul Kwon on 11/19/15.
//  Copyright © 2015 Paul Kwon. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, CancelButtonDelegate {
    
    //CancelButton Delegate
    func CancelButtonPressed(controller: UIViewController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "RegisterSWay" {
            
            let navigationController = segue.destinationViewController as! UINavigationController
           
            let controller = navigationController.topViewController as! RegisterViewController
            
            controller.cancelButtonDelegate = self
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
