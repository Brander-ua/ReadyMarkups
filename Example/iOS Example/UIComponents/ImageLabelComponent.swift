//
//  ImageLabelComponent.swift
//  iOS Example
//

import UIKit

class ImageLabelComponent: InitView {
  
  var imageView: UIImageView = UIImageView()
  var label: UILabel = UILabel()
  
  override func initConfigure() {
    super.initConfigure()
    addSubview(imageView)
    addSubview(label)
  }
}
