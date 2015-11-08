//
//  TutorialViewController.swift
//  CarouselClone
//
//  Created by Cepress, Carl A. on 11/5/15.
//  Copyright © 2015 Cepress, Carl A. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController,UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        button.alpha = 0
        
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        
        scrollView.delegate = self

    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
    // Get the current page based on the scroll offset
    
    let page : Int = Int(round(scrollView.contentOffset.x / 320))
    
    // Set the current page, so the dots will update
    pageControl.currentPage = page
    
        if page == 3 {
            pageControl.hidden = true
         UIView.animateWithDuration(0.3
            , animations: { () -> Void in
                 self.button.alpha = 1
         })
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
