//
//  ViewController.swift
//  Needle-Test
//
//  Created by 구본의 on 2023/03/30.
//

import UIKit

class ViewController: UIViewController {
  
  let robotComponent: RobotComponent
  let personComponent: PersonComponent
  
  init(robot: RobotComponent, person: PersonComponent) {
    self.robotComponent = robot
    self.personComponent = person
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  
  private let personButton: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("사람입니다", for: .normal)
    return button
  }()
  
  private let robotButton: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("로봇입니다", for: .normal)
    return button
  }()
  
  private lazy var buttonStackView: UIStackView = {
    let stackView = UIStackView(arrangedSubviews: [personButton, robotButton])
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = .horizontal
    stackView.spacing = 30
    return stackView
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .white
    self.setupViews()
    self.setupGestures()
  }
  
  private func setupViews() {
    self.view.addSubview(buttonStackView)
    buttonStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    buttonStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
  }
  
  private func setupGestures() {
    self.personButton.addTarget(self, action: #selector(didTapPersonButton), for: .touchUpInside)
    self.robotButton.addTarget(self, action: #selector(didTapRobotButton), for: .touchUpInside)
  }
  
  @objc private func didTapPersonButton() {
    let vc = personComponent.personViewController
    self.present(vc, animated: true)
  }
  
  @objc private func didTapRobotButton() {
    let vc = robotComponent.robotViewController
    self.present(vc, animated: true)
  }
}
