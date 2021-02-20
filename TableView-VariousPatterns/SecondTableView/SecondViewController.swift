//
//  SecondViewController.swift
//  TableView-VariousPatterns
//
//  Created by shinichiro kudo on 2021/02/18.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Initialization Closure
    private let secondTableView: UITableView = {
        let table = UITableView()
        
        // cellファイルで設定したidから情報を取得
        table.register(SecondSimpleTableViewCell.self, forCellReuseIdentifier: SecondSimpleTableViewCell.identifier)
        
        table.register(SecondImageTableViewCell.nib(), forCellReuseIdentifier: SecondImageTableViewCell.identifier)
        
        return table
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(secondTableView)
        secondTableView.delegate = self
        // プロトコルのprotocol UITableViewDelegateに準拠した、TableViewクラスの、weak open var delegate: UITableViewDelegate? を使用している。
        secondTableView.dataSource = self
        // DataSourceを取得しないとdelegateは使用できない。
        // プロトコルのprotocol UITableViewDataSourceに準拠した、TableViewクラスの、weak open var delegate: UITableViewDataSource? を使用している。
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        secondTableView.frame = view.bounds  // 相対的に親viewと1対1でサイズにするためboundsで設定している
    }
    
    // 以下２つのメソッドはUITableViewDataSourceに準拠されている必須項目。
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < 5 {
            // show image cell
            let cell = tableView.dequeueReusableCell(withIdentifier: SecondImageTableViewCell.identifier, for: indexPath) as! SecondImageTableViewCell
            //          ↑tableView: UITableView　はconfigureメソッドを持っていないので、SecondImageTableViewCellクラスにダウンキャストさせる
            cell.configure(with: "Image1")
            // configureはSecondImageTableViewCellクラスで定義
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SecondSimpleTableViewCell.identifier, for: indexPath)
        cell.textLabel?.text = "Hello World"
        
        return cell
    }
}
