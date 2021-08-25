//
//  ViewController.m
//  ios_oc_demo
//
//  Created by Lvlingling on 2021/5/7.
//

#import "ViewController.h"
#import "CustomUITableViewCell.h"
#import <WHToast.h>
#import "MediaManager.h"

static NSString *identifier = @"TableViewCell";

@implementation ViewController {
    
}

-(void) onTableItemClick:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // 逻辑处理
    [WHToast showMessage:[NSString stringWithFormat: @"Now you clicked %ld th row", indexPath.row] duration:2 finishHandler:^{
       
    }];
}

- (void) onTableViewClick: (UIGestureRecognizer *)gestureRecognizer {
    CGPoint point = [gestureRecognizer locationInView:self.tableView];
    NSIndexPath *indexpath = [self.tableView indexPathForRowAtPoint:point];
    if ([self respondsToSelector:@selector(onTableItemClick:didSelectRowAtIndexPath:)]) {
        [self onTableItemClick:self.tableView didSelectRowAtIndexPath:indexpath];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType: AVMediaTypeAudio];
    if (status != AVAuthorizationStatusAuthorized && status != AVAuthorizationStatusNotDetermined) {
        [WHToast showMessage:@"未获取多媒体读写权限" duration:2 finishHandler:^{
            NSLog(@"省略n行代码");
        }];
    } else {
        [self loadData];
    }
    
    self._dataArr = [NSMutableArray array];
    CGRect myRect=[UIScreen mainScreen].bounds;
    CGFloat statusBarHeight = [[UIApplication sharedApplication] statusBarFrame].size.height;
    self.tableView.frame = CGRectMake(0, statusBarHeight + 44, myRect.size.width, myRect.size.height);
    self.tableView.rowHeight = 60;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTableViewClick:)];
    [self.tableView addGestureRecognizer:tapGesture];
}

- (void)loadData {
    self.tableDataArr = [[MediaManager getInstance] loadLocalSong];
}


-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableDataArr count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomUITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    cell.songNameView.text = [[self.tableDataArr objectAtIndex:indexPath.row] songName];
    cell.singerImageView.image = [UIImage imageNamed:@"likjTwKLueQhI"];
    cell.singerNameView.text = [[self.tableDataArr objectAtIndex:indexPath.row] singerName];
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView reloadData];
}

@end
