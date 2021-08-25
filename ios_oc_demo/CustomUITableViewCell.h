//
//  UITableViewCell+LD.h
//  ios_oc_demo
//
//  Created by Lvlingling on 2021/6/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomUITableViewCell:UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *singerImageView;

@property (weak, nonatomic) IBOutlet UILabel *songNameView;
@property (weak, nonatomic) IBOutlet UILabel *singerNameView;

@end

NS_ASSUME_NONNULL_END
