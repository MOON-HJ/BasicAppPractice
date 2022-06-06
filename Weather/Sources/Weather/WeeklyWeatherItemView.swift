//
//  WeeklyWeatherItemView.swift
//  
//
//  Created by 문효재 on 2022/06/06.
//

import Foundation
import UIKit
import Then
import SnapKit

final class WeeklyWeatherItemView: UIView {
  
  private let stackView = UIStackView().then {
    $0.axis = .vertical
    $0.spacing = 5
    $0.translatesAutoresizingMaskIntoConstraints = false
  }
  
  private let weakdayLabel = UILabel().then {
    $0.text = "MON"
    $0.textColor = .label
    $0.textAlignment = .center
    $0.sizeToFit()
  }
  
  private let imageView = UIImageView().then {
    $0.image = UIImage(systemName: "cloud.fill")?
      .withRenderingMode(.alwaysOriginal)
    $0.contentMode = .scaleAspectFit
  }
  
  private let degreeLabel = UILabel().then {
    $0.text = "15°"
    $0.textColor = .label
    $0.sizeToFit()
    $0.textAlignment = .center
    $0.font = .systemFont(ofSize: 30, weight: .medium)
  }
  
  public init() {
    super.init(frame: .zero)
    configureUI()
    configureContraint()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func configureUI() {
    self.addSubview(stackView)
    stackView.addArrangedSubview([weakdayLabel, imageView, degreeLabel])
  }
  
  func configureContraint() {
    stackView.snp.makeConstraints {
      $0.edges.equalToSuperview()
    }
    
    imageView.snp.makeConstraints {
      $0.size.equalTo(30)
    }
  }
}
