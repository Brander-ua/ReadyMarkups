//
//  ImageLabel2Component.swift
//  iOS Example
//

import UIKit

class ImageLabel2Component: InitView {
  
  // MARK: - UI elements
  
  var label1: UILabel = UILabel()
  var label2: UILabel = UILabel()
  var imageView: UIImageView = UIImageView()
  
  // MARK: - Init configure
  
  override func initConfigure() {
    super.initConfigure()
    addSubview(label1)
    addSubview(label2)
    addSubview(imageView)
  }
  
}
