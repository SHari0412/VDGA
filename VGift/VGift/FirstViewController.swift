//
//  FirstViewController.swift
//  VGift
//
//  Copyright © 2018 Aruna Srinivasalu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var deliveryDatePicker: UIDatePicker!
    
    @IBOutlet weak var recipientName: UITextField!
    
    @IBOutlet weak var recepientPhone: UITextField!
    
    @IBOutlet weak var giftAmount: UITextField!
    @IBOutlet weak var recipientEmail: UITextField!
    
    @IBOutlet weak var deliveryDate: UIDatePicker!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        self.navigationController?.navigationBar.tintColor = UIColor.blue
        deliveryDatePicker.minimumDate = NSDate() as Date
    }
    
    @IBAction func next(_ sender: Any) {
        
        //let defaults =  NSUserDefaults.
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

