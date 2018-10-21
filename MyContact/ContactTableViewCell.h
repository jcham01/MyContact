//
//  ContactTableViewCell.h
//  MyContact
//
//  Created by Julien on 12/10/2018.
//  Copyright © 2018 Julien. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ContactTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel    *prenomLbl;
@property (nonatomic, weak) IBOutlet UILabel    *nameLbl;

@end

NS_ASSUME_NONNULL_END

