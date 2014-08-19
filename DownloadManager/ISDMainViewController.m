//
//  ISDMainViewController.m
//  DownloadManager
//
//  Created by Darlan ten Caten on 10/08/14.
//  Copyright (c) 2014 i9 Soluções Digitais. All rights reserved.
//

#import "ISDMainViewController.h"

@interface ISDMainViewController ()

@end

@implementation ISDMainViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString: @"DownloadViewSegue"]) {
        
    }
}

#pragma mark - ISDViewControllerDelegate
-(void)didCloseDownloadView {
    NSLog(@"fechou download View");
    [self loadImage];
}

#pragma mark - MyMethods
-(void)loadImage {
    NSString* imagePath = [DOCUMENTS_DIR stringByAppendingPathComponent:[NSString stringWithFormat:@"sushi.JPG"]];
    self.imageView.image = [UIImage imageWithContentsOfFile:imagePath];
}

#pragma mark - IBActions
- (IBAction)apagarImagem:(id)sender {
    NSString* imagePath = [DOCUMENTS_DIR stringByAppendingPathComponent:[NSString stringWithFormat:@"sushi.JPG"]];
    [[NSFileManager defaultManager] removeItemAtPath:imagePath error:nil];
    self.imageView.image = nil;
}

- (IBAction)openDownloadView:(id)sender {
    [self performSegueWithIdentifier:@"DownloadViewSegue" sender:self];
}

- (IBAction)loadImage:(id)sender {
    [self loadImage];
}

#pragma mark - ViewLifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
