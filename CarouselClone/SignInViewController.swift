//
//  SignInViewController.swift
//  CarouselClone
//
//  Created by Cepress, Carl A. on 11/3/15.
//  Copyright © 2015 Cepress, Carl A. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
   
    
    @IBOutlet weak var loginIndicator: UIActivityIndicatorView!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var signinNavBar: UIImageView!
   
    @IBOutlet weak var fieldParentView: UIView!
    var fieldinitialY: CGFloat!
    var fieldoffset: CGFloat!
    @IBOutlet weak var buttonParentView: UIView!
    var buttoninitialY: CGFloat!
    var buttonoffset: CGFloat!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(animated: Bool){
            let transform = CGAffineTransformMakeScale(0.2, 0.2)
            signinNavBar.transform = transform
            fieldParentView.transform = transform
            
            signinNavBar.alpha = 0
            fieldParentView.alpha = 0
        }
        
    override func viewDidAppear(animated: Bool) {
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.fieldParentView.transform = CGAffineTransformIdentity
                self.signinNavBar.transform = CGAffineTransformIdentity
                
                self.fieldParentView.alpha = 1
                self.signinNavBar.alpha = 1
            })
        
       
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)

        scrollView.contentSize = CGSize(width: 320, height: 600)
        
        fieldinitialY = fieldParentView.frame.origin.y
        fieldoffset = -150
        buttoninitialY = buttonParentView.frame.origin.y
        buttonoffset = -500
        
       
        
    }


    @IBAction func didTap(sender: AnyObject) {
            view.endEditing(true)
    
     
    
    }
    
    @IBAction func didTapSignIn(sender: AnyObject) {
        print("user tapped signin button")
        print(emailField.text)
        print(passwordField.text)
        loginIndicator.startAnimating()
        signInButton.selected = true
       
        delay(2) { () -> () in
            self.validateCredentials()
        }
    }
    
    
 func validateCredentials() {
    if emailField.text!.isEmpty {
        print("no email")
        let emailAlert = UIAlertController(title: "Email Required", message: "Please enter your email", preferredStyle: .Alert)
        let emailOkAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
            print("ok email warning")
        })
        emailAlert.addAction(emailOkAction)
        
        presentViewController(emailAlert, animated: true, completion: nil)
    }
    if passwordField.text!.isEmpty{
        print("no password")
        let alert = UIAlertController(title: "Password Required", message: "Please enter your password", preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
            print("ok password warning")
            
        })
        
        alert.addAction(okAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    

    
    
    
    if emailField.text == "Carl" && passwordField.text == "Carl" {
        
//        delay(2, closure: { () -> () in
            self.signInButton.selected = false
            self.performSegueWithIdentifier ( "signInSegue", sender: nil)
//        })
        
    }else{
        
//        delay(2, closure: { () -> () in
            self.loginIndicator.stopAnimating()
            self.signInButton.selected=false
            
            
            print("incorrect credentials")
            let wrongAlert = UIAlertController(title: "Incorrect Credentials", message: "Sorry, we do not recognize your email or password", preferredStyle: .Alert)
            let wrongAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
                print("ok credential warning")
           })
    
    
            wrongAlert.addAction(wrongAction)
            
            self.presentViewController(wrongAlert, animated: true, completion: nil)
        }
        
    }
    

    

//


    func keyboardWillShow(notification: NSNotification!) {
        buttonParentView.frame.origin.y = buttoninitialY + buttonoffset
        
        fieldParentView.frame.origin.y = fieldinitialY + fieldoffset
        }
    
    
    func keyboardWillHide(notification: NSNotification!) {
        buttonParentView.frame.origin.y = buttoninitialY
        
        fieldParentView.frame.origin.y = fieldinitialY

        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    
    @IBAction func didPressBackButton(sender: AnyObject) {
           navigationController?.popToRootViewControllerAnimated(true)
        
    }
    
}
