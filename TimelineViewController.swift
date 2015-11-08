//
//  TimelineViewController.swift
//  CarouselClone
//
//  Created by Cepress, Carl A. on 11/7/15.
//  Copyright © 2015 Cepress, Carl A. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 1564)
        
        
        
//        introScrollView.contentSize = introImageView.image!.size

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressConversations(sender: UIButton) {
        
        performSegueWithIdentifier("cSegue", sender: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressSettings(sender: AnyObject) {performSegueWithIdentifier("settingsSegue", sender: nil)
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
