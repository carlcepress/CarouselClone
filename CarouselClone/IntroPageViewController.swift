//
//  IntroPageViewController.swift
//  CarouselClone
//
//  Created by Cepress, Carl A. on 11/3/15.
//  Copyright © 2015 Cepress, Carl A. All rights reserved.
//

import UIKit

class IntroPageViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        introScrollView.contentSize = CGSize(width: 320, height: 1136)
        
        introScrollView.contentSize = introImageView.image!.size
        
        introScrollView.delegate = self
        
        introScrollView.sendSubviewToBack(introImageView)

        // Do any additional setup after loading the view.
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
        
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressSignIn(sender: AnyObject) {
        performSegueWithIdentifier("signInSegue", sender: nil)
        
    }
    
    func scrollViewDidScroll(introScrollView: UIScrollView) {
        var offset = CGFloat(introScrollView.contentOffset.y)

//TILE 1 MOVEMENT
        var tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        var ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        var scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        var rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile1View.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        tile1View.transform = CGAffineTransformScale(tile1View.transform, CGFloat(scale), CGFloat(scale))
        tile1View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation) * M_PI / 180))
        
//TILE 2 MOVEMENT
        var tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 75, r2Max: 0)
        var ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -240, r2Max: 0)
        var scale2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        var rotation2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile2View.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        tile2View.transform = CGAffineTransformScale(tile2View.transform, CGFloat(scale2), CGFloat(scale2))
        tile2View.transform = CGAffineTransformRotate(tile2View.transform, CGFloat(Double(rotation2) * M_PI / 180))
//TILE 3 MOVEMENT
        var tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        var ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -415, r2Max: 0)
        var scale3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        var rotation3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min:10, r2Max: 0)
        
        tile3View.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        tile3View.transform = CGAffineTransformScale(tile3View.transform, CGFloat(scale3), CGFloat(scale3))
        tile3View.transform = CGAffineTransformRotate(tile3View.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
//TILE 4 MOVEMENT
        var tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 120, r2Max: 0)
        var ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -408, r2Max: 0)
        var scale4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        var rotation4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min:10, r2Max: 0)
        
        tile4View.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        tile4View.transform = CGAffineTransformScale(tile4View.transform, CGFloat(scale4), CGFloat(scale4))
        tile4View.transform = CGAffineTransformRotate(tile4View.transform, CGFloat(Double(rotation4) * M_PI / 180))
//TILE 5 MOVEMENT
        var tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -130, r2Max: 0)
        var ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -510, r2Max: 0)
        var scale5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min:10, r2Max: 0)
        
        tile5View.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        tile5View.transform = CGAffineTransformScale(tile5View.transform, CGFloat(scale5), CGFloat(scale5))
        tile5View.transform = CGAffineTransformRotate(tile5View.transform, CGFloat(Double(rotation5) * M_PI / 180))
//TILE 6 MOVEMENT
        var tx6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -110, r2Max: 0)
        var ty6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -500, r2Max: 0)
        var scale6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min:-10, r2Max: 0)
        
        tile6View.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        tile6View.transform = CGAffineTransformScale(tile6View.transform, CGFloat(scale6), CGFloat(scale6))
        tile6View.transform = CGAffineTransformRotate(tile6View.transform, CGFloat(Double(rotation6) * M_PI / 180))
        
        
        
        
        print ("content offset: \(introScrollView.contentOffset.y)")
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


