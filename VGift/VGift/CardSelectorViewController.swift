//
//  CardSelectorViewController.swift
//  VGift
//
//  Created by Sathya Hirudayaswamy on 6/18/18.
//  Copyright © 2018 Aruna Srinivasalu. All rights reserved.
//

import UIKit

class CardSelectorViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var collectionsView: UITableView!
    
    
    let occasions = GiftCardSelector.occasions
        
        

    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        
        return occasions.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        return occasions[section].occasion.rawValue
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return occasions[section].cardImageName.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardImage", for: indexPath) as! CustomCardImageViewTableViewCell
        
        cell.messageText?.text = occasions[indexPath.section].message
        cell.cardImageDisplay?.image = UIImage(named: occasions[indexPath.section].cardImageName[indexPath.row])
        return cell
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? GiftMessageViewController {
            
            if let cell = sender as? CustomCardImageViewTableViewCell, let indexPath = collectionsView.indexPath(for: cell) {
            
        destination.selectedImage = UIImageView(image: UIImage(named: occasions[indexPath.section].cardImageName[indexPath.row]))
                
//                destination.selectedImage.image! = UIImage(named: occasions[indexPath.section].cardImageName[indexPath.row])!
//                destination.giftMessage.text! = occasions[indexPath.section].message
        }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Select Card Image"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
