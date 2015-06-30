//
//  AnimationViewController.swift
//  GuestlectureProject
//
//  Created by Adam Wallraff on 6/29/15.
//  Copyright (c) 2015 Adam Wallraff. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {

  @IBOutlet var myRedView: UIView!
  @IBOutlet var myBlueView: UIView!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    
    myRedView.alpha = 0.0
    
    UIView.animateWithDuration(1.5, animations: { () -> Void in
      self.myRedView.alpha = 1.0
      self.myBlueView.backgroundColor = UIColor.greenColor()
    })
    
    let duration = 1.5
    let delay = 1.5
    let springDamping : CGFloat = 0.75
    let springVelocity : CGFloat = 0.9
    
    let newView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    newView.backgroundColor = UIColor.blackColor()
    newView.layer.cornerRadius = 25.0
    newView.alpha = 0.0
    self.view.addSubview(newView)
    
    
    UIView.animateWithDuration(duration, delay: delay, usingSpringWithDamping: springDamping, initialSpringVelocity: springVelocity, options: nil, animations: { () -> Void in
    
      newView.center = CGPoint(x: self.view.center.x, y: self.view.center.y)
      newView.alpha = 1.0
      
      
    }) { (finished) -> Void in
      
      self.myBlueView.alpha = 0.0
      
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
