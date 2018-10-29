
#define Screen_width [UIScreen mainScreen].bounds.size.width
#define Screen_height [UIScreen mainScreen].bounds.size.height
//自己的版本号
#define VersionString [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

#define NavHeight (Screen_height == 812.0 ? 88 : 64)
#define NavHeightNew 44
#define TabbarHeight 49
#define iphonexHeight (Screen_height == 812.0 ? 24 : 0)

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

/*
 ------------------------app内发通知---------------
 */
#define updateLocation @"updateLocation"
#define locationFailUpLocation @"loctatinFail"

/*
 ------------------------app内发通知---------------
 */
//上一级刷新数据
typedef void(^DYRefesh)(void);

/*
 ------------------------域名----------------------
 */

//接口  判断1 是生产环境   2是内网环境  3开发测试环境
#define debug 3

#if debug == 1

#define JUPUSHPRODUCTION 1//这个是用来切换极光推送的证书环境0 (默认值)表示采用的是开发证书，1 表示采用生产证书发布应用。 

#define DAYIKEJI_USER @"https://os.benefitech.cn/sdpapp"


#elif debug == 2 //http://192.168.0.106 测试专用 18208169896  http://inner.benefitech.cn:8080/bc/portal/login# 

#define JUPUSHPRODUCTION 0

#define DAYIKEJI_USER @"https://inner.benefitech.cn/sdpapp"


#elif debug == 3


#define JUPUSHPRODUCTION 0

//#define DAYIKEJI_USER @"http://192.168.0.31/sdpapp" //后台服务器1004
//#define DAYIKEJI_USER @"http://192.168.102.242/sdpapp" //陈奉超
//#define DAYIKEJI_USER @"http://192.168.101.35/sdpapp" //李宪惠 1017
#define DAYIKEJI_USER @"http://192.168.0.34/sdpapp" //测试服  111 1091

#else


#endif
/*
 -----------------------枚举----------------------
 */
typedef enum : int {
    DYTASKDETAILTYPE_MYPLAN = 1,//待审批的
    DYTASKDETAILTYPE_DOING,//我负责的
    DYTASKDETAILTYPE_MYCREAT,//我创建的
    DYTASKDETAILTYPE_HISTORY,//巡检记录 历史计划
    DYTASKDETAILTYPE_RECT,//我整改的
    DYTASKDETAILTYPE_LOOKLOOK,//只能看不能操作
    DYTASKDETAILTYPE_ALREADY,//已处理
} DYTASKDETAILTYPE;

typedef enum : int {
    DYPLATFORMDETAILTYPE_QUALITY = 1,//质量
    DYPLATFORMDETAILTYPE_SECTITY,//安全
    DYPLATFORMDETAILTYPE_BUSINESS,//商务认证
    DYPLATFORMDETAILTYPE_TASK,//任务
    DYPLATFORMDETAILTYPE_CONTRACT,//合同
    DYPLATFORMDETAILTYPE_BADRECORD,//实名管理
    DYPLATFORMDETAILTYPE_VIDEO,//视频监控
    DYPLATFORMDETAILTYPE_EDUCATION,//三级教育
    DYPLATFORMDETAILTYPE_DISPUTES,//纠纷
    DYPLATFORMDETAILTYPE_SIGN,//考勤
    DYPLATFORMDETAILTYPE_ADDRESSBOOK,//通讯录
} DYPLATFORMDETAILTYPE;

// 二级菜单使用
typedef enum : int {
    AddressBookFoldingSectionStateFlod, // 折叠
    AddressBookFoldingSectionStateShow, // 打开
} AddressBookFoldingSectionState;

// 箭头的位置
typedef enum : int {
    AddressBookFoldingSectionHeaderArrowPositionLeft,
    AddressBookFoldingSectionHeaderArrowPositionRight,
} AddressBookFoldingSectionHeaderArrowPosition;


/*
 -----------------------三方key---------------------
 */

//友盟
#define UmengAppKey @"5a29f589f29d981051000106"
#define UmengChannel @"APPSTORE"

#define JPUSHAPPKEY @"2bbfca18924af1ed8c010571"//极光推送的key
#define JPUSHAPPUSERID @"notfionJpushid"//通知发送绑定别名
#define JPUSHDELETEUSERID @"deletenotfiinjpushid"//清楚绑定的别名
#define DYLOGINREFRESH @"DYLOGINREFRESH_DAYIKEJI"//清楚绑定的别名

#define BAIDUMAPKEY @"uREAf649bOzkRl24uzuk94GLzSrlbe2c"//百度地图

/*
 -----------------------颜色-----------------------
 */

//纯白色
#define whiteColorAlpha @"ffffff"
#define coustomWhiteColor [UIColor colorWithHex:0xffffff]
#define textDark [UIColor colorWithHex:0x999999]
#define NAVBlue [UIColor colorWithHex:0xe9ef5]
#define tableviewBackColor [UIColor colorWithHex:0x5f5f9]
#define tableviewLine [UIColor colorWithHex:0xdddddd]
#define textBlackColor [UIColor colorWithHex:0x333333]

/*
 -----------------------默认图片-----------------------
 */

#define DEFAULTIMAGE [UIImage imageNamed:@"default_noimg"]
