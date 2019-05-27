//
//  LabelComponent.swift
//  iOS Example
//

import UIKit

class LabelComponent: InitView {
  
  var label: UILabel = UILabel()
  
  override func initConfigure() {
    super.initConfigure()
    addSubview(label)
  }
}
