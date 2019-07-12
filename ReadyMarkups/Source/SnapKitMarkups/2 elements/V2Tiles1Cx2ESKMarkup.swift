//
//  Created by branderstudio on 5/23/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class V2Tiles1Cx2ESKMarkup: V2Tiles1Cx2EMarkup {
  
  open var tile1CenterXOffset: CGFloat = 0
  open var tile1Top: CGFloat = 10
  open var tile1Height: CGFloat? = 50
  open var tile1Width: CGFloat? = 50
  
  open var tile2Top: CGFloat = 10
  open var tile2Leading: CGFloat = 10
  open var tile2Trailing: CGFloat = 10
  open var tile2Bottom: CGFloat = 10
  open var tile2Height: CGFloat? = 50
  open var tile2Width: CGFloat?
  
  public init() {}
  
  open func applyToView(tile1: UIView, tile2: UIView) {
    tile1.snp.makeConstraints { make in
      make.top.equalToSuperview().offset(tile1Top)
      make.centerX.equalTo(tile2).offset(tile1CenterXOffset)
      if let tile1Height = tile1Height { make.height.equalTo(tile1Height) }
      if let tile1Width = tile1Width { make.width.equalTo(tile1Width) }
    }
    tile2.snp.makeConstraints { make in
      make.top.equalTo(tile1.snp.bottom).offset(tile2Top)
      make.leading.equalToSuperview().offset(tile2Leading)
      make.trailing.equalToSuperview().inset(tile2Trailing)
      make.bottom.equalToSuperview().inset(tile2Bottom)
      if let tile2Height = tile2Height { make.height.equalTo(tile2Height) }
      if let tile2Width = tile2Width { make.height.equalTo(tile2Width) }
    }
  }
}
