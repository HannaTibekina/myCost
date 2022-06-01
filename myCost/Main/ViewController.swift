//
//  ViewController.swift
//  myCost
//
//  Created by Анна Тибекина on 28.05.2022.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "TabbarStoryboard", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "TabbarStoryboard")
        self.navigationController?.pushViewController(vc, animated: true)
    }


}

