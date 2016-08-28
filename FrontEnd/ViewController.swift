//
//  ViewController.swift
//  FrontEnd
//
//  Created by Miguel Cuellar on 8/28/16.
//  Copyright © 2016 Miguel Cuellar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    let FBButton: FBSDKLoginButton={
        let button = FBSDKLoginButton()
        button.readPermissions = ["public_profile","user_likes","email"]
        return button
    }()
    
    override func viewDidAppear(animated: Bool) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(FBButton)
        
        FBButton.delegate = self
        FBButton.frame = CGRectMake(FBButton.frame.origin.x, 500,FBButton.frame.size.width,FBButton.frame.size.height)
        FBButton.frame.origin.x=120
        view.backgroundColor = UIColor.cyanColor()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        if(!(result.isCancelled)){
           nextView()
         
        }
        
        
        
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        
    }
    
    func nextView(){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("RouletteViewController") as! RouletteViewController
        self.presentViewController(nextViewController, animated:true, completion:nil)
    }
    
    func loginButtonWillLogin(loginButton: FBSDKLoginButton!) -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

