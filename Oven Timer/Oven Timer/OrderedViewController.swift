//
//  OrderedViewController.swift
//  Oven Timer
//
//  Created by Jack Devonshire on 12/12/2020.
//

import UIKit

class OrderedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var orderedTable: UITableView!
    var maxTemp = 0
    var newCookingTimes: [(String, Int)] = [] //Format (Item, CookingTime)
    var instructions: [String] = []
    var tempDouble = 0.0
    var tempInt = 0
    var totalTime = 0
    var lastItem: (String, Int) = ("", 0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Get max temperature
        for item in currentRecipe {
            if item.2 > maxTemp {
                maxTemp = item.2
            }
        }
        
        //Set first element of instructions
        instructions.append("Preheat oven to \(maxTemp) degrees")
        
        //Go through list, adjust time to new maximum temperature
        print(currentRecipe)
        for item in currentRecipe {
            tempDouble = (Double(item.2) / Double(maxTemp)) * Double(item.1)
            tempDouble = tempDouble.rounded(.up)
            newCookingTimes.append((item.0, Int(tempDouble)))
        }
        
        //Bubble sort list
        if newCookingTimes.count <= 1 {
            return
        }
        for _ in 0...newCookingTimes.count {
            for value in 1...newCookingTimes.count - 1 {
                if newCookingTimes[value-1].1 < newCookingTimes[value].1 {
                    let largerValue = newCookingTimes[value-1]
                    newCookingTimes[value-1] = newCookingTimes[value]
                    newCookingTimes[value] = largerValue
                }
            }
        }
        
        //Set up instructions list
        instructions.append("Put \(newCookingTimes[0].0) in the oven")
        for x in 0...(newCookingTimes.count - 2) {
            tempInt = newCookingTimes[x].1 - newCookingTimes[x+1].1
            instructions.append("Wait \(tempInt) minutes")
            instructions.append("Put \(newCookingTimes[x+1].1) in the oven")
            totalTime += tempInt
        }
        
        instructions.append("Wait \(newCookingTimes[0].1 - totalTime) minutes")
        instructions.append("Eat that juicy food!")
        
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return instructions.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath)
        cell.textLabel?.text = instructions[indexPath.row]
        return cell
    }
}
