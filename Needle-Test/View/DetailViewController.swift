//
//  DetailViewController.swift
//  Needle-Test
//
//  Created by 구본의 on 2023/03/30.
//

import UIKit

class DetailViewController: UIViewController {
  
  private let viewModel: ViewModel
  
  init(viewModel: ViewModel) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  private let titleLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = .systemFont(ofSize: 44, weight: .bold)
    return label
  }()
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .white
    self.setupViews()
    self.setupUIs()
  }
  
  private func setupUIs() {
    self.titleLabel.text = self.viewModel.text
  }
  
  private func setupViews() {
    self.view.addSubview(titleLabel)
    titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
  }
}
