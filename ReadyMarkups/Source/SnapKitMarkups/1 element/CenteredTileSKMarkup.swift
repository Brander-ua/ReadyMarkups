//
//  CenteredTileSKMarkup.swift
//  ReadyMarkups
//

import Foundation

open class CenteredTileSKMarkup: CenteredTileMarkup {
  
  open var centerYOffset: CGFloat = 0
  open var centerXOffset: CGFloat = 0
  open var height: CGFloat? = 50
  open var width: CGFloat? = 50
  
  public init() {}
  
  open func applyToView(tile: UIView) {
    tile.snp.makeConstraints { make in
      make.centerX.equalToSuperview().offset(centerXOffset)
      make.centerY.equalToSuperview().offset(centerYOffset)
      if let height = height { make.height.equalTo(height) }
      if let width = width { make.width.equalTo(width) }
    }
  }
}
