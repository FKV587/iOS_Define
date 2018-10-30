
#define Screen_width [UIScreen mainScreen].bounds.size.width
#define Screen_height [UIScreen mainScreen].bounds.size.height
//自己的版本号
#define VersionString [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

#define NavHeight (Screen_height == 812.0 ? 88 : 64)
#define NavHeightNew 44
#define TabbarHeight 49
#define iphonexHeight (Screen_height == 812.0 ? 24 : 0)

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

#ifndef weakify
#define weakify(object) try{} @finally{} {} __weak __typeof__(object) weak##_##object = object;
#endif

#ifndef strongify
#define strongify(object) try{} @finally{} __typeof__(object) object = weak##_##object;
#endif

/*
 ------------------------app内发通知---------------
 */
//上一级刷新数据
typedef void(^DYRefesh)(void);

typedef void(^successHandler)(id data);
typedef void(^errorHandler)(id data);
typedef void(^failHandler)(id error);

/*
 -----------------------颜色-----------------------
 */
//纯白色
#define whiteColorAlpha @"ffffff"
#define coustomWhiteColor [UIColor colorWithHex:0xffffff]
#define textDark [UIColor colorWithHex:0x999999]
#define NAVBlue [UIColor colorWithHex:0xe9ef5]
#define tableviewBackColor [UIColor colorWithHex:0xf5f5f9]
#define tableviewLine [UIColor colorWithHex:0xdddddd]
#define textBlackColor [UIColor colorWithHex:0x333333]

/*
 -----------------------默认图片-----------------------
 */

#define DEFAULTIMAGE [UIImage imageNamed:@"default_noimg"]
