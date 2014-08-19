//
//  ISDAppDelegate.h
//  DownloadManager
//
//  Created by Darlan ten Caten on 10/08/14.
//  Copyright (c) 2014 i9 Soluções Digitais. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ISDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (copy) void (^backgroundSessionCompletionHandler)();

@end
