//
//  V2TilesEdgedSKMarkup.swift
//  ReadyMarkups
//

import Foundation

open class V2TilesEdgedSKMarkup: V2TilesEdgedMarkup {
  
  open var tile1Leading: CGFloat = 10
  open var tile1Top: CGFloat = 10
  open var tile1Trailing: CGFloat = 10
  open var tile1Height: CGFloat? = 50
  open var tile1Width: CGFloat?
  
  open var tile2Leading: CGFloat = 10
  open var tile2Top: CGFloat = 10
  open var tile2Trailing: CGFloat = 10
  open var tile2Bottom: CGFloat = 10
  open var tile2Height: CGFloat? = 50
  open var tile2Width: CGFloat?
  
  public init() {}
  
  open func applyToView(tile1: UIView, tile2: UIView) {
    tile1.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(tile1Leading)
      make.top.equalToSuperview().offset(tile1Top)
      make.trailing.equalToSuperview().inset(tile1Trailing)
      if let tile1Width = tile1Width { make.width.equalTo(tile1Width) }
      if let tile1Height = tile1Height { make.height.equalTo(tile1Height) }
    }
    tile2.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(tile2Leading)
      make.top.equalTo(tile1.snp.bottom).offset(tile2Top)
      make.trailing.equalToSuperview().inset(tile2Trailing)
      make.bottom.equalToSuperview().inset(tile2Bottom)
      if let tile2Width = tile2Width { make.width.equalTo(tile2Width) }
      if let tile2Height = tile2Height { make.height.equalTo(tile2Height) }
    }
  }
}
