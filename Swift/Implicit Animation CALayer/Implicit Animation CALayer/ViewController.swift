//
//  ViewController.swift
//  Implicit Animation CALayer
//
//  Created by Tran Viet on 8/20/15.
//  Copyright (c) 2015 Viettranx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    var testLayer:CALayer!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        testLayer = CALayer()
        testLayer.frame = self.testView.bounds
        self.testView.layer .addSublayer(testLayer)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func redTouched(sender: AnyObject) {
        testLayer.backgroundColor = UIColor.redColor().CGColor
    }
    
    @IBAction func greenTouched(sender: AnyObject) {
        testLayer.backgroundColor = UIColor.greenColor().CGColor
    }
    
    @IBAction func blueTouched(sender: AnyObject) {
        testLayer.backgroundColor = UIColor.blueColor().CGColor
    }
    
}

