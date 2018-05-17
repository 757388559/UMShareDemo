//
//  UMShareManager.swift
//  UMShareDemo
//
//  Created by liugangyi on 2018/4/27.
//  Copyright © 2018年 liugangyi. All rights reserved.
//

import UIKit

class UMShareManager: NSObject {
    
    static func configureSharePlatforms() {
        
        // qq
        UMSocialManager.default().setPlaform(UMSocialPlatformType.QQ, appKey: "", appSecret: "", redirectURL: "")
        // qqzone
        UMSocialManager.default().setPlaform(UMSocialPlatformType.qzone, appKey: "", appSecret: "", redirectURL: "")
        // 微信聊天
        UMSocialManager.default().setPlaform(UMSocialPlatformType.wechatSession, appKey: "", appSecret: "", redirectURL: "")
        // 微信朋友圈
        UMSocialManager.default().setPlaform(UMSocialPlatformType.wechatTimeLine, appKey: "", appSecret: "", redirectURL: "")
        // 微信收藏
        UMSocialManager.default().setPlaform(UMSocialPlatformType.wechatFavorite, appKey: "", appSecret: "", redirectURL: "")
        // 微博
        UMSocialManager.default().setPlaform(UMSocialPlatformType.sina, appKey: "", appSecret: "", redirectURL: "")
        
    }
    
    func shareImageText(platformType: UMSocialPlatformType) {
        let messageObject = UMSocialMessageObject()
        messageObject.text = "社会化组件UShare将各大社交平台接入您的应用，快速武装App。"
        // 图片
        let imageObject = UMShareImageObject()
        // 缩略图
        imageObject.thumbImage = UIImage(named: "")
        imageObject.shareImage = UIImage(named: "")
        // 仅支持分享到 sina(9张) 和 qzone(20张)
        imageObject.shareImageArray = [UIImage(named: "") as Any]
        messageObject.shareObject = imageObject
        
        UMSocialManager.default().share(to: platformType, messageObject: messageObject, currentViewController: ViewController()) { (data, error) in
            if error == nil {
                
            } else {
                
            }
        }
    }
    
    
    
    static func showShareUI() {
        
        // 设置显示的平台
        UMSocialUIManager.setPreDefinePlatforms([UMSocialPlatformType.sina, UMSocialPlatformType.wechatSession, UMSocialPlatformType.wechatTimeLine])
        
        // 显示分享面板
        UMSocialUIManager.showShareMenuViewInWindow { (platformType, userinfo) in
            
        }
        
    }
    
    
    
}
