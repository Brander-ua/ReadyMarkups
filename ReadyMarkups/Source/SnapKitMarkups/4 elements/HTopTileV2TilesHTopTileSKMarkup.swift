//
//  Created by branderstudio on 5/23/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class HTopTileV2TilesHTopTileSKMarkup: HTopTileV2TilesHTopTileMarkup {
  
  open var tile1Leading: CGFloat = 10
  open var tile1Top: CGFloat = 10
  open var tile1Height: CGFloat? = 50
  open var tile1Width: CGFloat? = 50
  
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
  
  open var tile4Top: CGFloat = 10
  open var tile4Trailing: CGFloat = 10
  open var tile4Height: CGFloat? = 50
  open var tile4Width: CGFloat? = 50
  
  public init() {}
  
  open func applyToView(tile1: UIView, tile2: UIView, tile3: UIView, tile4: UIView) {
    tile1.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(tile1Leading)
      make.top.equalToSuperview().offset(tile1Top)
      if let tile1Height = tile1Height { make.height.equalTo(tile1Height) }
      if let tile1Width = tile1Width { make.width.equalTo(tile1Width) }
    }
    tile2.snp.makeConstraints { make in
      make.leading.equalTo(tile1.snp.trailing).offset(tile2Leading)
      make.top.equalToSuperview().offset(tile2Top)
      make.trailing.equalTo(tile4.snp.leading).offset(-tile2Trailing)
      if let tile2Height = tile2Height { make.height.equalTo(tile2Height) }
      if let tile2Width = tile2Width { make.width.equalTo(tile2Width) }
    }
    tile3.snp.makeConstraints { make in
      make.leading.equalTo(tile1.snp.trailing).offset(tile3Leading)
      make.top.equalTo(tile2.snp.bottom).offset(tile3Top)
      make.bottom.equalToSuperview().inset(tile3Bottom)
      make.trailing.equalTo(tile4.snp.leading).offset(-tile3Trailing)
      if let tile3Height = tile3Height { make.height.equalTo(tile3Height) }
      if let tile3Width = tile3Width { make.width.equalTo(tile3Width) }
    }
    tile4.snp.makeConstraints { make in
      make.top.equalToSuperview().offset(tile4Top)
      make.trailing.equalToSuperview().inset(tile4Trailing)
      if let tile4Height = tile4Height { make.height.equalTo(tile4Height) }
      if let tile4Width = tile4Width { make.width.equalTo(tile4Width) }
    }
  }
}
