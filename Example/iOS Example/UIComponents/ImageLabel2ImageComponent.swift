//
//  ImageLabel2ImageComponent.swift
//  iOS Example
//
//  Created by branderstudio on 5/27/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

class ImageLabel2ImageComponent: InitView {
  
  // MARK: - UI elements
  
  var label1: UILabel = UILabel()
  var label2: UILabel = UILabel()
  var imageView1: UIImageView = UIImageView()
  var imageView2: UIImageView = UIImageView()
  
  // MARK: - Init configure
  
  override func initConfigure() {
    super.initConfigure()
    addSubview(label1)
    addSubview(label2)
    addSubview(imageView1)
    addSubview(imageView2)
  }
  
}
