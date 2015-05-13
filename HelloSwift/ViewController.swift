//
//  ViewController.swift
//  HelloSwift
//
//  Created by Yuto Kumagai on 2015/05/13.
//  Copyright (c) 2015年 Yuto Kumagai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextfield: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    var counter = 0
    var number = 1
    var flag = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = counter.description
        myTextfield.text = "1"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func upBtn(sender: AnyObject) {
        if(counter < 9 && flag == 1){
            counter = counter + myTextfield.text.toInt()!
        }
        myLabel.text = counter.description
    }

    @IBAction func downBtn(sender: AnyObject) {
        if(counter > 0 && flag == 1){
         counter = counter - myTextfield.text.toInt()!
        }
        myLabel.text = counter.description
    }

    @IBAction func resetBtn(sender: AnyObject) {
        counter = 0
        myLabel.text = counter.description
    }
    
    @IBAction func changeSwitch(sender: UISwitch) {
        if sender.on == true {
            flag = 1
        }else{
            flag = 0
        }
        println(flag)
    }
}

