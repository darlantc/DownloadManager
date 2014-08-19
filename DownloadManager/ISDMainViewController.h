//
//  ISDMainViewController.h
//  DownloadManager
//
//  Created by Darlan ten Caten on 10/08/14.
//  Copyright (c) 2014 i9 Soluções Digitais. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ISDViewController.h"

@interface ISDMainViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)apagarImagem:(id)sender;
- (IBAction)openDownloadView:(id)sender;
- (IBAction)loadImage:(id)sender;

@end
