//
//  ViewController.swift
//  Discrete Mathematics
//
//  Created by Chris on 6/2/15.
//  Copyright (c) 2015 Chris. All rights reserved.
//  controller

import UIKit

class BooleanLogicViewController: UIViewController {
    
    
    
    // local instance variables
    @IBOutlet weak var elementCount: UILabel!
    
    
    // MARK: - IBActions
    // parenthisis
    @IBAction func parenthesis(sender: UIButton) {
    }

    // not operator
    @IBAction func not(sender: UIButton) {
    }
   
    
    // xor
    @IBAction func xor(sender: UIButton) {
    }
  
    
    // p-s
    @IBAction func ps(sender: UIButton) {
    }
   
    // and
    @IBAction func and(sender: UIButton) {
    }
    
    // or
    @IBAction func or(sender: UIButton) {
    }
    
    // number of elements determined by stepper 1-3 wrapped
    @IBAction func stepper(sender: UIStepper) {
        elementCount.text = String(Int(sender.value))
    }
    
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
   

    
}

