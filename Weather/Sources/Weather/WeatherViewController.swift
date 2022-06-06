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
  private let textLabel = UILabel().then {
    $0.text = "Hello World"
    $0.textColor = .label
    $0.sizeToFit()
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
    view.backgroundColor = .systemBackground
    
    [textLabel].forEach {
      view.addSubview($0)
    }
    
  }
  
  func configureConstraints() {
    textLabel.snp.makeConstraints {
      $0.center.equalToSuperview()
    }
  }
}
