//
//  V3EdgedTilesSKMarkup.swift
//  ReadyMarkups
//

import Foundation

open class V3EdgedTilesSKMarkup: V3EdgedTilesMarkup {
  
  open var tile1Leading: CGFloat = 10
  open var tile1Top: CGFloat = 10
  open var tile1Trailing: CGFloat = 10
  open var tile1Height: CGFloat? = 50
  open var tile1Width: CGFloat?
  
  open var tile2Leading: CGFloat = 10
  open var tile2Top: CGFloat = 10
  open var tile2Trailing: CGFloat = 10
  open var tile2Height: CGFloat? = 50
  open var tile2Width: CGFloat?
  
  open var tile3Leading: CGFloat = 10
  open var tile3Top: CGFloat = 10
  open var tile3Trailing: CGFloat = 10
  open var tile3Bottom: CGFloat = 10
  open var tile3Height: CGFloat? = 50
  open var tile3Width: CGFloat?
  
  public init() {}
  
  open func applyToView(tile1: UIView, tile2: UIView, tile3: UIView) {
    tile1.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(tile1Leading)
      make.top.equalToSuperview().offset(tile1Top)
      make.trailing.equalToSuperview().inset(tile1Trailing)
      if let tile1Height = tile1Height { make.height.equalTo(tile1Height) }
      if let tile1Width = tile1Width { make.width.equalTo(tile1Width) }
    }
    tile2.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(tile2Leading)
      make.top.equalTo(tile1.snp.bottom).offset(tile2Top)
      make.trailing.equalToSuperview().inset(tile2Trailing)
      if let tile2Height = tile2Height { make.height.equalTo(tile2Height) }
      if let tile2Width = tile2Width { make.width.equalTo(tile2Width) }
    }
    tile3.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(tile3Leading)
      make.top.equalTo(tile2.snp.bottom).offset(tile3Top)
      make.trailing.equalToSuperview().inset(tile3Trailing)
      make.bottom.equalToSuperview().inset(tile3Bottom)
      if let tile3Height = tile3Height { make.height.equalTo(tile3Height) }
      if let tile3Width = tile3Width { make.width.equalTo(tile3Width) }
    }
  }
}
