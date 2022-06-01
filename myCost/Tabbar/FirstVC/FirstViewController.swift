//
//  FirstViewController.swift
//  myCost
//
//  Created by Анна Тибекина on 28.05.2022.
//

import UIKit
import RealmSwift
import Foundation


class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    let realm = try! Realm()
    
    let costsArray = ["🥬На еду", "🩺На здоровье", "🥎На спорт", "🏡На жилье", "🎭На досуг", "На косметику", "🐶На питомца", "🚞На транспорт", "☀️На благотворительность", "👩🏼‍💻На обучение"]

    var costs: [String] = []
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return costsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FirstTableViewCell
        cell.labelCost.text = costsArray[indexPath.row]
        cell.textField.placeholder = "0"
        cell.textField.delegate = self
        
        
        
       return cell
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
   func textFieldDidEndEditing(_: UITextField, reason: UITextField.DidEndEditingReason)  {
        costs.append(textInputContextIdentifier?.description ?? "0")
        
        print("текст изменен")
        print(costs)
    }
    



}
