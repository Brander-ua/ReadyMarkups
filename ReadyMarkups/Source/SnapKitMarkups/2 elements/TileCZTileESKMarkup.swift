//
//  Created by branderstudio on 5/23/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class TileCZTileESKMarkup: TileCZTileEMarkup {
  
  open var tile1CenterYOffset: CGFloat = 0
  open var tile1CenterXOffset: CGFloat = 0
  open var tile1Height: CGFloat? = 50
  open var tile1Width: CGFloat? = 50
  
  open var tile2Leading: CGFloat = 0
  open var tile2Top: CGFloat = 0
  open var tile2Trailing: CGFloat = 0
  open var tile2Bottom: CGFloat = 0
  
  public init() {}
  
  open func applyToView(tile1: UIView, tile2: UIView) {
    tile1.snp.makeConstraints { make in
      make.centerY.equalToSuperview().offset(tile1CenterYOffset)
      make.centerX.equalToSuperview().offset(tile1CenterXOffset)
      if let tile1Height = tile1Height { make.height.equalTo(tile1Height) }
      if let tile1Width = tile1Width { make.width.equalTo(tile1Width) }
    }
    tile2.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(tile2Leading)
      make.top.equalToSuperview().offset(tile2Top)
      make.trailing.equalToSuperview().inset(tile2Trailing)
      make.bottom.equalToSuperview().inset(tile2Bottom)
    }
  }
}
