//
//  FirstViewController.swift
//  VGift
//
//  Copyright © 2018 Aruna Srinivasalu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var giftCardSendController: GiftCardSendController!
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        giftCardSendController = GiftCardSendController()
        giftCardSendController.sendGift.senderName = "Mary Smith"
        giftCardSendController.sendGift.senderEmail = "Mary.smith@visa.com"
        giftCardSendController.sendGift.senderPhone = "7200000012"
        giftCardSendController.sendGift.deliveryDate = deliveryDate.date as NSDate
        giftCardSendController.sendGift.receiverName = recipientName.text
        giftCardSendController.sendGift.receiverEmail = recipientEmail.text
        
        giftCardSendController.sendGift.receiverPhone = recepientPhone.text
       giftCardSendController.sendGift.giftAmount = giftAmount.text
        
        
        
        if let cardSelectorViewController = segue.destination as? CardSelectorViewController {
            cardSelectorViewController.giftCardSendController = giftCardSendController
        }
        
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

