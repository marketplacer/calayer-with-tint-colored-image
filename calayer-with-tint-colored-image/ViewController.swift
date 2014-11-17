//
//  ViewController.swift
//  calayer-with-tint-colored-image
//
//  Created by Evgenii Neumerzhitckii on 17/11/2014.
//  Copyright (c) 2014 The Exchange Group Pty Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var viewForCALayer: UIView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    viewForCALayer.backgroundColor = nil
   
    if let currentImage = UIImage(named: "star.png") {
      ViewController.setImageViewImage(imageView, image: currentImage)
      ViewController.setCALayerImage(viewForCALayer.layer, image: currentImage)
    }
  }
  
  private class func setImageViewImage(imageView: UIImageView, image: UIImage) {
    imageView.image = image.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
  }
  
  private class func setCALayerImage(layer: CALayer, image: UIImage) {
    let tintedImage = image.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
    layer.contents = tintedImage.CGImage
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

