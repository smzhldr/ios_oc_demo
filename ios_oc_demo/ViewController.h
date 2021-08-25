//
//  ViewController.h
//  ios_oc_demo
//
//  Created by Lvlingling on 2021/5/7.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
#import "SongModel.h"

@interface ViewController : UIViewController<UITableViewDelegate,           UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(copy, nonatomic) NSArray<SongModel *> *tableDataArr;
@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;

@property (strong, nonatomic) MPMediaPropertyPredicate *albumNamePredicate;

@property(strong, nonatomic) NSMutableArray *_dataArr;

- (void)loadData;
@end

