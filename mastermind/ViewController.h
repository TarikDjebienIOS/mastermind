//
//  ViewController.h
//  mastermind
//
//  Created by Tarik Djebien on 06/02/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int nombreChoisi;
}
@property (weak, nonatomic) IBOutlet UITextField *saisie;
@property (weak, nonatomic) IBOutlet UITextView *resultats;

- (IBAction)autrenombre:(id)sender;
- (IBAction)saisieReturn:(id)sender;
@end
