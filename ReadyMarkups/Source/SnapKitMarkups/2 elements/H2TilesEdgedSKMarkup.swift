//
//  H2TilesEdgedSKMarkup.swift
//  ReadyMarkups
//
//  Created by branderstudio on 5/23/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class H2TilesEdgedSKMarkup: H2TilesEdgedMarkup {
  
  open var tile1Leading: CGFloat = 10
  open var tile1Top: CGFloat = 10
  open var tile1Bottom: CGFloat = 10
  open var tile1Height: CGFloat? = 50
  open var tile1Width: CGFloat? = 50
  
  open var tile2Leading: CGFloat = 10
  open var tile2Top: CGFloat = 10
  open var tile2Trailing: CGFloat = 10
  open var tile2Bottom: CGFloat = 10
  open var tile2Height: CGFloat? = 50
  open var tile2Width: CGFloat? = 50
  
  public init() {}
  
  open func applyToView(tile1: UIView, tile2: UIView) {
    tile1.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(tile1Leading)
      make.top.equalToSuperview().offset(tile1Top)
      if let tile1Height = tile1Height { make.height.equalTo(tile1Height) }
      if let tile1Width = tile1Width { make.width.equalTo(tile1Width) }
      make.bottom.lessThanOrEqualToSuperview().offset(-tile1Bottom)
    }
    tile2.snp.makeConstraints { make in
      make.leading.equalTo(tile1.snp.trailing).offset(tile2Leading)
      make.top.equalToSuperview().offset(tile2Top)
      make.trailing.equalToSuperview().inset(tile2Trailing)
      if let tile2Height = tile2Height { make.height.equalTo(tile2Height) }
      if let tile2Width = tile2Width { make.width.equalTo(tile2Width) }
      make.bottom.lessThanOrEqualToSuperview().offset(-tile2Bottom)
    }
  }
}
