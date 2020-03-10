//
//  Prompt.swift
//  ChangingPerspectives
//
//  Created by Devin Reich on 3/4/20.
//  Copyright © 2020 reich. All rights reserved.
//

import UIKit

class Prompt: UIViewController {

  @IBOutlet weak var infoLabel: UILabel!
  @IBOutlet weak var b1: UIButton!
  @IBOutlet weak var b2: UIButton!
  @IBOutlet weak var shadowView: UIView!
  @IBOutlet weak var nextScreenButton: UIButton!
  override func viewDidLoad() {
        super.viewDidLoad()

        b1.layer.cornerRadius = b1.frame.height / 2
        b2.layer.cornerRadius = b2.frame.height / 2
        nextScreenButton.isHidden = true
        shadowView.isHidden = true
        infoLabel.isHidden = true
    }
  
  @IBAction func nextScreen(_ sender: Any) {
    if let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") {
      self.present(vc, animated: true, completion: nil)
    }
  }
  @IBAction func promptStats(_ sender: Any) {
    UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
      self.shadowView.isHidden = false
      self.nextScreenButton.isHidden = false
      self.infoLabel.isHidden = false
    }, completion: nil)
  }
}
