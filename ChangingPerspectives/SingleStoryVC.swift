//
//  SingleStoryVC.swift
//  ChangingPerspectives
//
//  Created by Devin Reich on 3/4/20.
//  Copyright © 2020 reich. All rights reserved.
//

import UIKit

class SingleStoryVC: UIViewController {

  @IBOutlet weak var button: UIButton!
  override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = button.frame.height / 2
    }
    

  @IBAction func nextScreen(_ sender: Any) {
    if let vc = storyboard?.instantiateViewController(withIdentifier: "FinalThoughts") {
      self.present(vc, animated: true, completion: nil)
    }
  }
}
