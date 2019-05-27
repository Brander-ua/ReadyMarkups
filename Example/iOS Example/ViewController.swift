//
//  ViewController.swift
//  iOS Example
//

import UIKit
import ReadyMarkups
import SnapKit

class ViewController: UIViewController {

  @IBOutlet weak var contentView: UIView!
  
  // MARK: - 1 element components
  
  private let labelComponent1 = LabelComponent()
  private let labelComponent2 = LabelComponent()
  
  // MARK: - 2 element components
  
  private let imageLabelComponent1 = ImageLabelComponent()
  private let imageLabelComponent2 = ImageLabelComponent()
  private let imageLabelComponent3 = ImageLabelComponent()
  private let imageLabelComponent4 = ImageLabelComponent()
  private let imageLabelComponent5 = ImageLabelComponent()
  private let imageLabelComponent6 = ImageLabelComponent()
  private let imageLabelComponent7 = ImageLabelComponent()
  private let imageLabelComponent8 = ImageLabelComponent()
  
  // MARK: - 3 element components
  
  private let imageLabel2Component1 = ImageLabel2Component()
  private let imageLabel2Component2 = ImageLabel2Component()
  private let imageLabel2Component3 = ImageLabel2Component()
  private let imageLabel2Component4 = ImageLabel2Component()
  private let imageLabel2Component5 = ImageLabel2Component()
  
  // MARK: - 4 element components
  
  private let imageLabel2ImageComponent = ImageLabel2ImageComponent()
  
  // MARK: - View life cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureComponents()
    placeComponents()
    
    // 1 element markups
    let edgedTileMarkup = EdgedTileSKMarkup()
    edgedTileMarkup.applyToView(tile: labelComponent1.label)
    
    let centeredTileMarkup = CenteredTileSKMarkup()
    centeredTileMarkup.applyToView(tile: labelComponent2.label)
    
    // 2 elements markups
    let h2Tiles1stCenteredSKMarkup = H2Tiles1stCenteredSKMarkup()
    h2Tiles1stCenteredSKMarkup.tile1Width = 25
    h2Tiles1stCenteredSKMarkup.tile1Height = 25
    h2Tiles1stCenteredSKMarkup.applyToView(tile1: imageLabelComponent1.imageView, tile2: imageLabelComponent1.label)
    
    let h2Tiles2ndCenteredSKMarkup = H2Tiles2ndCenteredSKMarkup()
    h2Tiles2ndCenteredSKMarkup.tile2Width = 25
    h2Tiles2ndCenteredSKMarkup.tile2Height = 25
    h2Tiles2ndCenteredSKMarkup.applyToView(tile1: imageLabelComponent2.imageView, tile2: imageLabelComponent2.label)
    
    let h2TilesEdgedSKMarkup = H2TilesEdgedSKMarkup()
    h2TilesEdgedSKMarkup.tile1Height = 25
    h2TilesEdgedSKMarkup.tile1Width = 25
    h2TilesEdgedSKMarkup.applyToView(tile1: imageLabelComponent3.imageView, tile2: imageLabelComponent3.label)
    
    let v2Tiles1stCenteredSKMarkup = V2Tiles1stCenteredSKMarkup()
    v2Tiles1stCenteredSKMarkup.applyToView(tile1: imageLabelComponent4.imageView, tile2: imageLabelComponent4.label)
    
    let v2Tiles2ndCenteredSKMarkup = V2Tiles2ndCenteredSKMarkup()
    v2Tiles2ndCenteredSKMarkup.applyToView(tile1: imageLabelComponent5.imageView, tile2: imageLabelComponent5.label)
    
    let v2TilesEdgedSKMarkup = V2TilesEdgedSKMarkup()
    v2TilesEdgedSKMarkup.applyToView(tile1: imageLabelComponent6.imageView, tile2: imageLabelComponent6.label)
    
    let tileOverEdgedTileSKMarkup = TileOverEdgedTileSKMarkup()
    tileOverEdgedTileSKMarkup.applyToView(tile1: imageLabelComponent7.imageView, tile2: imageLabelComponent7.label)
    
    let tileOverCenteredTileSKMarkup = TileOverCenteredTileSKMarkup()
    tileOverCenteredTileSKMarkup.applyToView(tile1: imageLabelComponent8.imageView, tile2: imageLabelComponent8.label)
    
    // 3 elements markups
    let hEdgedTileV2TilesSKMarkup = HEdgedTileV2TilesSKMarkup()
    hEdgedTileV2TilesSKMarkup.applyToView(tile1: imageLabel2Component1.imageView, tile2: imageLabel2Component1.label1, tile3: imageLabel2Component1.label2)
    
    let v2TilesHEdgedTileSKMarkup = V2TilesHEdgedTileSKMarkup()
    v2TilesHEdgedTileSKMarkup.applyToView(tile1: imageLabel2Component2.imageView, tile2: imageLabel2Component2.label1, tile3: imageLabel2Component2.label2)
    
    let v3EdgedTilesSKMarkup = V3EdgedTilesSKMarkup()
    v3EdgedTilesSKMarkup.applyToView(tile1: imageLabel2Component3.imageView, tile2: imageLabel2Component3.label1, tile3: imageLabel2Component3.label2)
    
    let h3EdgedTilesSKMarkup = H3EdgedTilesSKMarkup()
    h3EdgedTilesSKMarkup.applyToView(tile1: imageLabel2Component4.imageView, tile2: imageLabel2Component4.label1, tile3: imageLabel2Component4.label2)
    
    let hCenteredTileTileCenteredTileSKMarkup = HCenteredTileTileCenteredTileSKMarkup()
    hCenteredTileTileCenteredTileSKMarkup.applyToView(tile1: imageLabel2Component5.imageView, tile2: imageLabel2Component5.label1, tile3: imageLabel2Component5.label2)
    
    // 4 elements markups
    let hTopTileV2TilesHTopTileSKMarkup = HTopTileV2TilesHTopTileSKMarkup()
    hTopTileV2TilesHTopTileSKMarkup.applyToView(tile1: imageLabel2ImageComponent.imageView1, tile2: imageLabel2ImageComponent.label1, tile3: imageLabel2ImageComponent.label2, tile4: imageLabel2ImageComponent.imageView2)
  }


  private let componentBackgroundColor: UIColor = .orange
  private let label1BackgroundColor: UIColor = .brown
  private let label2BackgroundColor: UIColor = .gray
  private let image1BackgroundColor: UIColor = .green
  private let image2BackgroundColor: UIColor = .blue
  
  private func configureComponents() {
    // 1 element
    labelComponent1.label.backgroundColor = label1BackgroundColor
    labelComponent1.backgroundColor = componentBackgroundColor
    
    labelComponent2.label.backgroundColor = label1BackgroundColor
    labelComponent2.backgroundColor = componentBackgroundColor
    
    // 2 elements
    imageLabelComponent1.label.backgroundColor = label1BackgroundColor
    imageLabelComponent1.imageView.backgroundColor = image1BackgroundColor
    imageLabelComponent1.backgroundColor = componentBackgroundColor
    
    imageLabelComponent2.label.backgroundColor = label1BackgroundColor
    imageLabelComponent2.imageView.backgroundColor = image1BackgroundColor
    imageLabelComponent2.backgroundColor = componentBackgroundColor
    
    imageLabelComponent3.label.backgroundColor = label1BackgroundColor
    imageLabelComponent3.imageView.backgroundColor = image1BackgroundColor
    imageLabelComponent3.backgroundColor = componentBackgroundColor
    
    imageLabelComponent4.label.backgroundColor = label1BackgroundColor
    imageLabelComponent4.imageView.backgroundColor = image1BackgroundColor
    imageLabelComponent4.backgroundColor = componentBackgroundColor
    
    imageLabelComponent5.label.backgroundColor = label1BackgroundColor
    imageLabelComponent5.imageView.backgroundColor = image1BackgroundColor
    imageLabelComponent5.backgroundColor = componentBackgroundColor
    
    imageLabelComponent6.label.backgroundColor = label1BackgroundColor
    imageLabelComponent6.imageView.backgroundColor = image1BackgroundColor
    imageLabelComponent6.backgroundColor = componentBackgroundColor
    
    imageLabelComponent7.label.backgroundColor = label1BackgroundColor.withAlphaComponent(0.5)
    imageLabelComponent7.imageView.backgroundColor = image1BackgroundColor
    imageLabelComponent7.backgroundColor = componentBackgroundColor
    
    imageLabelComponent8.label.backgroundColor = label1BackgroundColor.withAlphaComponent(0.5)
    imageLabelComponent8.imageView.backgroundColor = image1BackgroundColor
    imageLabelComponent8.backgroundColor = componentBackgroundColor
    
    // 3 elements
    imageLabel2Component1.imageView.backgroundColor = image1BackgroundColor
    imageLabel2Component1.label1.backgroundColor = label1BackgroundColor
    imageLabel2Component1.label2.backgroundColor = label2BackgroundColor
    imageLabel2Component1.backgroundColor = componentBackgroundColor
    
    imageLabel2Component2.imageView.backgroundColor = image1BackgroundColor
    imageLabel2Component2.label1.backgroundColor = label1BackgroundColor
    imageLabel2Component2.label2.backgroundColor = label2BackgroundColor
    imageLabel2Component2.backgroundColor = componentBackgroundColor
    
    imageLabel2Component3.imageView.backgroundColor = image1BackgroundColor
    imageLabel2Component3.label1.backgroundColor = label1BackgroundColor
    imageLabel2Component3.label2.backgroundColor = label2BackgroundColor
    imageLabel2Component3.backgroundColor = componentBackgroundColor
    
    imageLabel2Component4.imageView.backgroundColor = image1BackgroundColor
    imageLabel2Component4.label1.backgroundColor = label1BackgroundColor
    imageLabel2Component4.label2.backgroundColor = label2BackgroundColor
    imageLabel2Component4.backgroundColor = componentBackgroundColor
    
    imageLabel2Component5.imageView.backgroundColor = image1BackgroundColor
    imageLabel2Component5.label1.backgroundColor = label1BackgroundColor
    imageLabel2Component5.label2.backgroundColor = label2BackgroundColor
    imageLabel2Component5.backgroundColor = componentBackgroundColor
    
    // 4 elements
    imageLabel2ImageComponent.imageView1.backgroundColor = image1BackgroundColor
    imageLabel2ImageComponent.label1.backgroundColor = label1BackgroundColor
    imageLabel2ImageComponent.label2.backgroundColor = label2BackgroundColor
    imageLabel2ImageComponent.imageView2.backgroundColor = image2BackgroundColor
    imageLabel2ImageComponent.backgroundColor = componentBackgroundColor
  }
  
  private func placeComponents() {
    contentView.addSubview(labelComponent1)
    contentView.addSubview(labelComponent2)
    contentView.addSubview(imageLabelComponent1)
    contentView.addSubview(imageLabelComponent2)
    contentView.addSubview(imageLabelComponent3)
    contentView.addSubview(imageLabelComponent4)
    contentView.addSubview(imageLabelComponent5)
    contentView.addSubview(imageLabelComponent6)
    contentView.addSubview(imageLabelComponent7)
    contentView.addSubview(imageLabelComponent8)
    contentView.addSubview(imageLabel2Component1)
    contentView.addSubview(imageLabel2Component2)
    contentView.addSubview(imageLabel2Component3)
    contentView.addSubview(imageLabel2Component4)
    contentView.addSubview(imageLabel2Component5)
    contentView.addSubview(imageLabel2ImageComponent)
    
    labelComponent1.snp.makeConstraints { make in
      make.leading.trailing.equalToSuperview()
      make.top.equalToSuperview().offset(20)
    }
    placeView(labelComponent2, under: labelComponent1, height: 70)
    placeView(imageLabelComponent1, under: labelComponent2, offset: 50)
    placeView(imageLabelComponent2, under: imageLabelComponent1)
    placeView(imageLabelComponent3, under: imageLabelComponent2)
    placeView(imageLabelComponent4, under: imageLabelComponent3)
    placeView(imageLabelComponent5, under: imageLabelComponent4)
    placeView(imageLabelComponent6, under: imageLabelComponent5)
    placeView(imageLabelComponent7, under: imageLabelComponent6)
    placeView(imageLabelComponent8, under: imageLabelComponent7, height: 70)
    placeView(imageLabel2Component1, under: imageLabelComponent8, offset: 50)
    placeView(imageLabel2Component2, under: imageLabel2Component1)
    placeView(imageLabel2Component3, under: imageLabel2Component2)
    placeView(imageLabel2Component4, under: imageLabel2Component3)
    placeView(imageLabel2Component5, under: imageLabel2Component4)
    placeView(imageLabel2ImageComponent, under: imageLabel2Component5, offset: 70, isLast: true)
  }
  
  private func placeView(_ view: UIView, under underView: UIView, offset: CGFloat = 20, height: CGFloat? = nil, isLast: Bool = false) {
    view.snp.makeConstraints { make in
      make.leading.trailing.equalToSuperview()
      make.top.equalTo(underView.snp.bottom).offset(offset)
      if let height = height { make.height.equalTo(height) }
      if isLast { make.bottom.equalToSuperview().inset(20) }
    }
  }
}

