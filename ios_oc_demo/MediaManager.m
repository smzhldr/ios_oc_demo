//
//  NSObject+MediaManager.m
//  ios_oc_demo
//
//  Created by Lvlingling on 2021/6/19.
//

#import "MediaManager.h"
#import <MediaPlayer/MediaPlayer.h>


static MediaManager* instacnce;

@implementation MediaManager


+ (MediaManager *)getInstance {
    if (instacnce == nil) {
        instacnce = [[MediaManager alloc] init];
    }
    return instacnce;
}

- (NSArray<SongModel *> *) loadLocalSong {
    NSMutableArray<SongModel *> *songList = [[NSMutableArray alloc] init];
//
//    MPMediaQuery *quert = [MPMediaQuery songsQuery];
//    NSArray<MPMediaItem *> *itemsFromArtistQuery = [quert items];
//    for (MPMediaItem *item in itemsFromArtistQuery) {
//        NSLog(@"song name: %@, singer name %@, path %@", item.title, item.artist, [item valueForProperty: MPMediaItemPropertyAssetURL]);
//        [songList addObject:[[SongModel alloc] initWithValue:item.title singerName:item.artist]];
//
//    }
//    NSArray<MPMediaItemCollection *> *collections = [quert collections];
//    for (MPMediaItem *item in [collections _items]) {
//        for (MPMediaItem *sub_item in item) {
//            NSLog(@"song name: %@, singer name %@, other %@", sub_item.albumArtist, sub_item.artist, sub_item.title);
//        }
//    }

    for (int i = 0; i < 20; i++) {
        [songList addObject:[[SongModel alloc] initWithValue: i songName:@"Just Beat!" singerName:@"TheDesertFox"]];
    }
    return songList;
}

@end
