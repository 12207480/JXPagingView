//
//  RefreshViewController.swift
//  JXPagingView
//
//  Created by jiaxin on 2018/8/8.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

import UIKit


class RefreshViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        for listView in listViewArray {
            (listView as! TestListBaseView).isNeedFooter = true
        }

        pagingView.mainTableView.mj_header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(headerRefresh))
    }

    @objc func headerRefresh() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + DispatchTimeInterval.seconds(2)) {
            self.pagingView.mainTableView.mj_header.endRefreshing()
        }
    }
}

