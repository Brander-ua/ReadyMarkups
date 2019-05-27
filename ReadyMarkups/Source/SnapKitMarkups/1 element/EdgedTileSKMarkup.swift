//
//  EdgedTileSKMarkup.swift
//  ReadyMarkups
//

import Foundation
import SnapKit

open class EdgedTileSKMarkup: EdgedTileMarkup {
  
  open var leading: CGFloat = 10
  open var top: CGFloat = 10
  open var trailing: CGFloat = 10
  open var bottom: CGFloat = 10
  open var width: CGFloat?
  open var height: CGFloat?
  
  public init() {}
  
  open func applyToView(tile: UIView) {
    tile.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(leading)
      make.top.equalToSuperview().offset(top)
      make.bottom.equalToSuperview().inset(bottom)
      make.trailing.equalToSuperview().inset(trailing)
      if let height = height { make.height.equalTo(height) }
      if let width = width { make.width.equalTo(width) }
    }
  }
  
}
