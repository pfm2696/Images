//
//  ViewController.swift
//  Images
//
//  Created by Peter & Liz  on 2/12/15.
//  Copyright (c) 2015 P&L Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var card: UIImageView!
    
    var counter = 1;
    
    var timer = NSTimer()
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        counter++
        
        if (counter==11){
        
            counter = 1
            
        }
        
        card.image = UIImage(named: "frame\(counter).png")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector : Selector("result"), userInfo: nil, repeats: true)
    }
    
    func result() {
        
        counter++
        
        if (counter==11){
            
            counter = 1
            
        }
        
        card.image = UIImage(named: "frame\(counter).png")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        
        card.frame = CGRectMake(0, 0, 100, 100)
        
    }

    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1, animations: {
        
            self.card.frame = CGRectMake(100, 150, 100, 200)
        })
    }
}


