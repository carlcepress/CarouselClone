//
//  Settings ViewController.swift
//  CarouselClone
//
//  Created by Cepress, Carl A. on 11/7/15.
//  Copyright © 2015 Cepress, Carl A. All rights reserved.
//

import UIKit

class Settings_ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var settingsImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 320, height: 1250)
        
        scrollView.contentSize = settingsImageView.image!.size
        
       

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressCancel(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
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
