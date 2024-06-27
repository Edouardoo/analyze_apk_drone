.class public Lcom/hfufo/rxdrone/ManualCtrlActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ManualCtrlActivity.java"

# interfaces
.implements Lcom/fh/util/IConstants;
.implements Lcom/fh/util/IActions;
.implements Lcom/jieli/lib/stream/util/ICommon;
.implements Lcom/fh/util/FlyCommand;
.implements Lcom/jieli/lib/stream/interfaces/OnRecordListener;
.implements Lcom/videooperate/utils/VideoManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;,
        Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL_TIME:I = 0x258

.field private static final DEFAULT_VIDEO_SIZE:J = 0x6400000L

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final MSG_BROWSE_FILE:I = 0xabc2

.field private static final MSG_TAKE_PHOTO:I = 0xabc1

.field private static final MSG_TAKE_VIDEO:I = 0xabc0

.field private static final MSG_UPDATE_RECORDING_UI:I = 0xabc3

.field public static PBStartTime:J = 0x0L

.field public static PBStopTime:J = 0x0L

.field private static final REC_PATH:Ljava/lang/String; = "/DCIM/Camera"

.field public static final SCALE_MAX:F = 4.0f

.field private static final SCALE_MIN:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "PreviewActivityTAG"


# instance fields
.field public MAX_VID_DURATION:I

.field private final MSG_NET_RECONNECT:I

.field private Recording:Z

.field private aa:J

.field private addFrameCount:I

.field private arm:Z

.field private avcCodec:Lcom/hfufo/widget/AvcEncoder;

.field private bFirstFrame_video:Z

.field private bb:J

.field private bmp:Landroid/graphics/Bitmap;

.field private final body_model:I

.field private booleanConnect:Z

.field private btn_speed:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00d3
    .end annotation
.end field

.field private cBodyWidth:F

.field private cPalmWidth:F

.field private calibration:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00b8
    .end annotation
.end field

.field private cameraType:Z

.field canLand:Z

.field private canRecord:Z

.field private candete:Z

.field private channel1:B

.field private channel2:B

.field private classicLeft:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0129
    .end annotation
.end field

.field private classicRight:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f012c
    .end annotation
.end field

.field private classicalSend:Z

.field color:Ljava/lang/String;

.field colorG:Ljava/lang/String;

.field private con_back:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f007d
    .end annotation
.end field

.field private con_body:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00c9
    .end annotation
.end field

.field private con_drawline:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00c1
    .end annotation
.end field

.field private con_face:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00bc
    .end annotation
.end field

.field private con_file:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f013a
    .end annotation
.end field

.field private con_file1:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00cc
    .end annotation
.end field

.field private con_filter:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00b0
    .end annotation
.end field

.field private con_fix:Landroid/widget/Button;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00c8
    .end annotation
.end field

.field private con_hide:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00cd
    .end annotation
.end field

.field private con_land:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00e1
    .end annotation
.end field

.field private con_menu:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00bf
    .end annotation
.end field

.field private con_music:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00bd
    .end annotation
.end field

.field private con_music_select:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00ce
    .end annotation
.end field

.field con_panorama:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00c4
    .end annotation
.end field

.field private con_return:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00c6
    .end annotation
.end field

.field private con_rev:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f013b
    .end annotation
.end field

.field private con_rockercon:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00d6
    .end annotation
.end field

.field private con_rotate:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00d2
    .end annotation
.end field

.field private con_stop:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00e2
    .end annotation
.end field

.field private con_takeoff:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00df
    .end annotation
.end field

.field con_tips:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00f1
    .end annotation
.end field

.field con_tips1:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00f8
    .end annotation
.end field

.field private currentSizePosition:I

.field current_time:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f008d
    .end annotation
.end field

.field private dataHeight:I

.field private dataWidth:I

.field private degreeSelf:I

.field private deviceDefinition:Ljava/lang/String;

.field private deviceRTSize:Ljava/lang/String;

.field private deviceVideoTime:I

.field private dm:Landroid/util/DisplayMetrics;

.field private down2CenterDistance:D

.field downTIme:I

.field private downX:F

.field private downY:F

.field downloadRunnable:Ljava/lang/Runnable;

.field private downloadSpeed:I

.field private download_progress:Lcom/hfufo/widget/MyProgressBar;

.field private drawline:Z

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private final face_model:I

.field private fileText:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00ba
    .end annotation
.end field

.field private filterNumber:I

.field firstRotate:Z

.field private flightMode:Z

.field private flyMode:Z

.field private flyText:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00e0
    .end annotation
.end field

.field private followFaceMode:Z

.field private followFlag:Z

.field private followPalm:Z

.field followRunnable:Ljava/lang/Runnable;

.field private frameCount:I

.field private frameRate:I

.field private gesture_thum:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00de
    .end annotation
.end field

.field private grayFlag:Z

.field private hRecFlag:Landroid/os/Handler;

.field private hRecTime:Landroid/os/Handler;

.field h_ac:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0124
    .end annotation
.end field

.field private handlerCallback:Landroid/os/Handler$Callback;

.field private hasFix:Z

.field private hide_layout:Landroid/widget/LinearLayout;

.field private holdHandler:Landroid/os/Handler;

.field holdRunnable:Ljava/lang/Runnable;

.field private inflater:Landroid/view/LayoutInflater;

.field private info:Landroid/content/pm/PackageInfo;

.field private initHeight:F

.field private initWidth:F

.field private is25RFirst:Z

.field private is720PFirst:Z

.field private isCmdSend:Z

.field private isFill:Z

.field private isFilter:Z

.field private isFlagShow:Z

.field private isHold:Z

.field private isInitData:Z

.field private isMVMode:Z

.field private isManual:Z

.field private isNeedZoomImg:Z

.field private isOpenFlash:Z

.field private isPanorama:Z

.field private isPanoramaA:Z

.field private isPhotoStyle:Z

.field private isPhotoTask:Z

.field private isRTSVoiceOpen:Z

.field private isRecOn:Z

.field private isRecording:Z

.field private isRev:Z

.field private isRoker:Z

.field private isRotate:Z

.field private isSelectRTSLevel:Z

.field private isShowPtz:Z

.field private isSpeed:I

.field private isTracker:I

.field private isVga:Z

.field private isVideoTask:Z

.field private isViewMode:Z

.field private isVr:Z

.field isfull:Z

.field private issave:Z

.field private ivMusicDel:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00cf
    .end annotation
.end field

.field private languageMode:I

.field private lastFileName:Ljava/lang/String;

.field private leftDown:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f012b
    .end annotation
.end field

.field private leftRDown:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f012e
    .end annotation
.end field

.field private leftRLeft:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f012f
    .end annotation
.end field

.field private leftRRight:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0130
    .end annotation
.end field

.field private leftRUp:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f012d
    .end annotation
.end field

.field private leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

.field private leftUp:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f012a
    .end annotation
.end field

.field private left_layout_hide:Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0092
    .end annotation
.end field

.field private leftmotion:Landroid/widget/Button;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0141
    .end annotation
.end field

.field private light:I

.field private ll_trim:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00e5
    .end annotation
.end field

.field lock_Gesture:Ljava/util/concurrent/locks/Lock;

.field private longPress:Z

.field private mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

.field private mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

.field public mApplication:Lcom/hfufo/rxdrone/MainApplication;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBufList:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

.field private mCommandManager:Lcom/micro/util/CommandManager;

.field private mCount:I

.field private mCountdown:Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;

.field private mCurTime:J

.field private mDetectionFace:Z

.field private mDetectionHand:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mExitTime:J

.field private mFirst:Z

.field private mGesture:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

.field mGestureInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHeightRatio:F

.field private mIActionListener:Lcom/jieli/lib/stream/udp/IActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jieli/lib/stream/udp/IActionListener",
            "<",
            "Lcom/fh/beans/StreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastTime:J

.field private mMat:Lorg/opencv/core/Mat;

.field private mMatGray:Lorg/opencv/core/Mat;

.field private mObject:Lorg/opencv/core/MatOfRect;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mPalmDetector:Lorg/opencv/utils/ObjectDetector;

.field private mReceiver:Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;

.field mRect:Landroid/graphics/Rect;

.field private mRectView:Lcom/hfufo/widget/RectView;

.field mRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshData:Z

.field private mState:I

.field mStep:I

.field private mTransMode:I

.field private mWheelRadius:I

.field private mWidthRatio:F

.field private mZoomImageThread:Lcom/fh/util/ZoomImageThread;

.field private manager:Landroid/content/pm/PackageManager;

.field private manualView:Lcom/hfufo/widget/ManualView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0140
    .end annotation
.end field

.field private masterRunnable:Ljava/lang/Runnable;

.field maxH:F

.field maxW:F

.field private menuShow:Z

.field private mjpegView:Lcom/hfufo/widget/MjpegView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0125
    .end annotation
.end field

.field private mjpegView1:Lcom/hfufo/widget/MjpegView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0126
    .end annotation
.end field

.field private modeText:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00d9
    .end annotation
.end field

.field private mode_layout:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00d8
    .end annotation
.end field

.field private motionBtn:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00c5
    .end annotation
.end field

.field private motionPress:Z

.field private motionView:Lcom/hfufo/widget/MotionView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00dd
    .end annotation
.end field

.field private move2CenterDistance:D

.field private musicProgress:Landroid/widget/SeekBar;

.field mvalue:I

.field private noCardRecordMax:I

.field private noCardRecording:Z

.field private noCardTaking:Z

.field private nohead:Z

.field oldAngleWidth:F

.field oldScaleWidth:F

.field oldVideoUrl:Ljava/lang/String;

.field private final onRTStreamListener:Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

.field onRectTouch:Landroid/view/View$OnTouchListener;

.field onRudderLTouch:Landroid/view/View$OnTouchListener;

.field onRudderRTouch:Landroid/view/View$OnTouchListener;

.field private onText:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00d7
    .end annotation
.end field

.field private onhead:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00c2
    .end annotation
.end field

.field private online:Z

.field private open_palmVideo:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00cb
    .end annotation
.end field

.field private opencvStitcher:Lcom/opencvstitcher/OpencvStitcher;

.field private operationgMode:I

.field private pScreenWidth:F

.field palmRect:Landroid/graphics/Rect;

.field private palmVideo:Z

.field private palm_follow:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00c7
    .end annotation
.end field

.field private panoN:I

.field private panoSpeed:I

.field private pathview:Lcom/hfufo/widget/PathView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00ea
    .end annotation
.end field

.field pcb:Lcom/fh/util/ProtocolCallback;

.field private photoSaveHeight:I

.field private photoSaveWidth:I

.field private pivotX:F

.field private pivotY:F

.field private pivotoldX:F

.field private pivotoldY:F

.field private final plam_model:I

.field private point_num:I

.field private protocol1:Lcom/fh/util/Protocol1;

.field private protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

.field private ptz_layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f009a
    .end annotation
.end field

.field private ptz_picture:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f009e
    .end annotation
.end field

.field rcRunnable:Ljava/lang/Runnable;

.field recFlagThread:Ljava/lang/Runnable;

.field recTimeThread:Ljava/lang/Runnable;

.field recordDir:Ljava/lang/String;

.field private record_flag:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00b3
    .end annotation
.end field

.field private resetRotaton:Z

.field private return_control:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00be
    .end annotation
.end field

.field private rightClassicLeft:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0131
    .end annotation
.end field

.field private rightClassicRight:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0134
    .end annotation
.end field

.field private rightDown:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0133
    .end annotation
.end field

.field private rightLDown:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0136
    .end annotation
.end field

.field private rightLLeft:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0137
    .end annotation
.end field

.field private rightLRight:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0138
    .end annotation
.end field

.field private rightLUp:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0135
    .end annotation
.end field

.field private rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

.field private rightUp:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0132
    .end annotation
.end field

.field private right_layout_hide:Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0093
    .end annotation
.end field

.field private rightmode:Z

.field private rightmotion:Landroid/widget/Button;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0142
    .end annotation
.end field

.field private rl_manual:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f013f
    .end annotation
.end field

.field private rl_rec_time:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00b1
    .end annotation
.end field

.field private rocker_hide:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0094
    .end annotation
.end field

.field private rollView:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00b7
    .end annotation
.end field

.field private rotationSense:Z

.field private rotationSpeed:D

.field private rudderLessX:F

.field private rudderLessY:F

.field private runnable_save_video:Ljava/lang/Runnable;

.field private savePhotoName:Ljava/lang/String;

.field private savePhotoPath:Ljava/lang/String;

.field private scaleSelf:F

.field private scaleSense:Z

.field scaleWidth:F

.field scale_num:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f008c
    .end annotation
.end field

.field private secondCount:I

.field selectedMusic:Z

.field private sendData:Z

.field private sendFlag:Z

.field private sendHandler:Landroid/os/Handler;

.field private sendThread:Landroid/os/HandlerThread;

.field private serialHandle:I

.field private setLanguage:Lcom/fh/util/SettingChange;

.field shace:Z

.field song:Lcom/videooperate/bean/Song;

.field private sp:Landroid/content/SharedPreferences;

.field private speed:I

.field private splitNumber:I

.field stop:Z

.field private switchCamera:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f013d
    .end annotation
.end field

.field private switchCamera2:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0139
    .end annotation
.end field

.field private takephoto:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00d4
    .end annotation
.end field

.field private takevideo:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00d5
    .end annotation
.end field

.field private thumRunnable:Ljava/lang/Runnable;

.field time:I

.field private timeHandler:Landroid/os/Handler;

.field timerunnable:Ljava/lang/Runnable;

.field tip_image1:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00f2
    .end annotation
.end field

.field tip_image2:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00f5
    .end annotation
.end field

.field tip_text1:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00f3
    .end annotation
.end field

.field tip_text2:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00f6
    .end annotation
.end field

.field tip_text3:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00f4
    .end annotation
.end field

.field private topRudder:Lcom/hfufo/widget/LeftRockerBgView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f0128
    .end annotation
.end field

.field totalTimeD:I

.field total_time:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f008e
    .end annotation
.end field

.field private tranRudder:Lcom/hfufo/widget/TranRockerBgView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f009f
    .end annotation
.end field

.field private trim1:Lcom/hfufo/widget/MicroTrimView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00e6
    .end annotation
.end field

.field private trim1CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

.field private trim2:Lcom/hfufo/widget/MicroTrimView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00e7
    .end annotation
.end field

.field private trim2CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

.field private trim3:Lcom/hfufo/widget/MicroTrimView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00e9
    .end annotation
.end field

.field private trim3CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

.field private trim4:Lcom/hfufo/widget/MicroTrimView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00e8
    .end annotation
.end field

.field private trim4CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

.field private tvBitRate:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f01b3
    .end annotation
.end field

.field private tvFPS:Landroid/widget/TextView;

.field private tvMusicName:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00b2
    .end annotation
.end field

.field private tvRecTime:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00b4
    .end annotation
.end field

.field private tv_time:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f013e
    .end annotation
.end field

.field private twoPointDistance:D

.field private final unknow_model:I

.field private final v_plam_model:I

.field private videoHeight:I

.field private videoSaveHeight:I

.field private videoSaveWidth:I

.field private videoWidth:I

.field private view:Landroid/view/View;

.field viewTouch:Landroid/view/View$OnTouchListener;

.field private vr:Landroid/widget/ImageView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00c3
    .end annotation
.end field

.field waitting:Landroid/widget/TextView;
    .annotation runtime Lcom/micro/view/annotation/ViewInject;
        value = 0x7f0f00eb
    .end annotation
.end field

.field private workHandler:Landroid/os/Handler;

.field private xLeftEvent:F

.field private xRightEvent:F

.field private xuanRunnable:Ljava/lang/Runnable;

.field private yLeftEvent:F

.field private yRightEvent:F

.field private yuvtest:Z

.field private zoomRecording:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 172
    sput-wide v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->PBStartTime:J

    .line 173
    sput-wide v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->PBStopTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x500

    const/16 v1, 0x2d0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 163
    iput v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoWidth:I

    .line 164
    iput v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoHeight:I

    .line 168
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRecOn:Z

    .line 169
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->secondCount:I

    .line 225
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hasFix:Z

    .line 354
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followFlag:Z

    .line 412
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isFill:Z

    .line 414
    iput v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mTransMode:I

    .line 417
    new-instance v0, Lcom/fh/util/Protocol1;

    invoke-direct {v0}, Lcom/fh/util/Protocol1;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    .line 418
    new-instance v0, Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-direct {v0}, Lcom/fh/util/ProtocolOfQuanzhi;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    .line 419
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isManual:Z

    .line 461
    new-instance v0, Lcom/fh/util/ProtocolCallback;

    invoke-direct {v0}, Lcom/fh/util/ProtocolCallback;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pcb:Lcom/fh/util/ProtocolCallback;

    .line 482
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flightMode:Z

    .line 485
    iput v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->dataWidth:I

    .line 486
    iput v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->dataHeight:I

    .line 487
    iput v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoSaveWidth:I

    .line 488
    iput v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoSaveHeight:I

    .line 489
    iput v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->photoSaveWidth:I

    .line 490
    iput v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->photoSaveHeight:I

    .line 491
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->light:I

    .line 492
    const/16 v0, 0xf

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->frameRate:I

    .line 493
    const/16 v0, 0x1e

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardRecordMax:I

    .line 494
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->deviceVideoTime:I

    .line 495
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isViewMode:Z

    .line 496
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardRecording:Z

    .line 497
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardTaking:Z

    .line 498
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isOpenFlash:Z

    .line 499
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isCmdSend:Z

    .line 500
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->cameraType:Z

    .line 501
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRTSVoiceOpen:Z

    .line 502
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isPhotoStyle:Z

    .line 503
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVideoTask:Z

    .line 504
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isPhotoTask:Z

    .line 505
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isInitData:Z

    .line 506
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->is720PFirst:Z

    .line 507
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->is25RFirst:Z

    .line 508
    const-string v0, "0"

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->deviceRTSize:Ljava/lang/String;

    .line 510
    const-string v0, "5"

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->deviceDefinition:Ljava/lang/String;

    .line 521
    iput v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->currentSizePosition:I

    .line 526
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendData:Z

    .line 527
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$1;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rcRunnable:Ljava/lang/Runnable;

    .line 556
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$2;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$2;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followRunnable:Ljava/lang/Runnable;

    .line 573
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downTIme:I

    .line 574
    const/16 v0, 0xa

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->totalTimeD:I

    .line 575
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downloadSpeed:I

    .line 587
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$3;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downloadRunnable:Ljava/lang/Runnable;

    .line 609
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rotationSense:Z

    .line 610
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scaleSense:Z

    .line 614
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$4;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    .line 661
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$5;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$5;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    .line 675
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$6;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$6;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->masterRunnable:Ljava/lang/Runnable;

    .line 685
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$7;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$7;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->thumRunnable:Ljava/lang/Runnable;

    .line 697
    const/16 v0, 0xf1

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->MSG_NET_RECONNECT:I

    .line 700
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$8;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->handlerCallback:Landroid/os/Handler$Callback;

    .line 790
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$9;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    .line 909
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCount:I

    .line 910
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->candete:Z

    .line 1702
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isNeedZoomImg:Z

    .line 1704
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->frameCount:I

    .line 1705
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->addFrameCount:I

    .line 1772
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->zoomRecording:Z

    .line 1773
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$11;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mIActionListener:Lcom/jieli/lib/stream/udp/IActionListener;

    .line 1811
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->Recording:Z

    .line 1812
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1813
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$12;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->runnable_save_video:Ljava/lang/Runnable;

    .line 1886
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$13;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onRTStreamListener:Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

    .line 2175
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRefreshData:Z

    .line 2176
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->bFirstFrame_video:Z

    .line 2180
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->lock_Gesture:Ljava/util/concurrent/locks/Lock;

    .line 2181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mGestureInfos:Ljava/util/List;

    .line 2182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRects:Ljava/util/List;

    .line 2183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    .line 2184
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmRect:Landroid/graphics/Rect;

    .line 2192
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionFace:Z

    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mFirst:Z

    .line 2321
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->color:Ljava/lang/String;

    .line 2322
    const-string v0, "R"

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->colorG:Ljava/lang/String;

    .line 2540
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$16;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$16;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onRectTouch:Landroid/view/View$OnTouchListener;

    .line 2549
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$17;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$17;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onRudderLTouch:Landroid/view/View$OnTouchListener;

    .line 2558
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$18;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$18;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onRudderRTouch:Landroid/view/View$OnTouchListener;

    .line 2568
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$19;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$19;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->viewTouch:Landroid/view/View$OnTouchListener;

    .line 2576
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isTracker:I

    .line 2732
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->point_num:I

    .line 2736
    iput v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downX:F

    .line 2737
    iput v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downY:F

    .line 2744
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->resetRotaton:Z

    .line 2921
    const/16 v0, 0x27c

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    .line 3420
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->shace:Z

    .line 3422
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->timeHandler:Landroid/os/Handler;

    .line 3423
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$25;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$25;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->timerunnable:Ljava/lang/Runnable;

    .line 3460
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$26;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$26;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recTimeThread:Ljava/lang/Runnable;

    .line 3474
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$27;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$27;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recFlagThread:Ljava/lang/Runnable;

    .line 3719
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canLand:Z

    .line 3736
    iput v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->face_model:I

    .line 3737
    const/4 v0, 0x2

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->body_model:I

    .line 3738
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->unknow_model:I

    .line 3739
    const/4 v0, 0x4

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->plam_model:I

    .line 3740
    const/4 v0, 0x5

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->v_plam_model:I

    .line 3741
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    .line 3903
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followPalm:Z

    .line 3962
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRoker:Z

    .line 4142
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isSpeed:I

    .line 4174
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isfull:Z

    .line 4189
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmVideo:Z

    .line 4224
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followFaceMode:Z

    .line 4390
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRecording:Z

    .line 4391
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canRecord:Z

    .line 4887
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$35;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->trim1CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .line 4912
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$36;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$36;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->trim2CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .line 4940
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$37;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$37;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->trim3CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .line 4956
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$38;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$38;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->trim4CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .line 5132
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->booleanConnect:Z

    .line 5133
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->longPress:Z

    .line 5134
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionPress:Z

    .line 5135
    const/16 v0, -0x5b

    iput-byte v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->channel1:B

    .line 5136
    const/16 v0, 0x55

    iput-byte v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->channel2:B

    .line 5137
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->classicalSend:Z

    .line 6232
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->MAX_VID_DURATION:I

    .line 6233
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->selectedMusic:Z

    .line 6235
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scaleWidth:F

    .line 6236
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldScaleWidth:F

    .line 6237
    iput v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldAngleWidth:F

    .line 6240
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->filterNumber:I

    .line 6241
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->splitNumber:I

    .line 6243
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isMVMode:Z

    .line 6314
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRotate:Z

    .line 6315
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->firstRotate:Z

    .line 6339
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isFilter:Z

    .line 6438
    iput v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rudderLessX:F

    .line 6439
    iput v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rudderLessY:F

    .line 6440
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isShowPtz:Z

    .line 6499
    iput v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pivotX:F

    .line 6500
    iput v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pivotY:F

    .line 6501
    iput v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pivotoldX:F

    .line 6502
    iput v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pivotoldY:F

    return-void
.end method

.method private LongTouchSendCmd(Landroid/app/Activity;ILandroid/view/MotionEvent;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "c"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v10, 0x7f02007c

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, -0x80

    const/16 v6, 0x80

    .line 5141
    const-string v2, "ddggpp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread38:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",main:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5150
    const/4 v1, 0x0

    .line 5151
    .local v1, "longPressSendCmdThread":Ljava/lang/Thread;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5270
    :goto_0
    return-void

    .line 5153
    :pswitch_0
    iput-boolean v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->longPress:Z

    .line 5154
    iput-boolean v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->classicalSend:Z

    .line 5156
    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;

    .end local v1    # "longPressSendCmdThread":Ljava/lang/Thread;
    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/ManualCtrlActivity$53;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)V

    .line 5226
    .restart local v1    # "longPressSendCmdThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 5230
    :pswitch_1
    iput-boolean v9, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionPress:Z

    .line 5231
    iput-boolean v9, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->longPress:Z

    .line 5233
    if-eqz v1, :cond_0

    .line 5234
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 5236
    :cond_0
    move v0, p2

    .line 5237
    .local v0, "cmd":I
    if-eqz v0, :cond_1

    if-ne v0, v8, :cond_2

    .line 5238
    :cond_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v2, v7}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 5247
    :goto_1
    iget-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmode:Z

    if-eqz v2, :cond_3

    .line 5248
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/hfufo/widget/ManualView;->setLeftRudderPoint(Landroid/graphics/Point;)V

    .line 5253
    :goto_2
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftUp:Landroid/widget/ImageView;

    const v3, 0x7f020083

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5254
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftDown:Landroid/widget/ImageView;

    const v3, 0x7f0200a6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5255
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5256
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRRight:Landroid/widget/ImageView;

    const v3, 0x7f020090

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5257
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRUp:Landroid/widget/ImageView;

    const v3, 0x7f020085

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5258
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRDown:Landroid/widget/ImageView;

    const v3, 0x7f0200a5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5260
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightUp:Landroid/widget/ImageView;

    const v3, 0x7f020083

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5261
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightDown:Landroid/widget/ImageView;

    const v3, 0x7f0200a6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5262
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightLLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5263
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightLRight:Landroid/widget/ImageView;

    const v3, 0x7f020090

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5264
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightLUp:Landroid/widget/ImageView;

    const v3, 0x7f020085

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5265
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightLDown:Landroid/widget/ImageView;

    const v3, 0x7f0200a5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 5242
    :cond_2
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v2, v7}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 5243
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v2, v7}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto :goto_1

    .line 5251
    :cond_3
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/hfufo/widget/ManualView;->setRightRudderPoint(Landroid/graphics/Point;)V

    goto :goto_2

    .line 5151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    return v0
.end method

.method static synthetic access$100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/Protocol1;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rotationSense:Z

    return v0
.end method

.method static synthetic access$10000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/ManualView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->grayFlag:Z

    return v0
.end method

.method static synthetic access$10200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isSpeed:I

    return v0
.end method

.method static synthetic access$10300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionPress:Z

    return v0
.end method

.method static synthetic access$10302(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionPress:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->timeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10508(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->secondCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->secondCount:I

    return v0
.end method

.method static synthetic access$10600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tvRecTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hRecTime:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isFlagShow:Z

    return v0
.end method

.method static synthetic access$10802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isFlagShow:Z

    return p1
.end method

.method static synthetic access$10900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->record_flag:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->degreeSelf:I

    return v0
.end method

.method static synthetic access$11000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hRecFlag:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->degreeSelf:I

    return p1
.end method

.method static synthetic access$11100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isShowPtz:Z

    return v0
.end method

.method static synthetic access$11200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showPtz()V

    return-void
.end method

.method static synthetic access$11300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hideFlyMode()V

    return-void
.end method

.method static synthetic access$11500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRoker:Z

    return v0
.end method

.method static synthetic access$11600(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rockercon(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setPalmFollow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->openPalmVideo(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hideMenu()V

    return-void
.end method

.method static synthetic access$1200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rotationSpeed:D

    return-wide v0
.end method

.method static synthetic access$12002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->menuShow:Z

    return p1
.end method

.method static synthetic access$12102(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followFaceMode:Z

    return p1
.end method

.method static synthetic access$12200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->startDetectionFace()V

    return-void
.end method

.method static synthetic access$12300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->modeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_menu:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->return_control:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->masterRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scaleSelf:F

    return v0
.end method

.method static synthetic access$13002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scaleSelf:F

    return p1
.end method

.method static synthetic access$13100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/AvcEncoder;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    return-object v0
.end method

.method static synthetic access$13202(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canRecord:Z

    return p1
.end method

.method static synthetic access$13300(Lcom/hfufo/rxdrone/ManualCtrlActivity;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pushData(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$13400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showDownload()V

    return-void
.end method

.method static synthetic access$13500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/opencvstitcher/OpencvStitcher;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->opencvStitcher:Lcom/opencvstitcher/OpencvStitcher;

    return-object v0
.end method

.method static synthetic access$13602(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->panoN:I

    return p1
.end method

.method static synthetic access$13700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->savePhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13702(Lcom/hfufo/rxdrone/ManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->savePhotoPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->issave:Z

    return v0
.end method

.method static synthetic access$13900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scaleSense:Z

    return v0
.end method

.method static synthetic access$14000(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/app/Activity;ILandroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->LongTouchSendCmd(Landroid/app/Activity;ILandroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scaleSense:Z

    return p1
.end method

.method static synthetic access$14100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftUp:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftDown:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRUp:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRDown:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightUp:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightDown:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightLLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setScaleOfIjk(F)V

    return-void
.end method

.method static synthetic access$15000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightLRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightLUp:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightLDown:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->classicalSend:Z

    return v0
.end method

.method static synthetic access$15400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->longPress:Z

    return v0
.end method

.method static synthetic access$15500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)B
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-byte v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->channel1:B

    return v0
.end method

.method static synthetic access$15600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)B
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-byte v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->channel2:B

    return v0
.end method

.method static synthetic access$15700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setZhongli()V

    return-void
.end method

.method static synthetic access$15800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->musicProgress:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$15900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRotate:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    return-object v0
.end method

.method static synthetic access$16000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->filterNumber:I

    return v0
.end method

.method static synthetic access$16002(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->filterNumber:I

    return p1
.end method

.method static synthetic access$16100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_filter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$16202(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->splitNumber:I

    return p1
.end method

.method static synthetic access$16300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/TranRockerBgView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tranRudder:Lcom/hfufo/widget/TranRockerBgView;

    return-object v0
.end method

.method static synthetic access$16400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rudderLessX:F

    return v0
.end method

.method static synthetic access$16402(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rudderLessX:F

    return p1
.end method

.method static synthetic access$16500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rudderLessY:F

    return v0
.end method

.method static synthetic access$16502(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rudderLessY:F

    return p1
.end method

.method static synthetic access$16600(Lcom/hfufo/rxdrone/ManualCtrlActivity;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setSelfPivot(FF)V

    return-void
.end method

.method static synthetic access$1700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->calibration:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rollView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_return:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/RectView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_face:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->gesture_thum:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isHold:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/micro/util/CommandManager;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandManager:Lcom/micro/util/CommandManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVideoTask:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVideoTask:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isPhotoTask:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isPhotoTask:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lcom/videooperate/bean/Song;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Lcom/videooperate/bean/Song;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mergeLocationVideo(Lcom/videooperate/bean/Song;)V

    return-void
.end method

.method static synthetic access$300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/CommandHub;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isPanoramaA:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isPanoramaA:Z

    return p1
.end method

.method static synthetic access$302(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lcom/jieli/lib/stream/tools/CommandHub;)Lcom/jieli/lib/stream/tools/CommandHub;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Lcom/jieli/lib/stream/tools/CommandHub;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tv_time:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->candete:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->candete:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->takevideo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->takephoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->takePhoto(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3702(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mState:I

    return p1
.end method

.method static synthetic access$3800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardRecording:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardRecording:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardTaking:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardTaking:Z

    return p1
.end method

.method static synthetic access$400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isOpenFlash:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isOpenFlash:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->syncDeviceStatus()V

    return-void
.end method

.method static synthetic access$4300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVr:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MjpegView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView1:Lcom/hfufo/widget/MjpegView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onRTStreamListener:Lcom/jieli/lib/stream/interfaces/OnRTStreamListener;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->savePlayState()V

    return-void
.end method

.method static synthetic access$4700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->dataHeight:I

    return v0
.end method

.method static synthetic access$4702(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->dataHeight:I

    return p1
.end method

.method static synthetic access$4800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isCmdSend:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isCmdSend:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isSelectRTSLevel:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isSelectRTSLevel:Z

    return p1
.end method

.method static synthetic access$500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->dataWidth:I

    return v0
.end method

.method static synthetic access$5002(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->dataWidth:I

    return p1
.end method

.method static synthetic access$5100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->light:I

    return v0
.end method

.method static synthetic access$5102(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->light:I

    return p1
.end method

.method static synthetic access$5200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->deviceRTSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/hfufo/rxdrone/ManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->deviceRTSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->is720PFirst:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->is720PFirst:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->currentSizePosition:I

    return v0
.end method

.method static synthetic access$5502(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoSaveWidth:I

    return p1
.end method

.method static synthetic access$5602(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoSaveHeight:I

    return p1
.end method

.method static synthetic access$5700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->photoSaveWidth:I

    return v0
.end method

.method static synthetic access$5702(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->photoSaveWidth:I

    return p1
.end method

.method static synthetic access$5800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->photoSaveHeight:I

    return v0
.end method

.method static synthetic access$5802(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->photoSaveHeight:I

    return p1
.end method

.method static synthetic access$5900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isNeedZoomImg:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isNeedZoomImg:Z

    return p1
.end method

.method static synthetic access$600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/MyProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->download_progress:Lcom/hfufo/widget/MyProgressBar;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->is25RFirst:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->is25RFirst:Z

    return p1
.end method

.method static synthetic access$6102(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->frameRate:I

    return p1
.end method

.method static synthetic access$6200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->deviceDefinition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->savePhotoName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/hfufo/rxdrone/ManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->savePhotoName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/jieli/lib/stream/tools/AVIStreamer;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->frameCount:I

    return v0
.end method

.method static synthetic access$6508(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->frameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->frameCount:I

    return v0
.end method

.method static synthetic access$6602(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->zoomRecording:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->Recording:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->Recording:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lcom/fh/beans/StreamInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Lcom/fh/beans/StreamInfo;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->addZoomData(Lcom/fh/beans/StreamInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->thumRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mFirst:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mFirst:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWidthRatio:F

    return v0
.end method

.method static synthetic access$7302(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWidthRatio:F

    return p1
.end method

.method static synthetic access$7400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHeightRatio:F

    return v0
.end method

.method static synthetic access$7402(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHeightRatio:F

    return p1
.end method

.method static synthetic access$7502(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initHeight:F

    return p1
.end method

.method static synthetic access$7602(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->cBodyWidth:F

    return p1
.end method

.method static synthetic access$7702(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->cPalmWidth:F

    return p1
.end method

.method static synthetic access$7802(Lcom/hfufo/rxdrone/ManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pScreenWidth:F

    return p1
.end method

.method static synthetic access$7900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lorg/opencv/core/Mat;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mMat:Lorg/opencv/core/Mat;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Lorg/opencv/core/Mat;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mMat:Lorg/opencv/core/Mat;

    return-object p1
.end method

.method static synthetic access$800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isPanorama:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lorg/opencv/core/Mat;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mMatGray:Lorg/opencv/core/Mat;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Lorg/opencv/core/Mat;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mMatGray:Lorg/opencv/core/Mat;

    return-object p1
.end method

.method static synthetic access$802(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isPanorama:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->yuvtest:Z

    return v0
.end method

.method static synthetic access$8102(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->yuvtest:Z

    return p1
.end method

.method static synthetic access$8200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->panoSpeed:I

    return v0
.end method

.method static synthetic access$8202(Lcom/hfufo/rxdrone/ManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->panoSpeed:I

    return p1
.end method

.method static synthetic access$8300(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->saveMergePicture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionFace:Z

    return v0
.end method

.method static synthetic access$8600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isPhotoStyle:Z

    return v0
.end method

.method static synthetic access$8602(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isPhotoStyle:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->cameraType:Z

    return v0
.end method

.method static synthetic access$8702(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->cameraType:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRTSVoiceOpen:Z

    return v0
.end method

.method static synthetic access$8900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mGesture:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downloadSpeed:I

    return v0
.end method

.method static synthetic access$9000(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmVideo:Z

    return v0
.end method

.method static synthetic access$9002(Lcom/hfufo/rxdrone/ManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmVideo:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followPalm:Z

    return v0
.end method

.method static synthetic access$9200(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendFollowData(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/RockerBgView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmode:Z

    return v0
.end method

.method static synthetic access$9700(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/RockerBgView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Lcom/hfufo/widget/LeftRockerBgView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/hfufo/rxdrone/ManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/ManualCtrlActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followFlag:Z

    return v0
.end method

.method private addZoomData(Lcom/fh/beans/StreamInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/fh/beans/StreamInfo;

    .prologue
    .line 1757
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/fh/beans/StreamInfo;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    if-eqz v0, :cond_1

    .line 1758
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    invoke-virtual {v0, p1}, Lcom/fh/util/ZoomImageThread;->addData(Lcom/fh/beans/StreamInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->addFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->addFrameCount:I

    .line 1761
    :cond_0
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoom addZoomData : addFrameCount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->addFrameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    :cond_1
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 4387
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4388
    return-void
.end method

.method private back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f007d
        }
    .end annotation

    .prologue
    .line 4178
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->finish()V

    .line 4187
    return-void
.end method

.method private calibration(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00b8
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 3864
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 3877
    :goto_0
    return-void

    .line 3867
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->calibration()V

    .line 3868
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0}, Lcom/fh/util/ProtocolOfQuanzhi;->calibration()V

    .line 3869
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->calibration:Landroid/widget/ImageView;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3870
    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->isQuanzhi:Z

    if-eqz v0, :cond_1

    .line 3871
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "3"

    const-string v2, "0139"

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v4}, Lcom/fh/util/ProtocolOfQuanzhi;->packaging()[B

    move-result-object v4

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->toHex([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3876
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3873
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "3"

    const-string v2, "0139"

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v4}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v4

    invoke-static {v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->toHex([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method private cancelTimer()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 6018
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCountdown:Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;

    if-eqz v0, :cond_0

    .line 6019
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->musicProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 6020
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->total_time:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6021
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->current_time:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6022
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCountdown:Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->cancel()V

    .line 6023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCountdown:Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;

    .line 6025
    :cond_0
    return-void
.end method

.method private chooseMode(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00bc
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4228
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 4252
    :goto_0
    return-void

    .line 4231
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followFaceMode:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followFaceMode:Z

    .line 4232
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    .line 4233
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followFaceMode:Z

    if-eqz v0, :cond_2

    .line 4234
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_face:Landroid/widget/ImageView;

    const v3, 0x7f030012

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4236
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isTracker:I

    .line 4237
    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initOpencvMode(I)V

    .line 4245
    :goto_2
    const-string v0, "R"

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->colorG:Ljava/lang/String;

    .line 4246
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$29;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$29;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4231
    goto :goto_1

    .line 4241
    :cond_2
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isTracker:I

    .line 4242
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initOpencvMode(I)V

    .line 4243
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_face:Landroid/widget/ImageView;

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private conHide(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00cd
        }
    .end annotation

    .prologue
    .line 6390
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rockercon(Landroid/view/View;)V

    .line 6391
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRoker:Z

    if-eqz v0, :cond_0

    .line 6392
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6397
    :goto_0
    return-void

    .line 6395
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private conbody(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00c9
        }
    .end annotation

    .prologue
    .line 6384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setMode(Landroid/view/View;)V

    .line 6385
    return-void
.end method

.method private deleteMusic(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00cf
        }
    .end annotation

    .prologue
    .line 6417
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRecording:Z

    if-eqz v0, :cond_1

    .line 6423
    :cond_0
    :goto_0
    return-void

    .line 6420
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canRecord:Z

    if-eqz v0, :cond_0

    .line 6421
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showOrHideSelectedMuisc(Z)V

    goto :goto_0
.end method

.method private distance(Landroid/view/MotionEvent;)D
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2952
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 2953
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 2954
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private drawline(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00c1
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4101
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->drawline:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->drawline:Z

    .line 4114
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->drawline:Z

    if-eqz v0, :cond_2

    .line 4115
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hideFlyMode()V

    .line 4116
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmode:Z

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/ManualView;->setRight(Z)V

    .line 4117
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4119
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualViewInit()V

    .line 4120
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    if-ne v0, v1, :cond_0

    .line 4121
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 4123
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    .line 4124
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4125
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->drawline:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setRightRoker(Z)V

    .line 4126
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->drawline:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setDrawLineEnable(Z)V

    .line 4127
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_drawline:Landroid/widget/ImageView;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4128
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0}, Lcom/hfufo/widget/ManualView;->setPosi()V

    .line 4139
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 4101
    goto :goto_0

    .line 4132
    :cond_2
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showFlyMode()V

    .line 4133
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->drawline:Z

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/ManualView;->setRightRoker(Z)V

    .line 4134
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->drawline:Z

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/ManualView;->setDrawLineEnable(Z)V

    .line 4135
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_drawline:Landroid/widget/ImageView;

    const v2, 0x7f020064

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4136
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private getEditor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5278
    new-instance v2, Lcom/fh/util/SettingChange;

    invoke-direct {v2, p0}, Lcom/fh/util/SettingChange;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setLanguage:Lcom/fh/util/SettingChange;

    .line 5279
    const-string v2, "data"

    invoke-virtual {p0, v2, v4}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5280
    .local v1, "share":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 5281
    const-string v2, "right"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmode:Z

    .line 5282
    const-string v2, "operateMode"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    .line 5283
    const/4 v0, 0x0

    .line 5284
    .local v0, "a":I
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getCountry()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5285
    const/4 v0, 0x0

    .line 5289
    :goto_0
    const-string v2, "languageMode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->languageMode:I

    .line 5290
    const-string v2, "saveparam"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->issave:Z

    .line 5292
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->languageMode:I

    invoke-virtual {v2, v3}, Lcom/hfufo/rxdrone/MainApplication;->shiftLanguage(I)V

    .line 5293
    const-string v2, "flight"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flightMode:Z

    .line 5294
    iget-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flightMode:Z

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    .line 5300
    return-void

    .line 5287
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getSettingPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3450
    const-string v0, "/DCIM/Camera"

    return-object v0
.end method

.method private hideFlyMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/16 v2, 0x8

    .line 5549
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->classicalSend:Z

    .line 5550
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_face:Landroid/widget/ImageView;

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5551
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5552
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5558
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5559
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    .line 5560
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftmotion:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 5561
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmotion:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 5563
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    if-nez v0, :cond_1

    .line 5564
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 5565
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightClassicLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5566
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightClassicRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5567
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->classicLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5568
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->classicRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5590
    :cond_0
    :goto_0
    return-void

    .line 5571
    :cond_1
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5573
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 5574
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftmotion:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 5575
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmotion:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 5577
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v4}, Lcom/hfufo/widget/ManualView;->setMotion(Z)V

    goto :goto_0

    .line 5581
    :cond_2
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 5582
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    goto :goto_0

    .line 5584
    :cond_3
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5586
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 5587
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5588
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hide_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideMenu()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 5372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->menuShow:Z

    .line 5373
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5374
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_fix:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5375
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_body:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5376
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5378
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->vr:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5379
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onhead:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5380
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_return:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5381
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5382
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_rev:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5383
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_drawline:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5384
    return-void
.end method

.method private hideVideoUI()V
    .locals 2

    .prologue
    .line 5922
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->takevideo:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5923
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rl_rec_time:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5924
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hRecFlag:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recFlagThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5925
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->secondCount:I

    .line 5930
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->selectedMusic:Z

    if-nez v0, :cond_0

    .line 5931
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hRecTime:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recTimeThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5939
    :goto_0
    return-void

    .line 5934
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->cancelTimer()V

    .line 5936
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/videooperate/utils/MusicControlUtils;->cmd_stop(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private initAVIStreamer(IIII)V
    .locals 7
    .param p1, "frameRate"    # I
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I
    .param p4, "intervalTime"    # I

    .prologue
    .line 4697
    const-string v3, "PreviewActivityTAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initAVIStreamer frameRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4698
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceUUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4699
    const-string v3, "PreviewActivityTAG"

    const-string v4, "initAVIStreamer UUID is null"

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4725
    :cond_0
    :goto_0
    return-void

    .line 4702
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 4705
    .local v2, "sd":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4706
    .local v1, "recordDir":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4707
    const-string v3, "PreviewActivityTAG"

    const-string v4, "Record dir is null"

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4710
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4711
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4712
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4713
    new-instance v3, Ljava/lang/IllegalAccessError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failure."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4716
    :cond_3
    const-string v3, "PreviewActivityTAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initAVIStreamer dirPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4718
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    if-eqz v3, :cond_0

    .line 4719
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    const/16 v4, 0x1f40

    const/16 v5, 0x10

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/jieli/lib/stream/tools/AVIStreamer;->configureAudio(III)Z

    .line 4720
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    invoke-virtual {v3, p1, p2, p3}, Lcom/jieli/lib/stream/tools/AVIStreamer;->configureVideo(III)Z

    .line 4721
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    invoke-virtual {v3, v1}, Lcom/jieli/lib/stream/tools/AVIStreamer;->setFilePath(Ljava/lang/String;)Z

    .line 4722
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    int-to-long v4, p4

    invoke-virtual {v3, v4, v5}, Lcom/jieli/lib/stream/tools/AVIStreamer;->setDuration(J)Z

    goto/16 :goto_0
.end method

.method private initClassicalBtn()V
    .locals 2

    .prologue
    .line 4990
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftmotion:Landroid/widget/Button;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$39;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$39;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5000
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmotion:Landroid/widget/Button;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$40;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$40;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5010
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftUp:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$41;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$41;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5020
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftDown:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$42;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$42;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5030
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$43;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$43;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5040
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRRight:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$44;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$44;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5050
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRUp:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$45;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$45;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5060
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRDown:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$46;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$46;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5071
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightUp:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$47;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$47;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5081
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightDown:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$48;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$48;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5091
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightLLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$49;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$49;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5101
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightLRight:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$50;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$50;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5111
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightLUp:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$51;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$51;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5121
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightLDown:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$52;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$52;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5130
    return-void
.end method

.method private initComm()V
    .locals 3

    .prologue
    .line 3023
    invoke-static {}, Lcom/micro/util/CommandManager;->getInstance()Lcom/micro/util/CommandManager;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandManager:Lcom/micro/util/CommandManager;

    .line 3027
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "0056"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "0057"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "0052"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "0027"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "0009"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "3"

    const-string v2, "0136"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "3100"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    if-nez v0, :cond_0

    .line 3036
    new-instance v0, Lcom/jieli/lib/stream/tools/AVIStreamer;

    invoke-direct {v0}, Lcom/jieli/lib/stream/tools/AVIStreamer;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    .line 3037
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    invoke-virtual {v0, p0}, Lcom/jieli/lib/stream/tools/AVIStreamer;->setOnRecordListener(Lcom/jieli/lib/stream/interfaces/OnRecordListener;)V

    .line 3042
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->registerBroadcastReceiver()V

    .line 3044
    return-void
.end method

.method private initFile()V
    .locals 4

    .prologue
    .line 5886
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 5887
    .local v1, "sd":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getSettingPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recordDir:Ljava/lang/String;

    .line 5888
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recordDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5889
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5890
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5893
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 5817
    invoke-static {p0}, Lcom/micro/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 5818
    const v0, 0x7f0f0127

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/RectView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    .line 5819
    const v0, 0x7f0f0091

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hide_layout:Landroid/widget/LinearLayout;

    .line 5820
    const v0, 0x7f0f0095

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/RockerBgView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    .line 5821
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/RockerBgView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    .line 5822
    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->musicProgress:Landroid/widget/SeekBar;

    .line 5823
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->viewTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5824
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onRectTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5826
    const v0, 0x7f0f00f0

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/MyProgressBar;

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->download_progress:Lcom/hfufo/widget/MyProgressBar;

    .line 5827
    return-void
.end method

.method private knowIt(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00f7
        }
    .end annotation

    .prologue
    const/16 v1, 0x1d

    .line 4533
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4534
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4535
    return-void
.end method

.method private knowIt1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00fb
        }
    .end annotation

    .prologue
    const/16 v1, 0x1d

    .line 4528
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4529
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4530
    return-void
.end method

.method private land(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00e1
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3722
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 3734
    :goto_0
    return-void

    .line 3725
    :cond_0
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canLand:Z

    .line 3726
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setOneKeyDown(Z)V

    .line 3727
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v2}, Lcom/fh/util/ProtocolOfQuanzhi;->setOneKeyDown(Z)V

    .line 3730
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_takeoff:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3731
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_land:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3732
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyText:Landroid/widget/TextView;

    const-string v1, "\u8d77\u98de"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3733
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private mMenu(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00bf
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3881
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    if-nez v1, :cond_0

    .line 3882
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->menuShow:Z

    .line 3901
    :goto_0
    return-void

    .line 3885
    :cond_0
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->menuShow:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->menuShow:Z

    .line 3888
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->menuShow:Z

    if-eqz v0, :cond_2

    .line 3889
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showMenu()V

    goto :goto_0

    .line 3893
    :cond_2
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hideMenu()V

    goto :goto_0
.end method

.method private manualBtnClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00c5
        }
    .end annotation

    .prologue
    .line 3605
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setZhongli()V

    .line 3606
    return-void
.end method

.method private mergeLocationVideo(Lcom/videooperate/bean/Song;)V
    .locals 5
    .param p1, "song"    # Lcom/videooperate/bean/Song;

    .prologue
    const/4 v4, 0x0

    .line 5942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recordDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/REC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5943
    .local v0, "outputVideoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->waitting:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5944
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canRecord:Z

    .line 5945
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/videooperate/utils/VideoManager;->getInstance(Landroid/content/Context;Lcom/videooperate/utils/VideoManager$Callback;)Lcom/videooperate/utils/VideoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldVideoUrl:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0, v4}, Lcom/videooperate/utils/VideoManager;->mergeLocationVideo(Lcom/videooperate/bean/Song;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5946
    return-void
.end method

.method private onHead(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00c2
        }
    .end annotation

    .prologue
    .line 4062
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 4080
    :goto_0
    return-void

    .line 4065
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->nohead:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->nohead:Z

    .line 4066
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->nohead:Z

    if-eqz v0, :cond_2

    .line 4067
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onhead:Landroid/widget/ImageView;

    const v1, 0x7f030030

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4068
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->nohead:Z

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->noHead(Z)V

    .line 4069
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->nohead:Z

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->noHead(Z)V

    goto :goto_0

    .line 4065
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4073
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onhead:Landroid/widget/ImageView;

    const v1, 0x7f03002f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4074
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->nohead:Z

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->noHead(Z)V

    .line 4075
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->nohead:Z

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->noHead(Z)V

    goto :goto_0
.end method

.method private openAlbum(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f013a
        }
    .end annotation

    .prologue
    .line 4256
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canRecord:Z

    if-nez v0, :cond_0

    .line 4257
    const v0, 0x7f0800ce

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 4263
    :goto_0
    return-void

    .line 4261
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/videooperate/activity/AlbumListActivity;->start(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method private openFile(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00cc
        }
    .end annotation

    .prologue
    .line 6375
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canRecord:Z

    if-nez v0, :cond_0

    .line 6376
    const v0, 0x7f0800ce

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 6380
    :goto_0
    return-void

    .line 6379
    :cond_0
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->openAlbum(Landroid/view/View;)V

    goto :goto_0
.end method

.method private openPalmVideo(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00cb
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4193
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_1

    .line 4222
    :cond_0
    :goto_0
    return-void

    .line 4196
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 4198
    const v0, 0x7f08006f

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 4201
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmVideo:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmVideo:Z

    .line 4202
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v3, 0x7f03001f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4203
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followPalm:Z

    .line 4204
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v3, 0x7f08005c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 4206
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmVideo:Z

    if-eqz v0, :cond_4

    .line 4207
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setLines(Z)V

    .line 4209
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    const v1, 0x7f030021

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4210
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 4211
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    if-nez v0, :cond_0

    .line 4213
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->startDetection()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 4201
    goto :goto_1

    .line 4217
    :cond_4
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 4219
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4220
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    goto :goto_0
.end method

.method private panoImage(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00c4
        }
    .end annotation

    .prologue
    .line 4544
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v1, :cond_1

    .line 4593
    :cond_0
    :goto_0
    return-void

    .line 4547
    :cond_1
    const/16 v1, 0x4b0

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4550
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVr:Z

    if-nez v1, :cond_0

    .line 4553
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVga:Z

    if-nez v1, :cond_0

    .line 4556
    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->panoN:I

    if-gtz v1, :cond_0

    .line 4560
    new-instance v0, Lcom/hfufo/dialog/EditDialog;

    invoke-direct {v0, p0}, Lcom/hfufo/dialog/EditDialog;-><init>(Landroid/content/Context;)V

    .line 4561
    .local v0, "editDialog":Lcom/hfufo/dialog/EditDialog;
    const-string v1, "\u53d6\u6d88"

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/hfufo/rxdrone/ManualCtrlActivity$32;

    invoke-direct {v3, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$32;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hfufo/dialog/EditDialog;->setOnclickListener(Ljava/lang/String;Ljava/lang/String;Lcom/hfufo/dialog/EditDialog$OnclickListener;)V

    .line 4588
    const-string v1, "\u5168\u666f\u62cd\u7167"

    invoke-virtual {v0, v1}, Lcom/hfufo/dialog/EditDialog;->setTitle(Ljava/lang/String;)V

    .line 4589
    const-string v1, "\u9009\u62e9\u901f\u5ea6\u8303\u56f4 0 - 100"

    invoke-virtual {v0, v1}, Lcom/hfufo/dialog/EditDialog;->setMessage(Ljava/lang/String;)V

    .line 4590
    const-string v1, "30"

    invoke-virtual {v0, v1}, Lcom/hfufo/dialog/EditDialog;->setDefaultNum(Ljava/lang/String;)V

    .line 4591
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/dialog/EditDialog;->setRange(II)V

    .line 4592
    invoke-virtual {v0}, Lcom/hfufo/dialog/EditDialog;->show()V

    goto :goto_0
.end method

.method private pushData(ZLjava/lang/String;)V
    .locals 11
    .param p1, "isVideo"    # Z
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 6086
    if-nez p2, :cond_1

    .line 6106
    :cond_0
    :goto_0
    return-void

    .line 6089
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6090
    .local v10, "file":Ljava/io/File;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6093
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/fh/util/TimeFormate;->formatYMD_HMS(J)Ljava/lang/String;

    move-result-object v6

    .line 6094
    .local v6, "createTime":Ljava/lang/String;
    new-instance v0, Lcom/hfufo/bean/FileInfo;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v8, 0x0

    move-object v2, p2

    move v3, p1

    move v9, v7

    invoke-direct/range {v0 .. v9}, Lcom/hfufo/bean/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;IZI)V

    .line 6095
    .local v0, "fileInfo":Lcom/hfufo/bean/FileInfo;
    if-eqz p1, :cond_2

    .line 6096
    invoke-virtual {v0}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/hfufo/bean/FileInfo;->setDuration(I)V

    .line 6097
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6105
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "video/*"

    invoke-static {p0, v1, v2}, Lcom/Util/FileUtil;->notifyUpdate(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 6101
    :cond_2
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 3049
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mReceiver:Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;

    if-nez v1, :cond_0

    .line 3050
    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;Lcom/hfufo/rxdrone/ManualCtrlActivity$1;)V

    iput-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mReceiver:Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;

    .line 3052
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.jieli.dvflying_special_data"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3053
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.jieli.dvflying_device_language_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3054
    const-string v1, "com.jieli.dvflying_init_ctp_socket_success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3055
    const-string v1, "com.jieli.dvflying_sdcard_online"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3056
    const-string v1, "com.jieli.dvflying_sdcard_state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3057
    const-string v1, "com.jieli.dvflying_generic_data"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3058
    const-string v1, "com.jieli.dvflying_modify_flash_setting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3059
    const-string v1, "com.jieli.dvflying_device_connection_error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3060
    const-string v1, "com.jieli.dvflying_flying_data"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3061
    const-string v1, "gesture_take"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3062
    const-string v1, "gesture_takevideo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3063
    const-string v1, "time_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3064
    const-string v1, "time_finish_video"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3068
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mReceiver:Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3070
    return-void
.end method

.method private retrun(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00c6
        }
    .end annotation

    .prologue
    .line 4085
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 4095
    :goto_0
    return-void

    .line 4088
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->rth()V

    .line 4092
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_return:Landroid/widget/ImageView;

    const v1, 0x7f030037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4093
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4094
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private returnControl(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00be
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 6277
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    if-nez v0, :cond_0

    .line 6278
    invoke-direct {p0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setMode(Landroid/view/View;)V

    .line 6280
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followPalm:Z

    if-eqz v0, :cond_1

    .line 6283
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRoker:Z

    if-nez v0, :cond_2

    .line 6286
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRecording:Z

    if-eqz v0, :cond_3

    .line 6287
    invoke-direct {p0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    .line 6289
    :cond_3
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRotate:Z

    if-eqz v0, :cond_4

    .line 6290
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRotate:Z

    .line 6293
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6296
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    const v1, 0x7f03003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->resetRotaton:Z

    .line 6298
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v3, v3}, Lcom/hfufo/widget/MjpegView;->setSize(FF)V

    .line 6299
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setRotation(F)V

    .line 6300
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6302
    :cond_4
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MjpegView;->setRotateMode(Z)V

    .line 6303
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MjpegView;->setFilterMode(Z)V

    .line 6304
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isMVMode:Z

    .line 6305
    invoke-direct {p0, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showOrHideSelectedMuisc(Z)V

    .line 6306
    invoke-direct {p0, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->visibleMusic(Z)V

    .line 6307
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->filterNumber:I

    .line 6308
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->splitNumber:I

    .line 6311
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_filter:Landroid/widget/ImageView;

    const v1, 0x7f030014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6312
    return-void
.end method

.method private rev(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f013b
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 3946
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVga:Z

    if-eqz v0, :cond_0

    .line 3947
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080094

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3960
    :goto_0
    return-void

    .line 3950
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "3100"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3952
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mState:I

    if-nez v0, :cond_1

    .line 3954
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "3100"

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 3958
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "3100"

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rockercon(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00d6
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3967
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->drawline:Z

    if-eqz v0, :cond_1

    .line 3998
    :cond_0
    :goto_0
    return-void

    .line 3970
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRoker:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRoker:Z

    .line 3974
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRoker:Z

    if-eqz v0, :cond_3

    .line 3975
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v3, "3"

    const-string v4, "068"

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3976
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v3, "3"

    const-string v4, "0129"

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3977
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendData:Z

    .line 3978
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3979
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rcRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3981
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rokerOn()V

    .line 3994
    :goto_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionFace:Z

    if-eqz v0, :cond_0

    .line 3995
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->returnControl(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3970
    goto :goto_1

    .line 3986
    :cond_3
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendData:Z

    .line 3991
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rokerOff()V

    goto :goto_2
.end method

.method private roll(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00b7
        }
    .end annotation

    .prologue
    .line 3709
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 3717
    :goto_0
    return-void

    .line 3712
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->roll()V

    .line 3713
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0}, Lcom/fh/util/ProtocolOfQuanzhi;->roll()V

    .line 3715
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rollView:Landroid/widget/ImageView;

    const v1, 0x7f030026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3716
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private saveMergePicture(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "mBitmap1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4596
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->opencvStitcher:Lcom/opencvstitcher/OpencvStitcher;

    if-nez v0, :cond_0

    .line 4597
    new-instance v0, Lcom/opencvstitcher/OpencvStitcher;

    invoke-direct {v0}, Lcom/opencvstitcher/OpencvStitcher;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->opencvStitcher:Lcom/opencvstitcher/OpencvStitcher;

    .line 4599
    :cond_0
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->panoN:I

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downTIme:I

    .line 4600
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->panoN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->panoN:I

    .line 4602
    const-string v0, "ggppptime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5168\u666f\u56fe\u7247\u6570\u91cf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->panoN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4603
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4605
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->panoN:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 4607
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4608
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4609
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4611
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$33;

    invoke-direct {v1, p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity$33;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4655
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4663
    :goto_0
    return-void

    .line 4658
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->opencvStitcher:Lcom/opencvstitcher/OpencvStitcher;

    invoke-virtual {v0, p1}, Lcom/opencvstitcher/OpencvStitcher;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private savePlayState()V
    .locals 2

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

    if-eqz v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

    invoke-virtual {v1}, Lcom/jieli/lib/stream/tools/AVPlayer;->isFrontStreamPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->setFrontLastState(Z)V

    .line 1696
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

    invoke-virtual {v1}, Lcom/jieli/lib/stream/tools/AVPlayer;->isRearStreamPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->setRearLastState(Z)V

    .line 1698
    :cond_0
    return-void
.end method

.method private saveVideoToMP4(Ljava/lang/String;)V
    .locals 6
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    .line 5956
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5957
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5958
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "uri"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveVideoToMP4: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recordDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/REC_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dp.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5960
    .local v0, "outputVideoUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/videooperate/utils/VideoManager;->getInstance(Landroid/content/Context;Lcom/videooperate/utils/VideoManager$Callback;)Lcom/videooperate/utils/VideoManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/videooperate/utils/VideoManager;->saveVideo(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5963
    .end local v0    # "outputVideoUrl":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private selectFilter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00b0
        }
    .end annotation

    .prologue
    .line 6343
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isFilter:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isFilter:Z

    .line 6344
    new-instance v0, Lcom/hfufo/dialog/RenderDialog;

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->filterNumber:I

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->splitNumber:I

    new-instance v3, Lcom/hfufo/rxdrone/ManualCtrlActivity$55;

    invoke-direct {v3, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$55;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/hfufo/dialog/RenderDialog;-><init>(Landroid/app/Activity;IILcom/hfufo/dialog/RenderDialog$FilterCallback;)V

    .line 6370
    invoke-virtual {v0}, Lcom/hfufo/dialog/RenderDialog;->show()V

    .line 6371
    return-void

    .line 6343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectMusic(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00ce
        }
    .end annotation

    .prologue
    .line 6409
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRecording:Z

    if-eqz v0, :cond_0

    .line 6413
    :goto_0
    return-void

    .line 6412
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->selsectMusic(Landroid/view/View;)V

    goto :goto_0
.end method

.method private selectRotate(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00d2
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 6318
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRotate:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRotate:Z

    .line 6319
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRotate:Z

    if-eqz v0, :cond_2

    .line 6320
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    const v3, 0x7f03003b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6321
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setRotateMode(Z)V

    .line 6322
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->firstRotate:Z

    if-eqz v0, :cond_0

    .line 6323
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->firstRotate:Z

    .line 6324
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_tips1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6325
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6337
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 6318
    goto :goto_0

    .line 6329
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v3, v3}, Lcom/hfufo/widget/MjpegView;->setSize(FF)V

    .line 6330
    iput v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scaleWidth:F

    .line 6331
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6332
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setRotation(F)V

    .line 6333
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MjpegView;->setRotateMode(Z)V

    .line 6334
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    const v1, 0x7f03003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private selsectMusic(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6196
    const/16 v0, 0x2766

    invoke-static {p0, v0}, Lcom/videooperate/activity/MusicLibraryActivity;->startForResult(Landroid/app/Activity;I)V

    .line 6197
    return-void
.end method

.method private sendFollowData(Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "rectDete"    # Landroid/graphics/Rect;

    .prologue
    .line 5614
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 5813
    :cond_0
    :goto_0
    return-void

    .line 5617
    :cond_1
    const-string v11, "akaka"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendFollowData: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->aa:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->aa:J

    .line 5623
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int v10, v11, v12

    .line 5624
    .local v10, "rectWidth":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v11, v12

    .line 5626
    .local v9, "rectHeight":I
    const/16 v11, 0x14

    if-ge v10, v11, :cond_2

    const/16 v11, 0x14

    if-lt v9, v11, :cond_0

    .line 5629
    :cond_2
    int-to-float v11, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v12, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    int-to-float v11, v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v12, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_0

    .line 5633
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 5634
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 5635
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v12, 0x15

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 5636
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v12, 0x16

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 5637
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v12, 0x17

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 5639
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v12, v10, 0x2

    add-int v7, v11, v12

    .line 5642
    .local v7, "centerW":I
    const-string v11, "dgpdgp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendFollowData: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5643
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followFaceMode:Z

    if-nez v11, :cond_6

    .line 5645
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v12, v9, 0x2

    add-int/2addr v11, v12

    add-int/lit8 v6, v11, -0x50

    .line 5646
    .local v6, "centerH":I
    const/16 v11, 0x32

    if-ge v6, v11, :cond_4

    .line 5647
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v12, v9, 0x2

    add-int v6, v11, v12

    .line 5649
    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->cBodyWidth:F

    .line 5660
    .local v8, "initWidth":F
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    if-eqz v11, :cond_8

    .line 5663
    const/16 v2, 0x80

    .line 5664
    .local v2, "a":I
    int-to-float v11, v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pScreenWidth:F

    const/high16 v13, 0x42a00000    # 80.0f

    sub-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_7

    if-lez v7, :cond_7

    .line 5667
    mul-int/lit16 v11, v7, 0x100

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v12, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    div-float/2addr v11, v12

    float-to-int v2, v11

    .line 5682
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const-wide/high16 v12, 0x401c000000000000L    # 7.0

    invoke-virtual {v11, v2, v12, v13}, Lcom/fh/util/Protocol1;->setChannel4(ID)V

    .line 5684
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    const-wide/16 v14, 0x64

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5792
    .end local v2    # "a":I
    :goto_3
    const/16 v5, 0x80

    .line 5793
    .local v5, "a5":I
    int-to-float v11, v6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initHeight:F

    const/high16 v13, 0x41f00000    # 30.0f

    add-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_f

    int-to-float v11, v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v12, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_f

    .line 5796
    const/high16 v11, 0x43000000    # 128.0f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v12, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    int-to-float v13, v6

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v12, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initHeight:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x41f00000    # 30.0f

    sub-float/2addr v12, v13

    div-float/2addr v11, v12

    float-to-int v5, v11

    .line 5811
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    invoke-virtual {v11, v5, v12, v13}, Lcom/fh/util/Protocol1;->setChannel3(ID)V

    .line 5812
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v12, 0x16

    const-wide/16 v14, 0x64

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 5652
    .end local v5    # "a5":I
    .end local v6    # "centerH":I
    .end local v8    # "initWidth":F
    :cond_6
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v12, v9, 0x2

    add-int v6, v11, v12

    .line 5653
    .restart local v6    # "centerH":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->cPalmWidth:F

    .restart local v8    # "initWidth":F
    goto/16 :goto_1

    .line 5671
    .restart local v2    # "a":I
    :cond_7
    int-to-float v11, v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pScreenWidth:F

    const/high16 v13, 0x42a00000    # 80.0f

    add-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    int-to-float v11, v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v12, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    .line 5673
    mul-int/lit16 v11, v7, 0x100

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v12, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    div-float/2addr v11, v12

    float-to-int v2, v11

    goto/16 :goto_2

    .line 5689
    .end local v2    # "a":I
    :cond_8
    const/16 v3, 0x80

    .line 5690
    .local v3, "a1":I
    const/16 v4, 0x80

    .line 5691
    .local v4, "a2":I
    int-to-float v11, v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pScreenWidth:F

    const/high16 v13, 0x428c0000    # 70.0f

    sub-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_b

    if-lez v7, :cond_b

    .line 5693
    mul-int/lit16 v11, v7, 0x100

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v12, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    div-float/2addr v11, v12

    float-to-int v3, v11

    .line 5709
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    invoke-virtual {v11, v3, v12, v13}, Lcom/fh/util/Protocol1;->setChannel4(ID)V

    .line 5748
    int-to-float v11, v10

    const/high16 v12, 0x41f00000    # 30.0f

    sub-float v12, v8, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_c

    const/16 v11, 0x32

    if-le v10, v11, :cond_c

    .line 5750
    const/high16 v11, 0x43000000    # 128.0f

    int-to-float v12, v10

    sub-float v12, v8, v12

    const/high16 v13, 0x43000000    # 128.0f

    mul-float/2addr v12, v13

    div-float/2addr v12, v8

    add-float/2addr v11, v12

    float-to-int v4, v11

    .line 5777
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const-wide/high16 v12, 0x401c000000000000L    # 7.0

    invoke-virtual {v11, v4, v12, v13}, Lcom/fh/util/Protocol1;->setChannel2(ID)V

    .line 5779
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v12, 0x14

    const-wide/16 v14, 0x5a

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5780
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v12, 0x15

    const-wide/16 v14, 0xb4

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5781
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v12, 0x17

    const-wide/16 v14, 0x78

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 5698
    :cond_b
    int-to-float v11, v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pScreenWidth:F

    const/high16 v13, 0x428c0000    # 70.0f

    add-float/2addr v12, v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_9

    int-to-float v11, v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v12, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_9

    .line 5700
    mul-int/lit16 v11, v7, 0x100

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v12, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    div-float/2addr v11, v12

    float-to-int v3, v11

    goto :goto_5

    .line 5755
    :cond_c
    int-to-float v11, v10

    const/high16 v12, 0x41f00000    # 30.0f

    add-float/2addr v12, v8

    cmpl-float v11, v11, v12

    if-lez v11, :cond_d

    int-to-float v11, v10

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v8

    cmpg-float v11, v11, v12

    if-gez v11, :cond_d

    .line 5757
    const/high16 v11, 0x43000000    # 128.0f

    int-to-float v12, v10

    sub-float/2addr v12, v8

    const/high16 v13, 0x43000000    # 128.0f

    mul-float/2addr v12, v13

    div-float/2addr v12, v8

    sub-float/2addr v11, v12

    float-to-int v4, v11

    goto :goto_6

    .line 5761
    :cond_d
    const/16 v11, 0x32

    if-gt v10, v11, :cond_e

    .line 5763
    const/16 v4, 0xff

    goto :goto_6

    .line 5767
    :cond_e
    int-to-float v11, v10

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v8

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_a

    .line 5769
    const/4 v4, 0x1

    goto :goto_6

    .line 5800
    .end local v3    # "a1":I
    .end local v4    # "a2":I
    .restart local v5    # "a5":I
    :cond_f
    int-to-float v11, v6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initHeight:F

    const/high16 v13, 0x41f00000    # 30.0f

    sub-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_10

    if-lez v6, :cond_10

    .line 5803
    const/high16 v11, 0x43800000    # 256.0f

    const/high16 v12, 0x43000000    # 128.0f

    int-to-float v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initHeight:F

    const/high16 v15, 0x41f00000    # 30.0f

    sub-float/2addr v14, v15

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    float-to-int v5, v11

    goto/16 :goto_4

    .line 5809
    :cond_10
    const-string v11, "gestureData\u4e0a\u4e0bReset"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initHeight:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "= Reset"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private setArm(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00e3
        }
    .end annotation

    .prologue
    .line 3688
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->arm:Z

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setLock(Z)V

    .line 3692
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3693
    return-void
.end method

.method private setEditor(Z)V
    .locals 2
    .param p1, "Checked"    # Z

    .prologue
    .line 5273
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "flight"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5274
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5275
    return-void
.end method

.method private setMode(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00d8
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3746
    const-string v0, "PreviewActivityTAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLeftWheelPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->isShown()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3750
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v3, "3"

    const-string v4, "0129"

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3752
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVga:Z

    if-eqz v0, :cond_1

    .line 3754
    const v0, 0x7f08006f

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 3860
    :cond_0
    :goto_0
    return-void

    .line 3757
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVr:Z

    if-eqz v0, :cond_2

    .line 3758
    const v0, 0x7f0800d4

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 3761
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->drawline:Z

    if-eqz v0, :cond_3

    .line 3763
    const v0, 0x7f080066

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 3766
    :cond_3
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-eqz v0, :cond_0

    .line 3772
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3773
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    .line 3775
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3776
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rcRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3778
    const-string v0, "R"

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->colorG:Ljava/lang/String;

    .line 3779
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    if-eqz v0, :cond_5

    .line 3782
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 3783
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3784
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3786
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initOpencvMode(I)V

    .line 3788
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionFace:Z

    .line 3789
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    .line 3790
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followPalm:Z

    .line 3791
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmVideo:Z

    .line 3792
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showFlyMode()V

    .line 3793
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setLines(Z)V

    .line 3795
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    const v1, 0x7f03002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3796
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3797
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onText:Landroid/widget/TextView;

    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3798
    const-string v0, "R"

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->colorG:Ljava/lang/String;

    .line 3799
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->masterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 3773
    goto :goto_1

    .line 3805
    :cond_5
    new-instance v0, Lcom/hfufo/dialog/MasterHelpDialog;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$28;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/hfufo/dialog/MasterHelpDialog;-><init>(Landroid/app/Activity;Lcom/hfufo/dialog/MasterHelpDialog$DeleteDialogListener;)V

    .line 3851
    invoke-virtual {v0}, Lcom/hfufo/dialog/MasterHelpDialog;->show()V

    goto/16 :goto_0
.end method

.method private setPalmFollow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00c7
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3907
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_1

    .line 3940
    :cond_0
    :goto_0
    return-void

    .line 3910
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 3912
    const v0, 0x7f08006f

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 3916
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    const v3, 0x7f030020

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3917
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmVideo:Z

    .line 3918
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followPalm:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followPalm:Z

    .line 3919
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followPalm:Z

    if-eqz v0, :cond_5

    .line 3920
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3921
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/RectView;->setLines(Z)V

    .line 3922
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v1, 0x7f030022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3923
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 3924
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    if-nez v0, :cond_3

    .line 3926
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->startDetection()V

    .line 3928
    :cond_3
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isShowPtz:Z

    if-eqz v0, :cond_0

    .line 3929
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showPtz()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 3918
    goto :goto_1

    .line 3934
    :cond_5
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setLines(Z)V

    .line 3935
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3936
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 3937
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3938
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    goto :goto_0
.end method

.method private setScaleOfIjk(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    const v1, 0x3e4ccccd    # 0.2f

    .line 2903
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_0

    .line 2904
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, p1, p1}, Lcom/hfufo/widget/MjpegView;->setSize(FF)V

    .line 2917
    :goto_0
    iput p1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldScaleWidth:F

    .line 2919
    return-void

    .line 2906
    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 2907
    const p1, 0x3e4ccccd    # 0.2f

    .line 2908
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v1, v1}, Lcom/hfufo/widget/MjpegView;->setSize(FF)V

    goto :goto_0

    .line 2910
    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 2911
    const/high16 p1, 0x40800000    # 4.0f

    .line 2912
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v2, v2}, Lcom/hfufo/widget/MjpegView;->setSize(FF)V

    goto :goto_0

    .line 2915
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v3, v3}, Lcom/hfufo/widget/MjpegView;->setSize(FF)V

    goto :goto_0
.end method

.method private setSelfPivot(FF)V
    .locals 5
    .param p1, "lessX"    # F
    .param p2, "lessY"    # F

    .prologue
    .line 6509
    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pivotX:F

    add-float v0, v2, p1

    .line 6510
    .local v0, "setPivotX":F
    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pivotY:F

    add-float v1, v2, p2

    .line 6514
    .local v1, "setPivotY":F
    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxW:F

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 6515
    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxW:F

    neg-float v0, v2

    .line 6520
    :cond_0
    :goto_0
    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxH:F

    neg-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_3

    .line 6521
    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxH:F

    neg-float v1, v2

    .line 6527
    :cond_1
    :goto_1
    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pivotoldX:F

    .line 6528
    iput v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pivotoldY:F

    .line 6529
    const-string v2, "lawwingLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelfPivot00: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pivotoldX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pivotoldY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6530
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    iget v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pivotoldX:F

    iget v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pivotoldY:F

    invoke-virtual {v2, v3, v4}, Lcom/hfufo/widget/MjpegView;->setTranslate(FF)V

    .line 6531
    return-void

    .line 6516
    :cond_2
    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxW:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 6517
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxW:F

    goto :goto_0

    .line 6522
    :cond_3
    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxH:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 6523
    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->maxH:F

    goto :goto_1
.end method

.method private setTrim()V
    .locals 0

    .prologue
    .line 5343
    return-void
.end method

.method private setZhongli()V
    .locals 6

    .prologue
    const v5, 0x7f03001e

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x80

    .line 3609
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followFlag:Z

    if-eqz v0, :cond_0

    .line 3610
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08006d

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3635
    :goto_0
    return-void

    .line 3614
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isManual:Z

    if-eqz v0, :cond_1

    .line 3615
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3616
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->grayFlag:Z

    .line 3617
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isManual:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MotionView;->setGrayFlagr(Z)V

    .line 3618
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isManual:Z

    .line 3620
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionViewInit()V

    goto :goto_0

    .line 3623
    :cond_1
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->grayFlag:Z

    .line 3624
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isManual:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MotionView;->setGrayFlagr(Z)V

    .line 3625
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isManual:Z

    .line 3626
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmode:Z

    if-eqz v0, :cond_2

    .line 3627
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setLeftRudderPoint(Landroid/graphics/Point;)V

    .line 3632
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3633
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualViewInit()V

    goto :goto_0

    .line 3630
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setRightRudderPoint(Landroid/graphics/Point;)V

    goto :goto_1
.end method

.method private showDownload()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 578
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downTIme:I

    .line 579
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->download_progress:Lcom/hfufo/widget/MyProgressBar;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MyProgressBar;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->download_progress:Lcom/hfufo/widget/MyProgressBar;

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->totalTimeD:I

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MyProgressBar;->setMax(I)V

    .line 581
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->download_progress:Lcom/hfufo/widget/MyProgressBar;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MyProgressBar;->setProgress(I)V

    .line 582
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downloadSpeed:I

    .line 583
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downloadRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downloadSpeed:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    return-void
.end method

.method private showFlyMode()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 5462
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_face:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5466
    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    if-nez v2, :cond_2

    .line 5467
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5468
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initClassicalBtn()V

    .line 5469
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v2, v4}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 5470
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudderInit()V

    .line 5471
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5472
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v2, v6}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    .line 5473
    iget-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmode:Z

    if-eqz v2, :cond_1

    .line 5474
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightClassicLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5475
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightClassicRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5543
    :cond_0
    :goto_0
    return-void

    .line 5478
    :cond_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->classicLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5479
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->classicRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 5483
    :cond_2
    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    if-ne v2, v7, :cond_4

    .line 5484
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5485
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v2, v4}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 5486
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudderInit()V

    .line 5487
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualViewInit()V

    .line 5488
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initClassicalBtn()V

    .line 5489
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5490
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v2, v4}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    .line 5492
    iget-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmode:Z

    if-eqz v2, :cond_3

    .line 5493
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftmotion:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5494
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmotion:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 5501
    :goto_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmode:Z

    invoke-virtual {v2, v3}, Lcom/hfufo/widget/ManualView;->setRight(Z)V

    .line 5502
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v2, v7}, Lcom/hfufo/widget/ManualView;->setMotion(Z)V

    .line 5504
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$54;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$54;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    .line 5513
    .local v0, "task":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 5514
    .local v1, "timer":Ljava/util/Timer;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 5497
    .end local v0    # "task":Ljava/util/TimerTask;
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_3
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftmotion:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 5498
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmotion:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 5516
    :cond_4
    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 5517
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5519
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualViewInit()V

    .line 5520
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v2, v5}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 5521
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5522
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v2, v4}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    goto :goto_0

    .line 5524
    :cond_5
    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 5526
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5527
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v2, v6}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    .line 5528
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v2, v5}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 5531
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hide_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5536
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hideRockerInit()V

    .line 5537
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private showMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5351
    sget v0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 5363
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5364
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->vr:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5365
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onhead:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5366
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_rev:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5367
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_drawline:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5369
    return-void

    .line 5354
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5355
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5356
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_body:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5357
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5358
    sget v0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hasFix:Z

    if-eqz v0, :cond_0

    .line 5359
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_fix:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private showOrHideSelectedMuisc(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6203
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardRecording:Z

    if-eqz v0, :cond_1

    .line 6228
    :cond_0
    :goto_0
    return-void

    .line 6206
    :cond_1
    if-eqz p1, :cond_3

    .line 6207
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    if-eqz v0, :cond_0

    .line 6210
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->selectedMusic:Z

    .line 6211
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    iget v0, v0, Lcom/videooperate/bean/Song;->duration:I

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->MAX_VID_DURATION:I

    .line 6212
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tvMusicName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    iget-object v0, v0, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6213
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tvMusicName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6215
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_music_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6216
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->ivMusicDel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6212
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    iget-object v0, v0, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    goto :goto_1

    .line 6220
    :cond_3
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->selectedMusic:Z

    .line 6221
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tvMusicName:Landroid/widget/TextView;

    const v1, 0x7f0800e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6222
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->MAX_VID_DURATION:I

    .line 6224
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_music_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6225
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->ivMusicDel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPtz()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6443
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isShowPtz:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isShowPtz:Z

    .line 6444
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isShowPtz:Z

    if-eqz v0, :cond_1

    .line 6445
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rudderLessX:F

    .line 6446
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rudderLessY:F

    .line 6447
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setScaleOfIjk(F)V

    .line 6448
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->ptz_picture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6449
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tranRudder:Lcom/hfufo/widget/TranRockerBgView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/TranRockerBgView;->setVisibility(I)V

    .line 6456
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 6443
    goto :goto_0

    .line 6451
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setScaleOfIjk(F)V

    .line 6452
    invoke-direct {p0, v2, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setSelfPivot(FF)V

    .line 6453
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->ptz_picture:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6454
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tranRudder:Lcom/hfufo/widget/TranRockerBgView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/TranRockerBgView;->setVisibility(I)V

    goto :goto_1
.end method

.method private showPtz(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f009d
        }
    .end annotation

    .prologue
    .line 6427
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVr:Z

    if-eqz v0, :cond_0

    .line 6428
    const v0, 0x7f0800d4

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 6436
    :goto_0
    return-void

    .line 6431
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followPalm:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionFace:Z

    if-eqz v0, :cond_2

    .line 6432
    :cond_1
    const v0, 0x7f0800d6

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6435
    :cond_2
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showPtz()V

    goto :goto_0
.end method

.method private showVideoUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5896
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rl_rec_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5897
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hRecFlag:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recFlagThread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5898
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->takevideo:Landroid/widget/ImageView;

    const v2, 0x7f0200a9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5903
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->selectedMusic:Z

    if-nez v1, :cond_0

    .line 5904
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hRecTime:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recTimeThread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5919
    :goto_0
    return-void

    .line 5907
    :cond_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->musicProgress:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    invoke-virtual {v2}, Lcom/videooperate/bean/Song;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 5908
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    invoke-virtual {v1}, Lcom/videooperate/bean/Song;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/fh/util/Common;->intToTime2(J)Ljava/lang/String;

    move-result-object v0

    .line 5909
    .local v0, "hms":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->total_time:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5910
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->current_time:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5911
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->musicProgress:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5914
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->startTimer()V

    .line 5916
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    iget-object v2, v2, Lcom/videooperate/bean/Song;->path:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/videooperate/utils/MusicControlUtils;->cmd_start(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private speed(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00d3
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4146
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->speed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->speed:I

    .line 4147
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->speed:I

    if-nez v0, :cond_1

    .line 4148
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4149
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v4}, Lcom/hfufo/widget/ManualView;->setSpeed(I)V

    .line 4150
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v4}, Lcom/fh/util/Protocol1;->setSpeed(I)V

    .line 4151
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v4}, Lcom/fh/util/ProtocolOfQuanzhi;->setSpeed(I)V

    .line 4152
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v4}, Lcom/hfufo/widget/LeftRockerBgView;->setSpeed(I)V

    .line 4153
    iput v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isSpeed:I

    .line 4172
    :cond_0
    :goto_0
    return-void

    .line 4155
    :cond_1
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->speed:I

    if-ne v0, v2, :cond_2

    .line 4156
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4157
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/ManualView;->setSpeed(I)V

    .line 4158
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setSpeed(I)V

    .line 4159
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v2}, Lcom/fh/util/ProtocolOfQuanzhi;->setSpeed(I)V

    .line 4160
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/LeftRockerBgView;->setSpeed(I)V

    .line 4161
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isSpeed:I

    goto :goto_0

    .line 4163
    :cond_2
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->speed:I

    if-ne v0, v3, :cond_0

    .line 4164
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4165
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/ManualView;->setSpeed(I)V

    .line 4166
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v3}, Lcom/fh/util/Protocol1;->setSpeed(I)V

    .line 4167
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v3}, Lcom/fh/util/ProtocolOfQuanzhi;->setSpeed(I)V

    .line 4168
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/LeftRockerBgView;->setSpeed(I)V

    .line 4169
    iput v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isSpeed:I

    .line 4170
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->speed:I

    goto :goto_0
.end method

.method private startDetection()V
    .locals 2

    .prologue
    .line 2198
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    if-nez v0, :cond_0

    .line 2199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    .line 2200
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$14;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2317
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2319
    :cond_0
    return-void
.end method

.method private startDetectionFace()V
    .locals 2

    .prologue
    .line 2325
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionFace:Z

    if-nez v0, :cond_0

    .line 2326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionFace:Z

    .line 2327
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$15;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2418
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2420
    :cond_0
    return-void
.end method

.method private startNoCardRecording()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x6400000

    .line 4728
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    invoke-virtual {v3}, Lcom/jieli/lib/stream/tools/AVIStreamer;->isRecording()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4730
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 4731
    .local v2, "state":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4732
    invoke-static {}, Lcom/fh/util/StorageUtil;->getSdCardFreeBytes()J

    move-result-wide v0

    .line 4733
    .local v0, "availableMemory":J
    const-wide/32 v4, 0x3200000

    cmp-long v3, v0, v4

    if-gtz v3, :cond_1

    .line 4762
    .end local v0    # "availableMemory":J
    .end local v2    # "state":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4737
    .restart local v0    # "availableMemory":J
    .restart local v2    # "state":Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardRecordMax:I

    int-to-long v4, v3

    mul-long/2addr v4, v8

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    .line 4738
    const-wide/16 v4, 0x5

    div-long v4, v0, v4

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    div-long/2addr v4, v8

    long-to-int v3, v4

    iput v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardRecordMax:I

    .line 4742
    :cond_2
    const-string v3, "PreviewActivityTAG"

    const-string v4, "startNoCardRecording startRecording="

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4743
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    invoke-virtual {v3}, Lcom/jieli/lib/stream/tools/AVIStreamer;->startRecording()Z

    .line 4744
    const-string v3, "52gggg"

    const-string v4, "startNoCardRecording22: "

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4745
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardRecording:Z

    .line 4750
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showVideoUI()V

    goto :goto_0

    .line 4759
    .end local v0    # "availableMemory":J
    .end local v2    # "state":Ljava/lang/String;
    :cond_3
    const-string v3, "PreviewActivityTAG"

    const-string v4, "startNoCardRecording Already start recording="

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startNoCardTaking()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 4848
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 4849
    .local v5, "state":Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4850
    invoke-static {}, Lcom/fh/util/StorageUtil;->getSdCardFreeBytes()J

    move-result-wide v0

    .line 4851
    .local v0, "availableMemory":J
    const-wide/32 v6, 0x3200000

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    .line 4853
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080085

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 4884
    .end local v0    # "availableMemory":J
    :goto_0
    return-void

    .line 4856
    .restart local v0    # "availableMemory":J
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 4859
    .local v4, "sd":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4860
    .local v3, "outPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4861
    const-string v6, "PreviewActivityTAG"

    const-string v7, "Record dir is null"

    invoke-static {v6, v7}, Lcom/jieli/lib/stream/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4864
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4865
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4866
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4867
    new-instance v6, Ljava/lang/IllegalAccessError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failure."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4870
    :cond_2
    iput-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->savePhotoPath:Ljava/lang/String;

    .line 4871
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JPG_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/fh/util/TimeFormater;->formatYMD_HMS(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->savePhotoName:Ljava/lang/String;

    .line 4873
    const-string v6, "52gggg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "savePhotoPath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->savePhotoPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4874
    const-string v6, "PreviewActivityTAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-startNoCardTaking- isOpenFlash = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isOpenFlash:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4875
    iget-boolean v6, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isOpenFlash:Z

    if-eqz v6, :cond_3

    .line 4878
    :cond_3
    iput-boolean v10, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardTaking:Z

    goto/16 :goto_0

    .line 4882
    .end local v0    # "availableMemory":J
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "outPath":Ljava/lang/String;
    .end local v4    # "sd":Ljava/io/File;
    :cond_4
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "no sdcard"

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private startTimer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 6005
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCountdown:Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;

    if-nez v0, :cond_0

    .line 6006
    new-instance v0, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->MAX_VID_DURATION:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;JJ)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCountdown:Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;

    .line 6008
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->musicProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 6009
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->total_time:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6010
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->current_time:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6011
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCountdown:Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$Countdown;->start()Landroid/os/CountDownTimer;

    .line 6012
    return-void
.end method

.method private startZoomImgThread(II)V
    .locals 3
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 1747
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->stopZoomImgThread()V

    .line 1748
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    if-nez v0, :cond_0

    .line 1749
    new-instance v0, Lcom/fh/util/ZoomImageThread;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mIActionListener:Lcom/jieli/lib/stream/udp/IActionListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/fh/util/ZoomImageThread;-><init>(IILcom/jieli/lib/stream/udp/IActionListener;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    .line 1750
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->frameCount:I

    .line 1751
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->addFrameCount:I

    .line 1752
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    invoke-virtual {v0}, Lcom/fh/util/ZoomImageThread;->start()V

    .line 1754
    :cond_0
    return-void
.end method

.method private startZoomJpegThread([BLjava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "savePath"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "jpegWith"    # I
    .param p5, "jpegHeight"    # I

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 1709
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 1711
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->lastFileName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1712
    iput-object p3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->lastFileName:Ljava/lang/String;

    .line 1713
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1714
    iget-object v7, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/fh/util/ZoomJpgThread;

    new-instance v6, Lcom/hfufo/rxdrone/ManualCtrlActivity$10;

    invoke-direct {v6, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$10;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fh/util/ZoomJpgThread;-><init>([BLjava/lang/String;Ljava/lang/String;IILcom/jieli/lib/stream/udp/IActionListener;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1743
    :cond_1
    return-void
.end method

.method private stop(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00e4
        }
    .end annotation

    .prologue
    .line 3698
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->stop()V

    .line 3699
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0}, Lcom/fh/util/ProtocolOfQuanzhi;->stop()V

    .line 3700
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_takeoff:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3701
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyText:Landroid/widget/TextView;

    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3702
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_land:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3704
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3705
    return-void
.end method

.method private stopNoCardRecording()V
    .locals 2

    .prologue
    .line 4669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardRecording:Z

    .line 4670
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    if-eqz v0, :cond_2

    .line 4671
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/AVIStreamer;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4672
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isNeedZoomImg:Z

    if-eqz v0, :cond_1

    .line 4673
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->stopZoomImgThread()V

    .line 4694
    :cond_0
    :goto_0
    return-void

    .line 4682
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVIStreamer:Lcom/jieli/lib/stream/tools/AVIStreamer;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/AVIStreamer;->stopRecording()Z

    goto :goto_0

    .line 4691
    :cond_2
    const-string v0, "PreviewActivityTAG"

    const-string v1, "stopNoCardRecording Already stop recording="

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopZoomImgThread()V
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    invoke-virtual {v0}, Lcom/fh/util/ZoomImageThread;->stopThread()V

    .line 1768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    .line 1770
    :cond_0
    return-void
.end method

.method private syncDeviceStatus()V
    .locals 11

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 3074
    const-string v3, "PreviewActivityTAG"

    const-string v9, "syncDeviceStatus is start!"

    invoke-static {v3, v9}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandManager:Lcom/micro/util/CommandManager;

    const-string v9, "0001"

    invoke-virtual {v3, v9}, Lcom/micro/util/CommandManager;->getDeviceStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3077
    .local v2, "state":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "-403"

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    move v3, v5

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 3116
    :goto_2
    :pswitch_0
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandManager:Lcom/micro/util/CommandManager;

    const-string v9, "0012"

    invoke-virtual {v3, v9}, Lcom/micro/util/CommandManager;->getDeviceStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "-403"

    .end local v2    # "state":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_2
    move v3, v5

    :goto_3
    packed-switch v3, :pswitch_data_1

    .line 3135
    :goto_4
    :pswitch_1
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandManager:Lcom/micro/util/CommandManager;

    const-string v9, "0054"

    invoke-virtual {v3, v9}, Lcom/micro/util/CommandManager;->getDeviceStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3136
    .restart local v2    # "state":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "-403"

    .end local v2    # "state":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    :cond_4
    move v3, v5

    :goto_5
    packed-switch v3, :pswitch_data_2

    .line 3147
    :goto_6
    :pswitch_2
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v4, "1"

    const-string v5, "0031"

    invoke-virtual {v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getFrontLastState()Z

    move-result v0

    .line 3149
    .local v0, "isFront":Z
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getRearLastState()Z

    move-result v1

    .line 3150
    .local v1, "isRear":Z
    const-string v3, "PreviewActivityTAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-syncDeviceStatus- isFront : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , isRear : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/lib/stream/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    if-eqz v1, :cond_5

    .line 3152
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v4, "1"

    const-string v5, "0061"

    invoke-virtual {v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3154
    :cond_5
    if-eqz v0, :cond_6

    .line 3155
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v4, "1"

    const-string v5, "0050"

    invoke-virtual {v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    :cond_6
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    .line 3158
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v4, "1"

    const-string v5, "0061"

    invoke-virtual {v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v4, "1"

    const-string v5, "0050"

    invoke-virtual {v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    :cond_7
    return-void

    .end local v0    # "isFront":Z
    .end local v1    # "isRear":Z
    .restart local v2    # "state":Ljava/lang/String;
    :cond_8
    move-object v3, v2

    .line 3077
    goto/16 :goto_0

    :sswitch_0
    const-string v9, "0"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto/16 :goto_1

    :sswitch_1
    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto/16 :goto_1

    :sswitch_2
    const-string v9, "2"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    goto/16 :goto_1

    :sswitch_3
    const-string v9, "10"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v8

    goto/16 :goto_1

    :sswitch_4
    const-string v9, "-403"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v9, "-1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_1

    .line 3079
    :pswitch_3
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandManager:Lcom/micro/util/CommandManager;

    const-string v9, "0027"

    invoke-virtual {v3, v9}, Lcom/micro/util/CommandManager;->getDeviceStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3080
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "-403"

    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_3

    :cond_9
    move v3, v5

    :goto_8
    packed-switch v3, :pswitch_data_3

    goto/16 :goto_2

    .line 3089
    :pswitch_4
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v9, "1"

    const-string v10, "0027"

    invoke-virtual {v3, v9, v10}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    move-object v3, v2

    .line 3080
    goto :goto_7

    :sswitch_6
    const-string v9, "0"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    goto :goto_8

    :sswitch_7
    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v6

    goto :goto_8

    :sswitch_8
    const-string v9, "-403"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v7

    goto :goto_8

    .line 3094
    :pswitch_5
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandManager:Lcom/micro/util/CommandManager;

    const-string v9, "0009"

    invoke-virtual {v3, v9}, Lcom/micro/util/CommandManager;->getDeviceStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3095
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "-403"

    :goto_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_4

    :cond_b
    move v3, v5

    :goto_a
    packed-switch v3, :pswitch_data_4

    goto/16 :goto_2

    .line 3101
    :pswitch_6
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v9, "1"

    const-string v10, "0009"

    invoke-virtual {v3, v9, v10}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    move-object v3, v2

    .line 3095
    goto :goto_9

    :sswitch_9
    const-string v9, "0"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v4

    goto :goto_a

    :sswitch_a
    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v6

    goto :goto_a

    :sswitch_b
    const-string v9, "-403"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v7

    goto :goto_a

    .line 3112
    :pswitch_7
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v9, "1"

    const-string v10, "0001"

    invoke-virtual {v3, v9, v10}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3117
    .end local v2    # "state":Ljava/lang/String;
    :sswitch_c
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto/16 :goto_3

    :sswitch_d
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    goto/16 :goto_3

    :sswitch_e
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v7

    goto/16 :goto_3

    :sswitch_f
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v8

    goto/16 :goto_3

    :sswitch_10
    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto/16 :goto_3

    :sswitch_11
    const-string v3, "-403"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    goto/16 :goto_3

    :sswitch_12
    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    goto/16 :goto_3

    .line 3131
    :pswitch_8
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v9, "1"

    const-string v10, "0012"

    invoke-virtual {v3, v9, v10}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3136
    :sswitch_13
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    goto/16 :goto_5

    :sswitch_14
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    goto/16 :goto_5

    :sswitch_15
    const-string v3, "-403"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v7

    goto/16 :goto_5

    :sswitch_16
    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v8

    goto/16 :goto_5

    .line 3143
    :pswitch_9
    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v4, "1"

    const-string v5, "0054"

    invoke-virtual {v3, v4, v5}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3077
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x5a4 -> :sswitch_5
        0x61f -> :sswitch_3
        0x153dea -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 3117
    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_c
        0x31 -> :sswitch_d
        0x32 -> :sswitch_e
        0x33 -> :sswitch_f
        0x34 -> :sswitch_10
        0x5a4 -> :sswitch_12
        0x153dea -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 3136
    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_13
        0x31 -> :sswitch_14
        0x5a4 -> :sswitch_16
        0x153dea -> :sswitch_15
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 3080
    :sswitch_data_3
    .sparse-switch
        0x30 -> :sswitch_6
        0x31 -> :sswitch_7
        0x153dea -> :sswitch_8
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 3095
    :sswitch_data_4
    .sparse-switch
        0x30 -> :sswitch_9
        0x31 -> :sswitch_a
        0x153dea -> :sswitch_b
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private takePhoto(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00d4
        }
    .end annotation

    .prologue
    .line 4767
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->playSound1()V

    .line 4768
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u70b9\u51fb"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4770
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 4842
    :goto_0
    return-void

    .line 4773
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->isSdcardExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4775
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4776
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const v1, 0xabc1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4780
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardTaking:Z

    if-eqz v0, :cond_2

    .line 4781
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800ce

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4792
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$34;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setPhotoCallback(Lcom/jieli/lib/stream/udp/IActionListener;)V

    .line 4839
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0}, Lcom/hfufo/widget/MjpegView;->startShot()V

    goto :goto_0
.end method

.method private takeVideo(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00d5
        }
    .end annotation

    .prologue
    const v6, 0x895440

    const/16 v5, 0x500

    const/16 v3, 0x2d0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 4396
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_1

    .line 4524
    :cond_0
    :goto_0
    return-void

    .line 4399
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canRecord:Z

    if-nez v0, :cond_2

    .line 4400
    const v0, 0x7f0800ce

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 4407
    :cond_2
    const/16 v0, 0x5dc

    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4409
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRecording:Z

    if-eqz v0, :cond_3

    .line 4410
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRecording:Z

    .line 4411
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcEncoder;->StopThread()V

    .line 4412
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0}, Lcom/hfufo/widget/MjpegView;->stopRecord()V

    .line 4413
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hideVideoUI()V

    .line 4414
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canRecord:Z

    .line 4488
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->playSound()V

    goto :goto_0

    .line 4417
    :cond_3
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRecording:Z

    .line 4418
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mjpegView-startRecord frameRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->frameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4420
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVga:Z

    if-nez v0, :cond_5

    .line 4421
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoWidth:I

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/widget/MjpegView;->setRecordSize(II)V

    .line 4422
    new-instance v0, Lcom/hfufo/widget/AvcEncoder;

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoWidth:I

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoHeight:I

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/hfufo/widget/AvcEncoder;-><init>(IIII)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    .line 4429
    :goto_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$30;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$30;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setVideoCallback(Lcom/jieli/lib/stream/udp/IActionListener;)V

    .line 4443
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    invoke-virtual {v0, v4}, Lcom/hfufo/widget/AvcEncoder;->setJpeg(Z)V

    .line 4444
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$31;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/AvcEncoder;->setH264CallBack(Lcom/hfufo/widget/AvcEncoder$H264CallBack;)V

    .line 4481
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0}, Lcom/hfufo/widget/MjpegView;->startRecord()V

    .line 4482
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcEncoder;->StartThread()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4485
    :cond_4
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showVideoUI()V

    goto :goto_1

    .line 4424
    :cond_5
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v5, v3}, Lcom/hfufo/widget/MjpegView;->setRecordSize(II)V

    .line 4425
    new-instance v0, Lcom/hfufo/widget/AvcEncoder;

    const/16 v1, 0x19

    invoke-direct {v0, v5, v3, v1, v6}, Lcom/hfufo/widget/AvcEncoder;-><init>(IIII)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    goto :goto_2
.end method

.method private takeoff(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00df
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 4359
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 4371
    :goto_0
    return-void

    .line 4362
    :cond_0
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canLand:Z

    .line 4363
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setOneKeyFly(Z)V

    .line 4364
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setOneKeyFly(Z)V

    .line 4367
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_takeoff:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4368
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_land:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4369
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyText:Landroid/widget/TextView;

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4370
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 4376
    if-nez p0, :cond_0

    .line 4377
    const-string v2, ""

    .line 4383
    :goto_0
    return-object v2

    .line 4378
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4379
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 4381
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 4379
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4383
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private toMVmode(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00bd
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 6247
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v0, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    const/16 v1, 0x2d0

    if-eq v0, v1, :cond_0

    .line 6248
    const v0, 0x7f08007c

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 6273
    :goto_0
    return-void

    .line 6251
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRecording:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canRecord:Z

    if-nez v0, :cond_2

    .line 6252
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const v1, 0x7f08014c

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6255
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followPalm:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionFace:Z

    if-eqz v0, :cond_4

    .line 6256
    :cond_3
    const v0, 0x7f0800d6

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6259
    :cond_4
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->drawline:Z

    if-eqz v0, :cond_5

    .line 6260
    const v0, 0x7f0800da

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6263
    :cond_5
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVr:Z

    if-eqz v0, :cond_6

    .line 6264
    const v0, 0x7f0800d4

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6267
    :cond_6
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRoker:Z

    if-eqz v0, :cond_7

    .line 6270
    :cond_7
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isMVMode:Z

    .line 6271
    const-string v0, "Mobile phone performance affects video fluency and video recording"

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 6272
    invoke-direct {p0, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->visibleMusic(Z)V

    goto :goto_0
.end method

.method private toMusicAc(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00b2
        }
    .end annotation

    .prologue
    .line 6401
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRecording:Z

    if-eqz v0, :cond_0

    .line 6405
    :goto_0
    return-void

    .line 6404
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->selsectMusic(Landroid/view/View;)V

    goto :goto_0
.end method

.method private topRudderInit()V
    .locals 2

    .prologue
    .line 3281
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$23;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$23;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/LeftRockerBgView;->setRudderListener(Lcom/fh/listener/RudderListener;)V

    .line 3301
    return-void
.end method

.method private tranRudderInit()V
    .locals 2

    .prologue
    .line 6459
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tranRudder:Lcom/hfufo/widget/TranRockerBgView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$56;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/TranRockerBgView;->setRudderListener(Lcom/fh/listener/RudderListener;)V

    .line 6497
    return-void
.end method

.method private tryToStop()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4298
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/AVPlayer;->isFrontStreamPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4299
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5173\u95ed\u6d41"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4300
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "0051"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4301
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "0050"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 4307
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/AVPlayer;->isRearStreamPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4308
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5173\u95ed\u6d411"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4309
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "0062"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4310
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "1"

    const-string v2, "0061"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/stream/tools/CommandHub;->requestStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 4315
    :cond_1
    return-void
.end method

.method private vga(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f013d
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4273
    const-string v0, "PreviewActivityTAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFrontStreamPlaying: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

    invoke-virtual {v4}, Lcom/jieli/lib/stream/tools/AVPlayer;->isFrontStreamPlaying()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isRearStreamPlaying:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

    invoke-virtual {v4}, Lcom/jieli/lib/stream/tools/AVPlayer;->isRearStreamPlaying()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4274
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 4293
    :goto_0
    return-void

    .line 4277
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    if-nez v0, :cond_1

    .line 4278
    const v0, 0x7f08006e

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 4281
    :cond_1
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isSelectRTSLevel:Z

    .line 4282
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVga:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVga:Z

    .line 4283
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVga:Z

    if-eqz v0, :cond_3

    .line 4284
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->currentSizePosition:I

    .line 4289
    :goto_2
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mFirst:Z

    .line 4290
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVga:Z

    sput-boolean v0, Lcom/hfufo/service/CommunicationService;->isVga:Z

    .line 4291
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tryToStop()V

    .line 4292
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 4282
    goto :goto_1

    .line 4287
    :cond_3
    iput v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->currentSizePosition:I

    goto :goto_2
.end method

.method private vga2(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f0139
        }
    .end annotation

    .prologue
    .line 4269
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->vga(Landroid/view/View;)V

    .line 4270
    return-void
.end method

.method private videoChangeResolutionRatio(Ljava/lang/String;)V
    .locals 5
    .param p1, "oldVideoUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 5949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->recordDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/REC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1080P.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5950
    .local v0, "outputVideoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->waitting:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5951
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canRecord:Z

    .line 5952
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/videooperate/utils/VideoManager;->getInstance(Landroid/content/Context;Lcom/videooperate/utils/VideoManager$Callback;)Lcom/videooperate/utils/VideoManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/videooperate/utils/VideoManager;->exec(Ljava/lang/String;Ljava/lang/String;)V

    .line 5953
    return-void
.end method

.method private visibleMusic(Z)V
    .locals 4
    .param p1, "isShowed"    # Z

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 6110
    if-eqz p1, :cond_1

    .line 6111
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hideMenu()V

    .line 6113
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_menu:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6114
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->calibration:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6116
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6117
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_file:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6119
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->fileText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6120
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->switchCamera2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6121
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_takeoff:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6122
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_land:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6123
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6124
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6126
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->modeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6127
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6128
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6130
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_land:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6131
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6132
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_back:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6133
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6138
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->return_control:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6139
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_filter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6140
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_file1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6142
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_music_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6143
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tvMusicName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6145
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6146
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6148
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isShowPtz:Z

    if-eqz v0, :cond_0

    .line 6149
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showPtz()V

    .line 6192
    :cond_0
    :goto_0
    return-void

    .line 6155
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_menu:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6156
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->calibration:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6158
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6159
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_file:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6161
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->fileText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6165
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canLand:Z

    if-eqz v0, :cond_2

    .line 6166
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_land:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6170
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6174
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6175
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6177
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6178
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_back:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6179
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6181
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->return_control:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6182
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_filter:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6183
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_file1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6185
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_music_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6186
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tvMusicName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6187
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6168
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_takeoff:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private visibleTip()V
    .locals 6

    .prologue
    const v5, 0x7f080144

    const v4, 0x7f0300c4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 5303
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_tips:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5305
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    if-nez v0, :cond_1

    .line 5306
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tip_image1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5307
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tip_text1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 5320
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5321
    return-void

    .line 5309
    :cond_1
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5310
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tip_image1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5311
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tip_text1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 5312
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tip_text3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5313
    :cond_2
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 5314
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tip_text1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5315
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tip_image1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5316
    :cond_3
    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5317
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tip_image1:Landroid/widget/ImageView;

    const v1, 0x7f0300c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5318
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tip_text1:Landroid/widget/TextView;

    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private visibleView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 5830
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    .line 5863
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5864
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->trim1:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 5865
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->trim2:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 5866
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->trim3:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 5869
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rollView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5871
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5878
    :goto_0
    :pswitch_0
    return-void

    .line 5835
    :pswitch_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 5839
    :pswitch_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5841
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5842
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rollView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5843
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5846
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rokerOff()V

    .line 5847
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRoker:Z

    goto :goto_0

    .line 5830
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private vr(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/micro/view/annotation/event/OnClick;
        value = {
            0x7f0f00c3
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 4320
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 4347
    :goto_0
    return-void

    .line 4323
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVr:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVr:Z

    .line 4324
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVr:Z

    if-eqz v0, :cond_3

    .line 4325
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView1:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    .line 4326
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v3, v3}, Lcom/hfufo/widget/MjpegView;->setTranslate(FF)V

    .line 4327
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView1:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v3, v3}, Lcom/hfufo/widget/MjpegView;->setTranslate(FF)V

    .line 4328
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView1:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setVr(Z)V

    .line 4329
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setVr(Z)V

    .line 4330
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0}, Lcom/hfufo/widget/MjpegView;->clearCanvas()V

    .line 4331
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView1:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0}, Lcom/hfufo/widget/MjpegView;->clearCanvas()V

    .line 4332
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v5}, Lcom/hfufo/widget/MjpegView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4333
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView1:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v5}, Lcom/hfufo/widget/MjpegView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4335
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->h_ac:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4336
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isShowPtz:Z

    if-eqz v0, :cond_1

    .line 4337
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showPtz()V

    .line 4339
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v4, v4}, Lcom/hfufo/widget/MjpegView;->setSize(FF)V

    .line 4340
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView1:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v4, v4}, Lcom/hfufo/widget/MjpegView;->setSize(FF)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 4323
    goto :goto_1

    .line 4343
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MjpegView;->setVr(Z)V

    .line 4344
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView1:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MjpegView;->setVr(Z)V

    .line 4345
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView1:Lcom/hfufo/widget/MjpegView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCurSysDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3454
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3455
    .local v1, "sDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3456
    .local v0, "date":Ljava/lang/String;
    return-object v0
.end method

.method public hideRockerInit()V
    .locals 2

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->left_layout_hide:Landroid/view/View;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onRudderLTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3221
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->right_layout_hide:Landroid/view/View;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onRudderRTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3222
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isSpeed:I

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setSpeed(I)V

    .line 3223
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isSpeed:I

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setSpeed(I)V

    .line 3224
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$21;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$21;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setRudderListener(Lcom/fh/listener/RudderListener;)V

    .line 3250
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$22;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$22;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setRudderListener(Lcom/fh/listener/RudderListener;)V

    .line 3277
    return-void
.end method

.method public initOpencvMode(I)V
    .locals 0
    .param p1, "model"    # I

    .prologue
    .line 2534
    invoke-static {p1}, Lcom/opencv/openCVJni;->SetModel(I)V

    .line 2536
    return-void
.end method

.method public initSocket()V
    .locals 3

    .prologue
    .line 2426
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/stream/tools/CommandHub;->isActive()Z

    move-result v0

    .line 2428
    .local v0, "isSocketActive":Z
    if-nez v0, :cond_0

    .line 2430
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "service \u6307\u4ee4\u53d1\u9001"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2431
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendCommandToService(I)V

    .line 2434
    :cond_0
    return-void
.end method

.method public manualViewInit()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 3188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isManual:Z

    .line 3189
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    .line 3190
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MotionView;->setVisibility(I)V

    .line 3191
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setRightRudderPoint(Landroid/graphics/Point;)V

    .line 3192
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$20;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$20;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setMsgCallback(Lcom/fh/util/MsgCallback;)V

    .line 3216
    return-void
.end method

.method public motionViewInit()V
    .locals 2

    .prologue
    .line 3312
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->dm:Landroid/util/DisplayMetrics;

    .line 3313
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3315
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    invoke-virtual {v0}, Lcom/hfufo/widget/MotionView;->startSensor()V

    .line 3316
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    new-instance v1, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity$24;-><init>(Lcom/hfufo/rxdrone/ManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MotionView;->setMsgCallback(Lcom/fh/util/MsgCallback;)V

    .line 3417
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 6029
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 6030
    packed-switch p1, :pswitch_data_0

    .line 6040
    :cond_0
    :goto_0
    return-void

    .line 6032
    :pswitch_0
    if-nez p3, :cond_1

    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6035
    :cond_1
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/videooperate/bean/Song;

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    .line 6036
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showOrHideSelectedMuisc(Z)V

    goto :goto_0

    .line 6030
    :pswitch_data_0
    .packed-switch 0x2766
        :pswitch_0
    .end packed-switch
.end method

.method public onCompletion(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z
    .param p3, "b1"    # Z

    .prologue
    .line 4980
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3445
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3446
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isFill:Z

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setVideoShowRect(Z)V

    .line 3447
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x438

    const/16 v3, 0x400

    const/16 v9, 0x2d0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2446
    invoke-virtual {p0, v8}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->requestWindowFeature(I)Z

    .line 2447
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 2448
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 2449
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2451
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2452
    const v2, 0x7f040020

    invoke-virtual {p0, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setContentView(I)V

    .line 2453
    invoke-static {}, Lcom/fh/util/MyApplication;->getInstance()Lcom/fh/util/MyApplication;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/fh/util/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 2454
    invoke-static {p0}, Lcom/micro/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 2455
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getEditor()V

    .line 2456
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "online"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    .line 2457
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hold"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isHold:Z

    .line 2458
    iget-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->online:Z

    if-eqz v2, :cond_0

    .line 2459
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initSocket()V

    .line 2461
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/hfufo/rxdrone/MainApplication;

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    .line 2462
    new-instance v2, Lcom/jieli/lib/stream/tools/AVPlayer;

    invoke-direct {v2}, Lcom/jieli/lib/stream/tools/AVPlayer;-><init>()V

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

    .line 2463
    invoke-static {v7}, Lcom/jieli/lib/stream/util/Dbug;->openOrCloseDebug(Z)V

    .line 2464
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

    const/16 v3, 0x8b0

    const/4 v4, -0x1

    const-string v5, ""

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/jieli/lib/stream/tools/AVPlayer;->createSocket(IILjava/lang/String;I)Z

    move-result v1

    .line 2467
    .local v1, "isSuccess":Z
    if-eqz v1, :cond_1

    .line 2468
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

    const/16 v3, 0x1e

    const/16 v4, 0x100

    invoke-virtual {v2, v8, v3, v4}, Lcom/jieli/lib/stream/tools/AVPlayer;->setQueueMax(III)Z

    .line 2470
    :try_start_0
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mAVPlayer:Lcom/jieli/lib/stream/tools/AVPlayer;

    invoke-virtual {v2}, Lcom/jieli/lib/stream/tools/AVPlayer;->startListening()V
    :try_end_0
    .catch Lcom/jieli/lib/stream/tools/AVPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2480
    :goto_0
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manager:Landroid/content/pm/PackageManager;

    .line 2482
    :try_start_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->info:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2489
    :goto_1
    invoke-static {}, Lcom/jieli/lib/stream/tools/CommandHub;->getInstance()Lcom/jieli/lib/stream/tools/CommandHub;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    .line 2491
    const v2, 0x7f0f00ee

    invoke-virtual {p0, v2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tvFPS:Landroid/widget/TextView;

    .line 2493
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initComm()V

    .line 2494
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->playInit()V

    .line 2495
    iput-boolean v8, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendFlag:Z

    .line 2496
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initView()V

    .line 2498
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->visibleView()V

    .line 2499
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setTrim()V

    .line 2501
    invoke-static {p0}, Lcom/fh/hdutil/AppUtils;->isPad(Landroid/content/Context;)Z

    .line 2503
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "sendData"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    .line 2504
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2505
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    .line 2507
    invoke-static {p0}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->getInstance(Landroid/content/Context;)Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mGesture:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    .line 2508
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mGesture:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    invoke-virtual {v2}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->init()V

    .line 2509
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 2510
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2511
    const v2, 0x7f080027

    invoke-static {v2}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 2516
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initFile()V

    .line 2517
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->visibleTip()V

    .line 2519
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tranRudderInit()V

    .line 2520
    sget v2, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    const/16 v3, 0x800

    if-ne v2, v3, :cond_2

    .line 2521
    const/16 v2, 0x500

    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoWidth:I

    .line 2522
    iput v9, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoHeight:I

    .line 2530
    :goto_2
    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v2, v7}, Lcom/hfufo/widget/MjpegView;->setVr(Z)V

    .line 2531
    return-void

    .line 2471
    :catch_0
    move-exception v0

    .line 2472
    .local v0, "e":Lcom/jieli/lib/stream/tools/AVPlayerException;
    invoke-virtual {v0}, Lcom/jieli/lib/stream/tools/AVPlayerException;->printStackTrace()V

    goto/16 :goto_0

    .line 2477
    .end local v0    # "e":Lcom/jieli/lib/stream/tools/AVPlayerException;
    :cond_1
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u521d\u59cb\u5316play\u5931\u8d25"

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2483
    :catch_1
    move-exception v0

    .line 2485
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 2523
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    sget v2, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    if-ne v2, v10, :cond_3

    .line 2524
    const/16 v2, 0x780

    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoWidth:I

    .line 2525
    iput v10, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoHeight:I

    goto :goto_2

    .line 2527
    :cond_3
    const/16 v2, 0x500

    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoWidth:I

    .line 2528
    iput v9, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->videoHeight:I

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3552
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isManual:Z

    if-nez v0, :cond_0

    .line 3553
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    invoke-virtual {v0}, Lcom/hfufo/widget/MotionView;->finishSensor()V

    .line 3555
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->tryToStop()V

    .line 3556
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->classicalSend:Z

    .line 3557
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->Recording:Z

    .line 3558
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendFlag:Z

    .line 3559
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendData:Z

    .line 3567
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    .line 3568
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionFace:Z

    .line 3570
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->classicalSend:Z

    .line 3572
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mReceiver:Lcom/hfufo/rxdrone/ManualCtrlActivity$DeviceBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3574
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3575
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3577
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 3578
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3580
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 3581
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3582
    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    .line 3584
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 3585
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->timeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3586
    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->timeHandler:Landroid/os/Handler;

    .line 3588
    :cond_4
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 3589
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3590
    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    .line 3592
    :cond_5
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 3593
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3594
    iput-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 3596
    :cond_6
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 3597
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 3598
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 3599
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 4985
    return-void
.end method

.method public onFailure()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6074
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6075
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canRecord:Z

    .line 6076
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldVideoUrl:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pushData(ZLjava/lang/String;)V

    .line 6077
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3493
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 3494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mExitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3496
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/fh/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 3497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mExitTime:J

    .line 3498
    const/4 v0, 0x1

    .line 3502
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMountState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "mountState"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1642
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1688
    :cond_1
    :goto_1
    return-void

    .line 1642
    :sswitch_0
    const-string v3, "-1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1644
    :pswitch_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1651
    :pswitch_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->setSdcardExist(Z)V

    goto :goto_1

    .line 1669
    :pswitch_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0, v2}, Lcom/hfufo/rxdrone/MainApplication;->setSdcardExist(Z)V

    .line 1670
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1642
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x31 -> :sswitch_2
        0x5a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3507
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->noCardRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRecording:Z

    if-eqz v0, :cond_1

    .line 3508
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    .line 3510
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    if-nez v0, :cond_2

    .line 3513
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_filter:Landroid/widget/ImageView;

    const v1, 0x7f030014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3514
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MjpegView;->setFilterMode(Z)V

    .line 3515
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MjpegView;->setFilter(I)V

    .line 3516
    iput v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->filterNumber:I

    .line 3517
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3518
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MjpegView;->setRotation(F)V

    .line 3519
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MjpegView;->setRotateMode(Z)V

    .line 3520
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    const v1, 0x7f03003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3521
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRotate:Z

    .line 3522
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 3523
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .prologue
    .line 2968
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    .line 2971
    return-void
.end method

.method public onProgress()V
    .locals 2

    .prologue
    .line 6082
    const-string v0, "rxffmpeg"

    const-string v1, "onProgress"

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6083
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 2975
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 2977
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hRecTime:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2978
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hRecTime:Landroid/os/Handler;

    .line 2980
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hRecFlag:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 2981
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hRecFlag:Landroid/os/Handler;

    .line 2983
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 2984
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    .line 2987
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 2988
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    .line 2992
    :cond_3
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->syncDeviceStatus()V

    .line 2999
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isMVMode:Z

    if-nez v0, :cond_4

    .line 3000
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showMode()V

    .line 3005
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isHold:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setHold(Z)V

    .line 3006
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isHold:Z

    if-eqz v0, :cond_5

    .line 3007
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 3011
    :goto_1
    return-void

    .line 3002
    :cond_4
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showMode()V

    .line 3003
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->visibleMusic(Z)V

    goto :goto_0

    .line 3009
    :cond_5
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const/16 v1, -0x80

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 2960
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 2963
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4975
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3527
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 3529
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3530
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3531
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    .line 3532
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followPalm:Z

    .line 3533
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmVideo:Z

    .line 3534
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3535
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onText:Landroid/widget/TextView;

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3536
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3548
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "composeVideoUrl"    # Ljava/lang/String;
    .param p2, "outputVideoUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 6050
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6052
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->canRecord:Z

    .line 6053
    if-eqz p1, :cond_0

    .line 6055
    const-string v1, "rxffmpeg"

    const-string v2, "\u89c6\u9891\u5220\u9664"

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6056
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6057
    .local v0, "composeFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6058
    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldVideoUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/Util/FileUtil;->deleteFileWithPath(Ljava/lang/String;)Z

    .line 6059
    const-string v1, "rxffmpeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c6\u9891\u5220\u9664:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldVideoUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6060
    invoke-direct {p0, v4, p1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pushData(ZLjava/lang/String;)V

    .line 6063
    .end local v0    # "composeFile":Ljava/io/File;
    :cond_0
    invoke-direct {p0, v4, p2}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->pushData(ZLjava/lang/String;)V

    .line 6064
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 3015
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 3016
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0}, Lcom/hfufo/widget/RockerBgView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    .line 3017
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0}, Lcom/hfufo/widget/RockerBgView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    .line 3018
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFlyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v2}, Lcom/hfufo/widget/RockerBgView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v2}, Lcom/hfufo/widget/RockerBgView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    return-void
.end method

.method public playInit()V
    .locals 1

    .prologue
    .line 3165
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isFill:Z

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setVideoShowRect(Z)V

    .line 3169
    return-void
.end method

.method public rectTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 2580
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2604
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2583
    :pswitch_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    if-nez v0, :cond_0

    .line 2585
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v6

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWidthRatio:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v2, v1

    mul-double/2addr v2, v6

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHeightRatio:F

    float-to-double v4, v1

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/opencv/openCVJni;->SetInixy(II)V

    .line 2587
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myTouch_one====: x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    iget v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWidthRatio:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    iget v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHeightRatio:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2598
    :pswitch_2
    const-string v0, "ACTION_UP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ed3\u675f\u4f4d\u7f6eone\uff1a("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2580
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public rokerOff()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 4035
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onText:Landroid/widget/TextView;

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4040
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_stop:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4048
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->trim3:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 4049
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->ll_trim:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4051
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hideFlyMode()V

    .line 4052
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    const v1, 0x7f03009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4053
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4055
    return-void
.end method

.method public rokerOn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4001
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onText:Landroid/widget/TextView;

    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4006
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_stop:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4015
    sget v0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4016
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->ll_trim:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4017
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->trim1:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 4018
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->trim2:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 4019
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->trim3:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 4022
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->showFlyMode()V

    .line 4023
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    const v1, 0x7f03009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4024
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4025
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isHold:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setHold(Z)V

    .line 4026
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isHold:Z

    if-eqz v0, :cond_1

    .line 4027
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 4031
    :goto_0
    return-void

    .line 4029
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const/16 v1, -0x80

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto :goto_0
.end method

.method public rudderLTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2612
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2670
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2617
    :pswitch_1
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rudderLTouch_D: x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2620
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rudderLTouch_D11: x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2623
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rudderLTouch_D111: x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setLeftWheelPosition(FF)V

    .line 2625
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xLeftEvent:F

    .line 2626
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->yLeftEvent:F

    goto/16 :goto_0

    .line 2640
    :pswitch_2
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b9e\u65f6\u4f4d\u7f6eL\uff1a("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xLeftEvent:F

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->yLeftEvent:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/widget/RockerBgView;->onTouchHide(FF)V

    goto/16 :goto_0

    .line 2648
    :pswitch_3
    const-string v0, "ACTION_UP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rudderLTouch_U\uff1a("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmode:Z

    if-eqz v0, :cond_1

    .line 2651
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2652
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2658
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2655
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2656
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public rudderRTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 2678
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2729
    :cond_0
    :goto_0
    return v4

    .line 2683
    :pswitch_0
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rudderRTouch_D: x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2684
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flyMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2685
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2686
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xRightEvent:F

    .line 2687
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->yRightEvent:F

    .line 2688
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setRightWheelPosition(FF)V

    goto/16 :goto_0

    .line 2699
    :pswitch_1
    const-string v0, "PreviewActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b9e\u65f6\u4f4d\u7f6eR\uff1a("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2700
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xRightEvent:F

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->yRightEvent:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/widget/RockerBgView;->onTouchHide(FF)V

    goto/16 :goto_0

    .line 2706
    :pswitch_2
    const-string v0, "ACTION_UP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rudderRTouch_U\uff1a("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/stream/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2709
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightmode:Z

    if-eqz v0, :cond_1

    .line 2711
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2712
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2719
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2716
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2717
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2678
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public saveVideo()V
    .locals 2

    .prologue
    .line 1873
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->Recording:Z

    if-nez v0, :cond_0

    .line 1874
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->runnable_save_video:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1878
    :cond_0
    return-void
.end method

.method public sendCommandToService(I)V
    .locals 3
    .param p1, "cmd"    # I

    .prologue
    .line 2437
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hfufo/service/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2438
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "service_command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2439
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/MainApplication;->sendToService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2441
    return-void
.end method

.method public setLeftWheelPosition(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2928
    float-to-int v4, p1

    iget v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    sub-int v1, v4, v5

    .line 2929
    .local v1, "left":I
    float-to-int v4, p2

    iget v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    sub-int v3, v4, v5

    .line 2930
    .local v3, "top":I
    float-to-int v4, p1

    iget v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    add-int v2, v4, v5

    .line 2931
    .local v2, "right":I
    float-to-int v4, p2

    iget v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    add-int v0, v4, v5

    .line 2932
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/hfufo/widget/RockerBgView;->setVisibility(I)V

    .line 2933
    const-string v4, "PreviewActivityTAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLeftWheelPosition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v6}, Lcom/hfufo/widget/RockerBgView;->isShown()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/hfufo/widget/RockerBgView;->layout(IIII)V

    .line 2935
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 2936
    return-void
.end method

.method public setRightWheelPosition(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2939
    float-to-int v4, p1

    iget v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    sub-int v1, v4, v5

    .line 2940
    .local v1, "left":I
    float-to-int v4, p2

    iget v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    sub-int v3, v4, v5

    .line 2941
    .local v3, "top":I
    float-to-int v4, p1

    iget v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    add-int v2, v4, v5

    .line 2942
    .local v2, "right":I
    float-to-int v4, p2

    iget v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mWheelRadius:I

    add-int v0, v4, v5

    .line 2943
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/hfufo/widget/RockerBgView;->setVisibility(I)V

    .line 2944
    const-string v4, "PreviewActivityTAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLeftWheelPosition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v6}, Lcom/hfufo/widget/RockerBgView;->isShown()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/hfufo/widget/RockerBgView;->layout(IIII)V

    .line 2946
    iget-object v4, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 2947
    return-void
.end method

.method public setVideoShowRect(Z)V
    .locals 3
    .param p1, "isFill"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3433
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3434
    .local v0, "rect":Landroid/graphics/Rect;
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3435
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3436
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3437
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3440
    return-void
.end method

.method public showMode()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5389
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "3"

    const-string v2, "068"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5390
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCommandHub:Lcom/jieli/lib/stream/tools/CommandHub;

    const-string v1, "3"

    const-string v2, "0129"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/stream/tools/CommandHub;->sendCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5392
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->flightMode:Z

    if-eqz v0, :cond_0

    .line 5394
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionFace:Z

    .line 5395
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    .line 5396
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followPalm:Z

    .line 5397
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmVideo:Z

    .line 5398
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v6}, Lcom/hfufo/widget/RectView;->setLines(Z)V

    .line 5399
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v7}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 5402
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    const v1, 0x7f03002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5410
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->onText:Landroid/widget/TextView;

    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5411
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5414
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5415
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5450
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    .line 5455
    return-void

    .line 5428
    :cond_0
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->menuShow:Z

    .line 5429
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hideMenu()V

    .line 5430
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->hideFlyMode()V

    .line 5431
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v5}, Lcom/hfufo/widget/RectView;->setLines(Z)V

    .line 5432
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->palmVideo:Z

    .line 5433
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mDetectionHand:Z

    .line 5434
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->followFaceMode:Z

    .line 5435
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    const v1, 0x7f030031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5436
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5437
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5438
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5439
    invoke-virtual {p0, v6}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->initOpencvMode(I)V

    .line 5440
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->masterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5441
    invoke-direct {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->startDetectionFace()V

    goto :goto_0
.end method

.method public viewInit()V
    .locals 2

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rl_rec_time:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3182
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->manualViewInit()V

    .line 3185
    return-void
.end method

.method public viewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2752
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 2898
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v11, 0x1

    :goto_1
    return v11

    .line 2758
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2759
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->point_num:I

    .line 2760
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downX:F

    .line 2761
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downY:F

    .line 2763
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCurTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mLastTime:J

    .line 2765
    invoke-static/range {p2 .. p2}, Lcom/fh/hdutil/AppUtils;->spacingCenter(Landroid/view/MotionEvent;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->down2CenterDistance:D

    .line 2771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCurTime:J

    .line 2772
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->resetRotaton:Z

    .line 2773
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCurTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mLastTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0x12c

    cmp-long v11, v18, v20

    if-gez v11, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->point_num:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    .line 2774
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->resetRotaton:Z

    .line 2775
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/hfufo/widget/MjpegView;->setSize(FF)V

    .line 2776
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/hfufo/widget/MjpegView;->setRotation(F)V

    .line 2778
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2780
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 2782
    :cond_1
    const-string v11, "PreviewActivityTAG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "rudderLTouch_D: x:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",y:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2787
    :pswitch_2
    invoke-static/range {p2 .. p2}, Lcom/fh/hdutil/AppUtils;->spacing(Landroid/view/MotionEvent;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->twoPointDistance:D

    .line 2788
    move-object/from16 v0, p0

    iget v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldScaleWidth:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scaleWidth:F

    .line 2789
    move-object/from16 v0, p0

    iget v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->point_num:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->point_num:I

    .line 2794
    :pswitch_3
    const-string v11, "PreviewActivityTAG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u5b9e\u65f6\u4f4d\u7f6eL\uff1a("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    move-object/from16 v0, p0

    iget v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->point_num:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_2

    .line 2797
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRotate:Z

    if-eqz v11, :cond_0

    .line 2799
    invoke-static/range {p2 .. p2}, Lcom/fh/hdutil/AppUtils;->spacingCenter(Landroid/view/MotionEvent;)D

    move-result-wide v6

    .line 2800
    .local v6, "moveDistance":D
    move-object/from16 v0, p0

    iget v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scaleWidth:F

    float-to-double v0, v11

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->down2CenterDistance:D

    move-wide/from16 v20, v0

    sub-double v20, v6, v20

    const-wide/high16 v22, 0x4018000000000000L    # 6.0

    mul-double v20, v20, v22

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v11, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    float-to-double v0, v11

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .line 2801
    .local v10, "scale":F
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setScaleOfIjk(F)V

    .line 2803
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v19, v0

    sget v19, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v20, v0

    sget v20, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v11, v0, v1, v2}, Lcom/fh/hdutil/AppUtils;->computeCurrentAngle(FFFF)I

    move-result v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldAngleWidth:F

    .line 2805
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldAngleWidth:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/hfufo/widget/MjpegView;->setRotation(F)V

    goto/16 :goto_0

    .line 2809
    .end local v6    # "moveDistance":D
    .end local v10    # "scale":F
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->point_num:I

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v11, v0, :cond_0

    .line 2811
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isVr:Z

    if-eqz v11, :cond_3

    .line 2812
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 2814
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRotate:Z

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRoker:Z

    if-nez v11, :cond_0

    .line 2816
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scale_num:Landroid/widget/TextView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2817
    invoke-static/range {p2 .. p2}, Lcom/fh/hdutil/AppUtils;->spacing(Landroid/view/MotionEvent;)D

    move-result-wide v4

    .line 2818
    .local v4, "Distance":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->twoPointDistance:D

    move-wide/from16 v18, v0

    sub-double v12, v4, v18

    .line 2819
    .local v12, "space":D
    move-object/from16 v0, p0

    iget v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scaleWidth:F

    float-to-double v0, v11

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    mul-double v20, v20, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v11, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    float-to-double v0, v11

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .line 2820
    .restart local v10    # "scale":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_0

    .line 2821
    const/high16 v11, 0x41200000    # 10.0f

    mul-float/2addr v11, v10

    float-to-int v9, v11

    .line 2822
    .local v9, "sc":I
    const/16 v11, 0x28

    if-lt v9, v11, :cond_4

    .line 2823
    const/16 v9, 0x28

    .line 2825
    :cond_4
    int-to-float v11, v9

    const/high16 v18, 0x41200000    # 10.0f

    div-float v8, v11, v18

    .line 2826
    .local v8, "s":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scale_num:Landroid/widget/TextView;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2827
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/hfufo/rxdrone/ManualCtrlActivity;->setScaleOfIjk(F)V

    .line 2828
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/hfufo/widget/MjpegView;->setTranslate(FF)V

    goto/16 :goto_0

    .line 2837
    .end local v4    # "Distance":D
    .end local v8    # "s":F
    .end local v9    # "sc":I
    .end local v10    # "scale":F
    .end local v12    # "space":D
    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mCurTime:J

    move-wide/from16 v20, v0

    sub-long v16, v18, v20

    .line 2838
    .local v16, "totalTime":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downY:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcom/fh/hdutil/AppUtils;->getDistance(FF)D

    move-result-wide v14

    .line 2839
    .local v14, "totalDistance":D
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->isRotate:Z

    if-eqz v11, :cond_9

    const-wide/16 v18, 0xc8

    cmp-long v11, v16, v18

    if-gez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v11, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    const/high16 v18, 0x40400000    # 3.0f

    div-float v11, v11, v18

    float-to-double v0, v11

    move-wide/from16 v18, v0

    cmpl-double v11, v14, v18

    if-lez v11, :cond_9

    .line 2840
    move-object/from16 v0, p0

    iget v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v18, v0

    sget v18, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    cmpl-float v11, v11, v18

    if-lez v11, :cond_7

    .line 2841
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downY:F

    move/from16 v18, v0

    cmpl-float v11, v11, v18

    if-lez v11, :cond_6

    .line 2842
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rotationSense:Z

    .line 2856
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->oldScaleWidth:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scaleWidth:F

    .line 2857
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v14, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rotationSpeed:D

    .line 2858
    const-string v11, "rrrrr"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "viewTouch: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rotationSpeed:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Lcom/jieli/lib/stream/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v19, v0

    sget v19, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v20, v0

    sget v20, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v11, v0, v1, v2}, Lcom/fh/hdutil/AppUtils;->computeCurrentAngle(FFFF)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->degreeSelf:I

    .line 2860
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2861
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2879
    :cond_5
    :goto_3
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->point_num:I

    .line 2880
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downX:F

    .line 2881
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downY:F

    goto/16 :goto_0

    .line 2845
    :cond_6
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rotationSense:Z

    goto/16 :goto_2

    .line 2849
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downY:F

    move/from16 v18, v0

    cmpl-float v11, v11, v18

    if-lez v11, :cond_8

    .line 2850
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rotationSense:Z

    goto/16 :goto_2

    .line 2853
    :cond_8
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->rotationSense:Z

    goto/16 :goto_2

    .line 2864
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->resetRotaton:Z

    if-eqz v11, :cond_5

    .line 2865
    move-object/from16 v0, p0

    iget v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->downX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    move-object/from16 v18, v0

    sget v18, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    cmpl-float v11, v11, v18

    if-ltz v11, :cond_a

    .line 2866
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/hfufo/widget/MjpegView;->setRotation(F)V

    .line 2873
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/hfufo/widget/MjpegView;->setSize(FF)V

    .line 2874
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scaleWidth:F

    .line 2876
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 2870
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->mjpegView:Lcom/hfufo/widget/MjpegView;

    const/high16 v18, 0x43340000    # 180.0f

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/hfufo/widget/MjpegView;->setRotation(F)V

    goto :goto_4

    .line 2886
    .end local v14    # "totalDistance":D
    .end local v16    # "totalTime":J
    :pswitch_5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->point_num:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->point_num:I

    .line 2887
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/hfufo/rxdrone/ManualCtrlActivity;->scale_num:Landroid/widget/TextView;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
