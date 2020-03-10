//
//  ViewController.swift
//  ChangingPerspectives
//
//  Created by Devin Reich on 3/2/20.
//  Copyright © 2020 reich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var button: UIButton!
  @IBOutlet weak var imageView: UIImageView!
  override func viewDidLoad() {
    super.viewDidLoad()
    button.layer.cornerRadius = button.frame.height / 2
    button.isUserInteractionEnabled = false
  }
  
  
  @IBAction func sliderChanged(_ sender: UISlider) {
    let inputImage = CIImage(image: UIImage(named: "blue_white_dress")!)!
    let parameters = [
      "inputContrast": sender.value,
    ]
    let outputImage = inputImage.applyingFilter("CIColorControls", parameters: parameters)
    let context = CIContext(options: nil)
    let img = context.createCGImage(outputImage, from: outputImage.extent)!
    imageView.image = UIImage(cgImage: img)
    button.isUserInteractionEnabled = true
  }
  
  @IBAction func changePerspective(_ sender: Any) {
    if let vc = storyboard?.instantiateViewController(withIdentifier: "SingleStoryVC") {
      self.present(vc, animated: true, completion: nil)
    }
  }
  
}

