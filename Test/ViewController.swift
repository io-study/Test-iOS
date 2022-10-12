//
//  ViewController.swift
//  Test
//
//  Created by 박준서 on 2022/10/11.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let idTextField = UITextField()
    let psTextField = UITextField()
    
    let loginImageView = UIImageView()

 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(idTextField)
        view.addSubview(psTextField)
        view.addSubview(loginImageView)
        
        idTextField.borderStyle = .line //모서리 둥글게
        idTextField.borderStyle = .roundedRect
        idTextField.placeholder = "아이디를 입력해주세요!"
        
        psTextField.borderStyle = .line
        psTextField.borderStyle = .roundedRect
        psTextField.placeholder = "비밀번호를 입력해주세요!"
        
        loginImageView.image = UIImage(named: "HI_Logo")
        loginImageView.layer.cornerRadius = 50 //사진 겉에 둥글게
        loginImageView.clipsToBounds = true // 잘리는거
        
        idTextField.snp.makeConstraints {
            $0.centerX.equalTo(view) //뷰에서의 X좌표의 가운데
            $0.centerY.equalTo(view).offset(80)
            $0.width.equalTo(300) //너비 = 60
            $0.height.equalTo(50) // 높이 = 10
            
        }
        psTextField.snp.makeConstraints {
            $0.centerX.equalTo(view)
            $0.centerY.equalTo(view).offset(150)
            $0.width.equalTo(300)
            $0.height.equalTo(50)
        }
        loginImageView.snp.makeConstraints {
            $0.centerX.equalTo(view)
            $0.centerY.equalTo(view).offset(-150)
            $0.width.equalTo(300)
            $0.height.equalTo(300)
        }
        
    }


}

