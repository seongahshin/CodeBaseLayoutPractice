//
//  ViewController.swift
//  CodeBaseLayoutPractice
//
//  Created by 신승아 on 2022/08/17.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let closedButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "xmark"), for: .normal)
        return view
    }()
    
    let presentButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "star"), for: .normal)
        return view
    }()
    
    let starFillButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "xmark"), for: .normal)
        return view
    }()
    
    let starButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "star"), for: .normal)
        return view
    }()
    
    let profileEditButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "pencil"), for: .normal)
        
        view.backgroundColor = .yellow
        
        return view
    }()
    
    let profileEditLabel: UILabel = {
        let view = UILabel()
        view.text = "프로필 편집"
        view.textColor = .white
        view.font = .systemFont(ofSize: 10)
        view.backgroundColor = .blue
        view.textAlignment = .center
        return view
    }()
    
    let kakaoStoryButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "star"), for: .normal)
        view.backgroundColor = .red
        return view
    }()
    
    let kakaoStoryLabel: UILabel = {
        let view = UILabel()
        view.text = "카카오스토리"
        view.textColor = .white
        view.font = .systemFont(ofSize: 10)
        view.backgroundColor = .brown
        view.textAlignment = .center
        return view
    }()
    
    let chatButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "star"), for: .normal)
        view.backgroundColor = .red
        return view
    }()
    
    let chatLabel: UILabel = {
        let view = UILabel()
        view.text = "나와의 채팅"
        view.textColor = .white
        view.font = .systemFont(ofSize: 10)
        view.backgroundColor = .brown
        view.textAlignment = .center
        return view
    }()
    
    let line: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let name: UILabel = {
        let view = UILabel()
        view.text = "신승아"
        view.backgroundColor = .blue
        view.textColor = .white
        view.textAlignment = .center
        return view
    }()
    
    let image: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .yellow
        view.layer.cornerRadius = 40
        return view
    }()
    
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    func configureUI() {
        
        [closedButton, presentButton, starFillButton, starButton, profileEditButton, profileEditLabel, kakaoStoryButton, kakaoStoryLabel, chatButton, chatLabel, line, name, image].forEach {
            view.addSubview($0)
        }
        
        closedButton.snp.makeConstraints { make in
            make.top.equalTo(30)
            make.leadingMargin.equalTo(5)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        presentButton.snp.makeConstraints { make in
            make.top.equalTo(30)
            make.trailingMargin.equalTo(-5)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        starFillButton.snp.makeConstraints { make in
            make.trailingMargin.equalTo(presentButton.snp.leadingMargin).offset(-20)
            make.top.equalTo(30)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        starButton.snp.makeConstraints { make in
            make.trailingMargin.equalTo(starFillButton.snp.leadingMargin).offset(-20)
            make.top.equalTo(30)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        profileEditButton.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.width.equalTo(60)
            make.height.equalTo(60)
            make.bottomMargin.equalTo(-50)
        }
        
        profileEditLabel.snp.makeConstraints { make in
            make.width.equalTo(profileEditButton.snp.width)
            make.height.equalTo(10)
            make.centerX.equalTo(view)
            make.top.equalTo(profileEditButton.snp.bottomMargin).offset(10)
        }
        
        kakaoStoryButton.snp.makeConstraints { make in
            make.width.equalTo(60)
            make.height.equalTo(60)
            make.leadingMargin.equalTo(profileEditButton.snp.trailingMargin).offset(50)
            make.bottomMargin.equalTo(-50)
            
        }
        
        kakaoStoryLabel.snp.makeConstraints { make in
            make.width.equalTo(profileEditLabel.snp.width)
            make.height.equalTo(profileEditLabel.snp.height)
            make.leadingMargin.equalTo(profileEditLabel.snp.trailingMargin).offset(50)
            make.top.equalTo(kakaoStoryButton.snp.bottomMargin).offset(10)
        }
        
        chatButton.snp.makeConstraints { make in
            make.width.equalTo(60)
            make.height.equalTo(60)
            make.trailingMargin.equalTo(profileEditButton.snp.leadingMargin).offset(-50)
            make.bottomMargin.equalTo(-50)
        }
        
        chatLabel.snp.makeConstraints { make in
            make.width.equalTo(profileEditLabel.snp.width)
            make.height.equalTo(profileEditLabel.snp.height)
            make.trailingMargin.equalTo(profileEditLabel.snp.leadingMargin).offset(-50)
            make.top.equalTo(chatButton.snp.bottomMargin).offset(10)
        }
        
        line.snp.makeConstraints { make in
            make.bottomMargin.equalTo(chatButton.snp.top).offset(-40)
            make.height.equalTo(1)
            make.trailingMargin.equalTo(0)
            make.leadingMargin.equalTo(0)
        }
        
        name.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.leadingMargin.equalTo(150)
            make.trailingMargin.equalTo(-150)
            make.bottomMargin.equalTo(line.snp.topMargin).offset(-50)
        }
        
        image.snp.makeConstraints { make in
            make.bottomMargin.equalTo(name.snp.topMargin).offset(-20)
            make.width.equalTo(120)
            make.height.equalTo(120)
            make.centerX.equalTo(view)
        }
    }


}

