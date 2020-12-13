//
//  AddItemViewController.swift
//  Oven Timer
//
//  Created by Jack Devonshire on 12/12/2020.
//

import UIKit

class AddItemViewController: UIViewController {

    @IBOutlet weak var itemName: UITextField!
    @IBOutlet weak var cookingTime: UITextField!
    @IBOutlet weak var cookingTemp: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "itemAdded" {
            //Empty field checks
            
            let newItemName = itemName.text
            let newCookingTime = cookingTime.text
            let newCookingTemp = cookingTemp.text
            
            guard newItemName != "" else {return}
            guard newCookingTime != "" else {return}
            guard newCookingTemp  != "" else {return}
            
            currentRecipe.append((newItemName!,Int(newCookingTime!)!, Int(newCookingTemp!)!))
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
