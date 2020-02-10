//
//  CustomTableViewCell.swift
//  TableViewCell_Programmatically2
//
//  Created by Hwang on 2020/02/10.
//  Copyright © 2020 Hwang. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    lazy var backView : UIView = {
        let view = UIView()
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var userImg : UIImageView = {
        let userImg = UIImageView()
        userImg.contentMode = .scaleAspectFill
        userImg.translatesAutoresizingMaskIntoConstraints = false
        userImg.layer.cornerRadius = 10
        userImg.clipsToBounds = true
        return userImg
    }()
    
    lazy var nameLab : UILabel = {
       let nameLab = UILabel()
        nameLab.textAlignment = .left
        nameLab.font = UIFont.boldSystemFont(ofSize: 22)
        nameLab.translatesAutoresizingMaskIntoConstraints = false
//        nameLab.textColor = .red
//        nameLab.backgroundColor = .white
        return nameLab
    }()
    
    lazy var ageLab : UILabel = {
        let ageLab = UILabel()
        ageLab.textAlignment = .left
        ageLab.font = UIFont.boldSystemFont(ofSize: 22)
        ageLab.translatesAutoresizingMaskIntoConstraints = false
        return ageLab
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        addSubview(backView)
        backView.addSubview(userImg)
        backView.addSubview(nameLab)
        backView.addSubview(ageLab)
        NSLayOut()
    }
    
    func NSLayOut() {
        NSLayoutConstraint.activate([
            backView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            backView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            backView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            backView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
            backView.heightAnchor.constraint(equalToConstant: 100),
            
            userImg.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 5),
            userImg.topAnchor.constraint(equalTo: backView.topAnchor, constant: 5),
            userImg.bottomAnchor.constraint(equalTo: backView.bottomAnchor, constant: -5),
            userImg.widthAnchor.constraint(equalToConstant: 100),
            
            nameLab.topAnchor.constraint(equalTo: backView.topAnchor, constant: 15),
            nameLab.leadingAnchor.constraint(equalTo: userImg.trailingAnchor, constant: 10),
            nameLab.widthAnchor.constraint(equalToConstant: 200),
            
            ageLab.topAnchor.constraint(equalTo: nameLab.bottomAnchor, constant: 15),
            ageLab.leadingAnchor.constraint(equalTo: userImg.trailingAnchor, constant: 10),
            ageLab.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}
