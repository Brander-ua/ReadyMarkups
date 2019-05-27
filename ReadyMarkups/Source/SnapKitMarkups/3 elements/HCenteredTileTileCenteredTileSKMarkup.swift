//
//  HCenteredTileTileCenteredTileSKMarkup.swift
//  ReadyMarkups
//

import Foundation

open class HCenteredTileTileCenteredTileSKMarkup: HCenteredTileTileCenteredTileMarkup {
  
  open var tile1Leading: CGFloat = 10
  open var tile1CenterYOffset: CGFloat = 0
  open var tile1Height: CGFloat? = 50
  open var tile1Width: CGFloat? = 50
  
  open var tile2Leading: CGFloat = 10
  open var tile2Top: CGFloat = 10
  open var tile2Bottom: CGFloat = 10
  open var tile2Height: CGFloat? = 50
  open var tile2Width: CGFloat? = 50
  
  open var tile3Leading: CGFloat = 10
  open var tile3Trailing: CGFloat = 10
  open var tile3CenterYOffset: CGFloat = 0
  open var tile3Height: CGFloat? = 50
  open var tile3Width: CGFloat? = 50
  
  open func applyToView(tile1: UIView, tile2: UIView, tile3: UIView) {
    tile1.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(tile1Leading)
      make.centerY.equalToSuperview().offset(tile1CenterYOffset)
      if let tile1Height = tile1Height { make.height.equalTo(tile1Height) }
      if let tile1Width = tile1Width { make.width.equalTo(tile1Width) }
    }
    tile2.snp.makeConstraints { make in
      make.leading.equalTo(tile1.snp.trailing).offset(tile1Leading)
      make.top.equalToSuperview().offset(tile2Top)
      make.bottom.equalToSuperview().inset(tile2Bottom)
      if let tile2Height = tile2Height { make.height.equalTo(tile2Height) }
      if let tile2Width = tile2Width { make.width.equalTo(tile2Width) }
    }
    tile3.snp.makeConstraints { make in
      make.leading.equalTo(tile2.snp.trailing).offset(tile3Leading)
      make.trailing.equalToSuperview().inset(tile3Trailing)
      make.centerY.equalToSuperview().offset(tile3CenterYOffset)
      if let tile3Height = tile3Height { make.height.equalTo(tile3Height) }
      if let tile3Width = tile3Width { make.width.equalTo(tile3Width) }
    }
  }
}
