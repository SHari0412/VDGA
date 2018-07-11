//
//  FirstViewController.swift
//  VGift
//
//  Created by Sathya Hirudayaswamy on 6/18/18.
//  Copyright © 2018 Aruna Srinivasalu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var deliveryDatePicker: UIDatePicker!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        self.navigationController?.navigationBar.tintColor = UIColor.blue
        deliveryDatePicker.minimumDate = NSDate() as Date
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

