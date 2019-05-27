//
//  InitView.swift
//  iOS Example
//

import UIKit

open class InitView: UIView {
  
  // MARK: - Life cycle
  
  public override init(frame: CGRect = .zero) {
    super.init(frame: frame)
    initConfigure()
  }
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    initConfigure()
  }
  
  // MARK: - Init configure
  
  open func initConfigure() {
    
  }
}
