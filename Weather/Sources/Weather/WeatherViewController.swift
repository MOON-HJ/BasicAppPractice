//
//  WeatherViewController.swift
//  
//
//  Created by 문효재 on 2022/06/06.
//

import UIKit
import SnapKit
import Then

public final class WeatherViewController: UIViewController {
  private let stackView = UIStackView().then {
    $0.axis = .vertical
    $0.alignment = .center
    $0.spacing = 10
    $0.translatesAutoresizingMaskIntoConstraints = false
  }
 
  private let cityLabel = UILabel().then {
    $0.text = "Seoul"
    $0.textColor = .label
    $0.textAlignment = .center
    $0.font = .systemFont(ofSize: 34, weight: .medium)
  }
  
  private let imageView = UIImageView().then {
    $0.image = UIImage(systemName: "sun.max.fill")?
      .withRenderingMode(.alwaysOriginal)
    $0.contentMode = .scaleAspectFill
  }
  
  private let degree = UILabel().then {
    $0.text = "27°"
    $0.textColor = .label
    $0.textAlignment = .center
    $0.font = .systemFont(ofSize: 70, weight: .medium)
  }
  
  private let weeklyWeather = UIStackView().then {
    $0.axis = .horizontal
  }
  
  private let changeCityButton = UIButton().then {
    $0.setTitle("Change City", for: .normal)
    $0.setTitleColor(.systemTeal, for: .normal)
    $0.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
    $0.backgroundColor = .white
    $0.layer.cornerRadius = 40
  }
  
  public init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    configureUI()
    configureConstraints()
  }
  
  func configureUI() {
    view.backgroundColor = .systemTeal
    
    view.addSubview([stackView])
    stackView.addArrangedSubview([cityLabel, imageView, degree, weeklyWeather, changeCityButton])
  }
  
  func configureConstraints() {
    stackView.snp.makeConstraints {
      $0.edges.equalTo(view.safeAreaLayoutGuide).inset(UIEdgeInsets(top: 30, left: 20, bottom: 20, right: 30))
    }
    
    imageView.snp.makeConstraints {
      $0.height.equalTo(180)
    }
    
    changeCityButton.snp.makeConstraints {
      $0.height.equalTo(80)
      $0.width.equalToSuperview()
    }
  }
}
