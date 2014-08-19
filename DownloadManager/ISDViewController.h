//
//  ISDViewController.h
//  DownloadManager
//
//  Created by Darlan ten Caten on 10/08/14.
//  Copyright (c) 2014 i9 Soluções Digitais. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ISDViewController : UIViewController <NSURLSessionDelegate, NSURLSessionTaskDelegate, NSURLSessionDownloadDelegate>
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
- (IBAction)startDownload:(id)sender;

@property (nonatomic) NSURLSession *session;
@property (nonatomic) NSURLSessionDownloadTask *downloadTask;

@end
