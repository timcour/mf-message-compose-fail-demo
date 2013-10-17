//
//  CRViewController.h
//  CRIMessageFail
//
//  Created by Timothy Courrejou on 10/17/13.
//  Copyright (c) 2013 Camino Real Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CRViewController : UIViewController
@property (nonatomic, retain) IBOutlet UIImageView *imageView;

- (IBAction)nextPressed:(id)sender;
- (IBAction)sendPressed:(id)sender;
@end
