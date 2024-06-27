.class public Lcom/hfufo/rxdrone/HDManualCtrlActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HDManualCtrlActivity.java"

# interfaces
.implements Lcom/fh/hdutil/IConstant;
.implements Lcom/fh/hdutil/IActions;
.implements Lcom/videooperate/utils/VideoManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;
    }
.end annotation


# static fields
.field private static final MAX_FRAMEBUF:I = 0x151800

.field private static final MODE_BROWSE:I = 0x102

.field private static final MODE_PREVIEW:I = 0x101

.field private static final MSG_ADD_TASK:I = 0x52

.field private static final MSG_CYC_SAVE_VIDEO:I = 0xa04

.field private static final MSG_PROJECTION_CONTROL:I = 0xa02

.field private static final MSG_RT_VOICE_CONTROL:I = 0xa03

.field private static final MSG_START_TASK:I = 0x50

.field private static final MSG_STOP_TASK:I = 0x51

.field private static final MSG_TAKE_PHOTO:I = 0xa01

.field private static final MSG_TAKE_VIDEO:I = 0xa00

.field public static final SCALE_MAX:F = 4.0f

.field private static final SCALE_MIN:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "HDManualCtrlActivityTAG"

.field public static mApplication:Lcom/hfufo/rxdrone/MainApplication;


# instance fields
.field KEY_SERVICE_CMD:Ljava/lang/String;

.field public MAX_VID_DURATION:I

.field private final MSG_NET_RECONNECT:I

.field Recording:Z

.field private Recording1:Z

.field private aData:[B

.field aPort:[I

.field private aWait:Z

.field private avcCodec:Lcom/hfufo/widget/AvcEncoder;

.field final awaitTime:J

.field private bFirstFrame_video:Z

.field b_createSeocket:Z

.field private bitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private bmp:Landroid/graphics/Bitmap;

.field private final body_model:I

.field private booleanConnect:Z

.field btn_speed:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00d3
        }
    .end annotation
.end field

.field private cBodyWidth:F

.field private cPalmWidth:F

.field calibration:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00b8
        }
    .end annotation
.end field

.field canLand:Z

.field private canRecord:Z

.field private candete:Z

.field change_fix:Landroid/widget/Button;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00b5
        }
    .end annotation
.end field

.field private channel1:B

.field private channel2:B

.field private chooseFix:Z

.field choose_hd:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00d0
        }
    .end annotation
.end field

.field classicLeft:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00a0
        }
    .end annotation
.end field

.field classicRight:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00a3
        }
    .end annotation
.end field

.field private classicalSend:Z

.field private clickButton:Z

.field private clientGPS:Lcom/task/UDPClientGPS;

.field private color:Ljava/lang/String;

.field private colorG:Ljava/lang/String;

.field con_backc:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f009b
        }
    .end annotation
.end field

.field con_body:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00c9
        }
    .end annotation
.end field

.field con_drawline:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00c1
        }
    .end annotation
.end field

.field con_face:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00bc
        }
    .end annotation
.end field

.field con_file:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00b9
        }
    .end annotation
.end field

.field con_file1:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00cc
        }
    .end annotation
.end field

.field con_filter:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00b0
        }
    .end annotation
.end field

.field con_fix:Landroid/widget/Button;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00c8
        }
    .end annotation
.end field

.field con_hide:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00cd
        }
    .end annotation
.end field

.field con_land:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00e1
        }
    .end annotation
.end field

.field con_menu:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00bf
        }
    .end annotation
.end field

.field con_music:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00bd
        }
    .end annotation
.end field

.field con_music_select:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00ce
        }
    .end annotation
.end field

.field con_panorama:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00c4
        }
    .end annotation
.end field

.field con_return:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00c6
        }
    .end annotation
.end field

.field con_rockercon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00d6
        }
    .end annotation
.end field

.field con_rotate:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00d2
        }
    .end annotation
.end field

.field con_stop:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00e2
        }
    .end annotation
.end field

.field con_takeoff:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00df
        }
    .end annotation
.end field

.field con_tips:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00f1
        }
    .end annotation
.end field

.field con_tips1:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00f8
        }
    .end annotation
.end field

.field private connectedS:Z

.field current_time:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f008d
        }
    .end annotation
.end field

.field private dataHeight:I

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dataWidth:I

.field private decodecRunning:Z

.field private degreeSelf:I

.field private dm:Landroid/util/DisplayMetrics;

.field private down2CenterDistance:D

.field downTIme:I

.field private downX:F

.field private downY:F

.field private downloadDir:Ljava/lang/String;

.field downloadRunnable:Ljava/lang/Runnable;

.field private downloadSpeed:I

.field private download_progress:Lcom/hfufo/widget/MyProgressBar;

.field private drawline:Z

.field private editText:Landroid/widget/EditText;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private faceBodyThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final face_model:I

.field private fileOp:I

.field fileText:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00ba
        }
    .end annotation
.end field

.field private filterNumber:I

.field private firstCenterW:I

.field private firstChoose:Z

.field private firstFollow:Z

.field firstRotate:Z

.field first_init:Z

.field private flightMode:Z

.field private flyMode:Z

.field flyText:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00e0
        }
    .end annotation
.end field

.field private followFaceMode:Z

.field private followFlag:Z

.field private followPalm:Z

.field private frameRateTime:I

.field private frameTime:J

.field private frameTimeT:J

.field gesture_thum:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00de
        }
    .end annotation
.end field

.field private grayFlag:Z

.field private hRecFlag:Landroid/os/Handler;

.field private hRecTime:Landroid/os/Handler;

.field private handlerCallback:Landroid/os/Handler$Callback;

.field private hasFix:Z

.field hd_ac:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f0087
        }
    .end annotation
.end field

.field hd_con_rev:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00c0
        }
    .end annotation
.end field

.field private hide_layout:Landroid/widget/LinearLayout;

.field private holdHandler:Landroid/os/Handler;

.field holdRunnable:Ljava/lang/Runnable;

.field private i:I

.field private iGpsListener:Lcom/task/IGpsListener;

.field private iMediaController:Lcom/hfufo/widget/media/IMediaController;

.field private i_wifi_code:I

.field private initHeight:F

.field private initWidth:F

.field private isAdjustResolution:Z

.field private isCanTouch:Z

.field private isCapturePrepared:Z

.field private isEditMode:Z

.field private isFix:Z

.field private isFlagShow:Z

.field private isFrontCamera:Z

.field private isHided:Z

.field private isHold:Z

.field private isIJKPlayerOpen:Z

.field private isKKDete:Z

.field private isLoading:Z

.field private isMVMode:Z

.field private isManual:Z

.field private isNeedZoomImg:Z

.field private isOnPause:Z

.field private isPanorama:Z

.field private isPanoramaA:Z

.field private isProjection:Z

.field private isRecordPrepared:Z

.field private isRecording:Z

.field isRegistered:Z

.field private isRev:Z

.field private isRoker:Z

.field private isRotate:Z

.field private isSelectAll:Z

.field private isSentOpenRtsCmd:Z

.field private isShowPtz:Z

.field private isSpeed:I

.field private isStarted:Z

.field private isSwitchCamera:Z

.field private isTaking:Z

.field private isVga:Z

.field private isVr:Z

.field private issave:Z

.field ivAddMusic:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00d1
        }
    .end annotation
.end field

.field ivMusicDel:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00cf
        }
    .end annotation
.end field

.field private j:I

.field private languageMode:I

.field private lastData:Ljava/lang/String;

.field private lastFrame:J

.field leftDown:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00a2
        }
    .end annotation
.end field

.field leftRDown:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00a5
        }
    .end annotation
.end field

.field leftRLeft:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00a6
        }
    .end annotation
.end field

.field leftRRight:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00a7
        }
    .end annotation
.end field

.field leftRUp:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00a4
        }
    .end annotation
.end field

.field leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

.field leftUp:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00a1
        }
    .end annotation
.end field

.field left_layout_hide:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f0092
        }
    .end annotation
.end field

.field ll_trim:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00e5
        }
    .end annotation
.end field

.field private longPress:Z

.field private lost_net:Z

.field private mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBufList:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCameraType:I

.field private mCount:I

.field private mCountdown:Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;

.field private mCurTime:J

.field private mDetectionFace:Z

.field private mDetectionHand:Z

.field private mExitTime:J

.field private mFirst:Z

.field private mGesture:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

.field private mGestureInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/thinkjoy/zhthinkjoygesturedetectlib/GestureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mH264List:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

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

.field mLoadingView:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f008f
        }
    .end annotation
.end field

.field private mMat:Lorg/opencv/core/Mat;

.field private mMatGray:Lorg/opencv/core/Mat;

.field private mMediaScannerConnection:Landroid/media/MediaScannerConnection;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mPaint2:Landroid/graphics/Paint;

.field private mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordVideo:Lcom/task/VideoRecord;

.field private mRect:Landroid/graphics/Rect;

.field private mRectView:Lcom/hfufo/widget/RectView;

.field private mRects:Ljava/util/List;
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

.field mStep:I

.field public mStreamView:Lcom/hfufo/widget/IjkVideoView;

.field public mStreamView1:Lcom/hfufo/widget/IjkVideoView;

.field private mUIHandler:Landroid/os/Handler;

.field private mVideoCapture:Lcom/task/VideoCapture;

.field private mWf_netAPI:Lcom/wifi/WF_NetAPI;

.field private mWheelRadius:I

.field private mWidthRatio:F

.field private mWorkHandler:Landroid/os/Handler;

.field private mZoomImageThread:Lcom/fh/util/ZoomImageThread;

.field m_handleVideoCodec:[I

.field manualBtn:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00c5
        }
    .end annotation
.end field

.field manualView:Lcom/hfufo/widget/ManualView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00dc
        }
    .end annotation
.end field

.field private menuShow:Z

.field modeText:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00d9
        }
    .end annotation
.end field

.field mode_layout:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00d8
        }
    .end annotation
.end field

.field motionView:Lcom/hfufo/widget/MotionView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00dd
        }
    .end annotation
.end field

.field private move2CenterDistance:D

.field private msgContent:Ljava/lang/String;

.field private musicProgress:Landroid/widget/SeekBar;

.field private news:Ljava/lang/String;

.field private nohead:Z

.field oldVideoUrl:Ljava/lang/String;

.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field onRectTouch:Landroid/view/View$OnTouchListener;

.field onRudderLTouch:Landroid/view/View$OnTouchListener;

.field onRudderRTouch:Landroid/view/View$OnTouchListener;

.field onText:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00d7
        }
    .end annotation
.end field

.field onhead:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00c2
        }
    .end annotation
.end field

.field private online:Z

.field open_palmVideo:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00cb
        }
    .end annotation
.end field

.field private opencvStitcher:Lcom/opencvstitcher/OpencvStitcher;

.field private operationgMode:I

.field out_heigh:[I

.field out_width:[I

.field out_yuv420:[B

.field out_yuv420Size:[I

.field private pScreenWidth:F

.field pU:[B

.field pV:[B

.field pY:[B

.field private palmRect:Landroid/graphics/Rect;

.field private palmVideo:Z

.field palm_follow:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00c7
        }
    .end annotation
.end field

.field panoN:I

.field private panoSpeed:I

.field pathview:Lcom/hfufo/widget/PathView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00ea
        }
    .end annotation
.end field

.field private photoInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private photoTask:Lcom/task/MediaTask;

.field private pictureHeight:I

.field private pictureWidth:I

.field private pivotX:F

.field private pivotY:F

.field private pivotoldX:F

.field private pivotoldY:F

.field private final plam_model:I

.field private playbackMode:I

.field private point_num:I

.field private protocol1:Lcom/fh/util/Protocol1;

.field private protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

.field ptz_layout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f009a
        }
    .end annotation
.end field

.field ptz_picture:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f009e
        }
    .end annotation
.end field

.field private rcHandler:Landroid/os/Handler;

.field private rcRunnable:Ljava/lang/Runnable;

.field private realtimePlayerListener:Lcom/jieli/lib/dv/control/player/OnRealTimeListener;

.field recFlagThread:Ljava/lang/Runnable;

.field private recTimeThread:Ljava/lang/Runnable;

.field recordDir:Ljava/lang/String;

.field private recordSrcData:Z

.field private recordStatus:I

.field record_flag:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00b3
        }
    .end annotation
.end field

.field private resetRotaton:Z

.field private retryNum:I

.field return_control:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00be
        }
    .end annotation
.end field

.field private revstate:I

.field rightClassicLeft:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00a8
        }
    .end annotation
.end field

.field rightClassicRight:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00ab
        }
    .end annotation
.end field

.field rightDown:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00aa
        }
    .end annotation
.end field

.field rightLDown:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00ad
        }
    .end annotation
.end field

.field rightLLeft:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00ae
        }
    .end annotation
.end field

.field rightLRight:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00af
        }
    .end annotation
.end field

.field rightLUp:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00ac
        }
    .end annotation
.end field

.field rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

.field rightUp:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00a9
        }
    .end annotation
.end field

.field right_layout_hide:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f0093
        }
    .end annotation
.end field

.field private rightmode:Z

.field rl_manual:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00db
        }
    .end annotation
.end field

.field rl_rec_time:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00b1
        }
    .end annotation
.end field

.field rocker_hide:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f0094
        }
    .end annotation
.end field

.field rollView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00b7
        }
    .end annotation
.end field

.field private rotationSense:Z

.field private rotationSpeed:D

.field rtsSuccess:Z

.field private rudderLessX:F

.field private rudderLessY:F

.field private runnable_save_video:Ljava/lang/Runnable;

.field private runnable_scale_video:Ljava/lang/Runnable;

.field private savePathOfMedia:Ljava/lang/String;

.field private savePathOfmpeg:Ljava/lang/String;

.field private scaleSelf:F

.field private scaleSense:Z

.field scaleWidth:F

.field scaleWidthOld:F

.field scale_num:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f008c
        }
    .end annotation
.end field

.field private screenMianji:I

.field private secondCount:I

.field private selectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hfufo/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field selectedMusic:Z

.field private sendHandler:Landroid/os/Handler;

.field private sendResponse:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

.field private sendThread:Landroid/os/HandlerThread;

.field song:Lcom/videooperate/bean/Song;

.field private speed:I

.field private splitNumber:I

.field private spotNumber:I

.field private stopParam:F

.field stt:J

.field switchCamera:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00ca
        }
    .end annotation
.end field

.field switchCamera2:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00b6
        }
    .end annotation
.end field

.field takePho:Z

.field takephoto:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00d4
        }
    .end annotation
.end field

.field takevideo:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00d5
        }
    .end annotation
.end field

.field temp_yuv420:[B

.field private thumRunnable:Ljava/lang/Runnable;

.field private timeR:I

.field tip_image1:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00f2
        }
    .end annotation
.end field

.field tip_image2:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00f5
        }
    .end annotation
.end field

.field tip_text1:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00f3
        }
    .end annotation
.end field

.field tip_text2:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00f6
        }
    .end annotation
.end field

.field tip_text3:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00f4
        }
    .end annotation
.end field

.field private to1080P:Z

.field topRudder:Lcom/hfufo/widget/LeftRockerBgView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f0099
        }
    .end annotation
.end field

.field totalTimeD:I

.field total_time:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f008e
        }
    .end annotation
.end field

.field tranRudder:Lcom/hfufo/widget/TranRockerBgView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f009f
        }
    .end annotation
.end field

.field trim1:Lcom/hfufo/widget/MicroTrimView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00e6
        }
    .end annotation
.end field

.field private trim1CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

.field trim2:Lcom/hfufo/widget/MicroTrimView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00e7
        }
    .end annotation
.end field

.field private trim2CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

.field trim3:Lcom/hfufo/widget/MicroTrimView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00e9
        }
    .end annotation
.end field

.field private trim3CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

.field trim4:Lcom/hfufo/widget/MicroTrimView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00e8
        }
    .end annotation
.end field

.field private trim4CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

.field private tvFPS:Landroid/widget/TextView;

.field tvMusicName:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00b2
        }
    .end annotation
.end field

.field tvRecTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00b4
        }
    .end annotation
.end field

.field tv_time:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00da
        }
    .end annotation
.end field

.field private twoPointDistance:D

.field type_video:I

.field private udpMode:Z

.field vPort:[I

.field private videoAngle:F

.field private videoHeight:I

.field private videoScale:F

.field private videoWidth:I

.field video_layout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f0088
        }
    .end annotation
.end field

.field viewTouch:Landroid/view/View$OnTouchListener;

.field vr:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00c3
        }
    .end annotation
.end field

.field w_h:I

.field final waitTime:J

.field private waitingDialog:Lcom/hfufo/dialog/WaitingDialog;

.field waitting:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0f00eb
        }
    .end annotation
.end field

.field private workHandler:Landroid/os/Handler;

.field private xLeftEvent:F

.field private xRightEvent:F

.field private xuanRunnable:Ljava/lang/Runnable;

.field private yLeftEvent:F

.field private yRightEvent:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 174
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->to1080P:Z

    .line 175
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->canRecord:Z

    .line 190
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$1;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$1;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendResponse:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->savePathOfmpeg:Ljava/lang/String;

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->savePathOfMedia:Ljava/lang/String;

    .line 204
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v0, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureWidth:I

    .line 205
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v0, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureHeight:I

    .line 207
    const/16 v0, 0x500

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    .line 208
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoHeight:I

    .line 210
    const/16 v0, 0x500

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataWidth:I

    .line 211
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataHeight:I

    .line 232
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->aWait:Z

    .line 252
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->MAX_VID_DURATION:I

    .line 253
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedMusic:Z

    .line 256
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isKKDete:Z

    .line 268
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCount:I

    .line 272
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->secondCount:I

    .line 277
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->face_model:I

    .line 278
    iput v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->body_model:I

    .line 280
    const/4 v0, 0x4

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->plam_model:I

    .line 409
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hasFix:Z

    .line 420
    new-instance v0, Lcom/fh/util/Protocol1;

    invoke-direct {v0}, Lcom/fh/util/Protocol1;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    .line 421
    new-instance v0, Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-direct {v0}, Lcom/fh/util/ProtocolOfQuanzhi;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    .line 422
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isManual:Z

    .line 423
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followFlag:Z

    .line 510
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->languageMode:I

    .line 513
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isIJKPlayerOpen:Z

    .line 519
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCameraType:I

    .line 525
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    .line 526
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recordSrcData:Z

    .line 527
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isCapturePrepared:Z

    .line 534
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i_wifi_code:I

    .line 537
    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    .line 538
    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidthOld:F

    .line 539
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->filterNumber:I

    .line 540
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->splitNumber:I

    .line 541
    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    .line 542
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoAngle:F

    .line 543
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->spotNumber:I

    .line 557
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitTime:J

    .line 558
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->awaitTime:J

    .line 560
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$2;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rcRunnable:Ljava/lang/Runnable;

    .line 647
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$3;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    .line 668
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$4;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$4;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->thumRunnable:Ljava/lang/Runnable;

    .line 682
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rotationSense:Z

    .line 683
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleSense:Z

    .line 687
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$5;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    .line 734
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRegistered:Z

    .line 741
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$6;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->handlerCallback:Landroid/os/Handler$Callback;

    .line 907
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clickButton:Z

    .line 908
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    .line 909
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionFace:Z

    .line 910
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bFirstFrame_video:Z

    .line 911
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRefreshData:Z

    .line 915
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->m_handleVideoCodec:[I

    .line 916
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420Size:[I

    .line 917
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_width:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_heigh:[I

    .line 918
    const v0, 0x151800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420:[B

    .line 919
    const v0, 0x151800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->temp_yuv420:[B

    .line 1064
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$7;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$7;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onRectTouch:Landroid/view/View$OnTouchListener;

    .line 1071
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$8;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$8;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onRudderLTouch:Landroid/view/View$OnTouchListener;

    .line 1078
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$9;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$9;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onRudderRTouch:Landroid/view/View$OnTouchListener;

    .line 1086
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$10;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$10;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->viewTouch:Landroid/view/View$OnTouchListener;

    .line 1250
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downX:F

    .line 1251
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downY:F

    .line 1259
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->resetRotaton:Z

    .line 1501
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isCanTouch:Z

    .line 1502
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->point_num:I

    .line 1524
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotX:F

    .line 1525
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotY:F

    .line 1526
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldX:F

    .line 1527
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldY:F

    .line 1575
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->color:Ljava/lang/String;

    .line 1576
    const-string v0, "R"

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->colorG:Ljava/lang/String;

    .line 1580
    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->faceBodyThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1582
    const-string v0, ""

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->lastData:Ljava/lang/String;

    .line 1717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mGestureInfos:Ljava/util/List;

    .line 1718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRects:Ljava/util/List;

    .line 1719
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    .line 1720
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmRect:Landroid/graphics/Rect;

    .line 1724
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->candete:Z

    .line 1726
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mH264List:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1727
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    .line 1815
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isTaking:Z

    .line 2047
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stopParam:F

    .line 2061
    const v0, 0x16da00

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->screenMianji:I

    .line 2062
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstChoose:Z

    .line 2063
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstFollow:Z

    .line 2064
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstCenterW:I

    .line 2426
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->first_init:Z

    .line 2450
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$16;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 2945
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$17;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3115
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isAdjustResolution:Z

    .line 3120
    const/16 v0, 0xf1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->MSG_NET_RECONNECT:I

    .line 3121
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rtsSuccess:Z

    .line 3123
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$18;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    .line 3569
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->chooseFix:Z

    .line 3571
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i:I

    .line 3572
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->j:I

    .line 3573
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSentOpenRtsCmd:Z

    .line 3683
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->vPort:[I

    .line 3684
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->aPort:[I

    .line 3685
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->b_createSeocket:Z

    .line 3841
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 3845
    const/4 v0, -0x1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->type_video:I

    .line 3846
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->Recording:Z

    .line 3848
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isNeedZoomImg:Z

    .line 3851
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$23;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runnable_save_video:Ljava/lang/Runnable;

    .line 3930
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 3931
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$24;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runnable_scale_video:Ljava/lang/Runnable;

    .line 3999
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$25;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$25;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mIActionListener:Lcom/jieli/lib/stream/udp/IActionListener;

    .line 4037
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mFirst:Z

    .line 4038
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->lastFrame:J

    .line 4039
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->timeR:I

    .line 4040
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->udpMode:Z

    .line 4041
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stt:J

    .line 4044
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$26;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->realtimePlayerListener:Lcom/jieli/lib/dv/control/player/OnRealTimeListener;

    .line 4731
    const v0, 0xe1000

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->w_h:I

    .line 4732
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->w_h:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pY:[B

    .line 4733
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->w_h:I

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pU:[B

    .line 4734
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->w_h:I

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pV:[B

    .line 4970
    const/16 v0, 0x28

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->frameRateTime:I

    .line 5095
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downTIme:I

    .line 5096
    const/16 v0, 0xa

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->totalTimeD:I

    .line 5097
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadSpeed:I

    .line 5110
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$35;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadRunnable:Ljava/lang/Runnable;

    .line 5327
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$36;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->iMediaController:Lcom/hfufo/widget/media/IMediaController;

    .line 5532
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rudderLessX:F

    .line 5533
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rudderLessY:F

    .line 5666
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$43;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$43;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recTimeThread:Ljava/lang/Runnable;

    .line 5680
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$44;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$44;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recFlagThread:Ljava/lang/Runnable;

    .line 5726
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isOnPause:Z

    .line 5952
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    .line 6078
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followFaceMode:Z

    .line 6122
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    .line 6170
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    .line 6349
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVga:Z

    .line 6397
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRev:Z

    .line 6454
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->menuShow:Z

    .line 6542
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->canLand:Z

    .line 6563
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    .line 6708
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFrontCamera:Z

    .line 6726
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    .line 6756
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    .line 6979
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecording:Z

    .line 7118
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->speed:I

    .line 7119
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSpeed:I

    .line 7155
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$49;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$49;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim1CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .line 7179
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$50;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$50;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim2CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .line 7205
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$51;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$51;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim3CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .line 7221
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$52;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$52;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim4CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    .line 7241
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isStarted:Z

    .line 7242
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->connectedS:Z

    .line 7277
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->lost_net:Z

    .line 7410
    const-string v0, "service_command"

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->KEY_SERVICE_CMD:Ljava/lang/String;

    .line 7558
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->booleanConnect:Z

    .line 7559
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->longPress:Z

    .line 7561
    const/16 v0, -0x40

    iput-byte v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->channel1:B

    .line 7562
    const/16 v0, 0x40

    iput-byte v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->channel2:B

    .line 7563
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicalSend:Z

    .line 8317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    .line 8486
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPanorama:Z

    .line 8487
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPanoramaA:Z

    .line 8489
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoN:I

    .line 8490
    const/16 v0, 0xff

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoSpeed:I

    .line 8492
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRotate:Z

    .line 8493
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isHided:Z

    .line 8494
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    .line 8495
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isShowPtz:Z

    .line 8814
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstRotate:Z

    .line 8849
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takePho:Z

    .line 8875
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$72;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->iGpsListener:Lcom/task/IGpsListener;

    return-void

    .line 3683
    :array_0
    .array-data 4
        0x1a0a
        0x1a0c
    .end array-data

    .line 3684
    :array_1
    .array-data 4
        0x4d2
        0x4d4
    .end array-data
.end method

.method private LongTouchSendCmd(Landroid/app/Activity;ILandroid/view/MotionEvent;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "c"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v7, 0x7f020083

    const v6, 0x7f02007c

    const/4 v5, 0x1

    const/16 v3, -0x80

    const/16 v4, 0x80

    .line 7576
    const/4 v1, 0x0

    .line 7577
    .local v1, "longPressSendCmdThread":Ljava/lang/Thread;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 7688
    :goto_0
    return-void

    .line 7579
    :pswitch_0
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->longPress:Z

    .line 7580
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicalSend:Z

    .line 7582
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;

    .end local v1    # "longPressSendCmdThread":Ljava/lang/Thread;
    invoke-direct {v1, p0, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$66;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V

    .line 7644
    .restart local v1    # "longPressSendCmdThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 7649
    :pswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->longPress:Z

    .line 7651
    if-eqz v1, :cond_0

    .line 7652
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 7654
    :cond_0
    move v0, p2

    .line 7655
    .local v0, "cmd":I
    if-eqz v0, :cond_1

    if-ne v0, v5, :cond_2

    .line 7656
    :cond_1
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v2, v3}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 7666
    :goto_1
    iget-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightmode:Z

    if-eqz v2, :cond_3

    .line 7667
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/hfufo/widget/ManualView;->setLeftRudderPoint(Landroid/graphics/Point;)V

    .line 7671
    :goto_2
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftUp:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7672
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftDown:Landroid/widget/ImageView;

    const v3, 0x7f0200a6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7673
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7674
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRRight:Landroid/widget/ImageView;

    const v3, 0x7f020090

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7675
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRUp:Landroid/widget/ImageView;

    const v3, 0x7f020085

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7676
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRDown:Landroid/widget/ImageView;

    const v3, 0x7f0200a5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7678
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightUp:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7679
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightDown:Landroid/widget/ImageView;

    const v3, 0x7f0200a6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7680
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7681
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLRight:Landroid/widget/ImageView;

    const v3, 0x7f020090

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7682
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLUp:Landroid/widget/ImageView;

    const v3, 0x7f020085

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7683
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLDown:Landroid/widget/ImageView;

    const v3, 0x7f0200a5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 7660
    :cond_2
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v2, v3}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 7661
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v2, v3}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto :goto_1

    .line 7669
    :cond_3
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/hfufo/widget/ManualView;->setRightRudderPoint(Landroid/graphics/Point;)V

    goto :goto_2

    .line 7577
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/Protocol1;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/fh/util/ProtocolOfQuanzhi;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->degreeSelf:I

    return v0
.end method

.method static synthetic access$10000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    return v0
.end method

.method static synthetic access$10002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    return p1
.end method

.method static synthetic access$1002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->degreeSelf:I

    return p1
.end method

.method static synthetic access$10100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mBufList:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->Recording1:Z

    return v0
.end method

.method static synthetic access$10202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->Recording1:Z

    return p1
.end method

.method static synthetic access$10300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mPaint2:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$10302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Landroid/graphics/Paint;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mPaint2:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$10400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$10402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p1
.end method

.method static synthetic access$10500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    return v0
.end method

.method static synthetic access$10600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoHeight:I

    return v0
.end method

.method static synthetic access$10700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcEncoder;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoSpeed:I

    return v0
.end method

.method static synthetic access$10802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoSpeed:I

    return p1
.end method

.method static synthetic access$10900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoCapture;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rotationSpeed:D

    return-wide v0
.end method

.method static synthetic access$11000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRotate:Z

    return v0
.end method

.method static synthetic access$11100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mFirst:Z

    return v0
.end method

.method static synthetic access$11102(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mFirst:Z

    return p1
.end method

.method static synthetic access$11200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bFirstFrame_video:Z

    return v0
.end method

.method static synthetic access$11302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bFirstFrame_video:Z

    return p1
.end method

.method static synthetic access$11400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/AvcDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recordSrcData:Z

    return v0
.end method

.method static synthetic access$11600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isNeedZoomImg:Z

    return v0
.end method

.method static synthetic access$11700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lcom/fh/beans/StreamInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Lcom/fh/beans/StreamInfo;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->addZoomData(Lcom/fh/beans/StreamInfo;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # [B

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->savePictureJPEG([B)V

    return-void
.end method

.method static synthetic access$11900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isOnPause:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleSelf:F

    return v0
.end method

.method static synthetic access$12000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->thumRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleSelf:F

    return p1
.end method

.method static synthetic access$12100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->saveMergePicture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$12200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/opencvstitcher/OpencvStitcher;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->opencvStitcher:Lcom/opencvstitcher/OpencvStitcher;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPanorama:Z

    return v0
.end method

.method static synthetic access$12302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPanorama:Z

    return p1
.end method

.method static synthetic access$12400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/MyProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->download_progress:Lcom/hfufo/widget/MyProgressBar;

    return-object v0
.end method

.method static synthetic access$12502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecording:Z

    return p1
.end method

.method static synthetic access$12600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startZoomImgThread(II)V

    return-void
.end method

.method static synthetic access$12700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showVideoUI()V

    return-void
.end method

.method static synthetic access$12800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->to1080P:Z

    return v0
.end method

.method static synthetic access$12900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoChangeResolutionRatio(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleSense:Z

    return v0
.end method

.method static synthetic access$13000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pushData(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleSense:Z

    return p1
.end method

.method static synthetic access$13100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideVideoUI()V

    return-void
.end method

.method static synthetic access$13200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->frameTime:J

    return-wide v0
.end method

.method static synthetic access$13202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 171
    iput-wide p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->frameTime:J

    return-wide p1
.end method

.method static synthetic access$13300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->frameRateTime:I

    return v0
.end method

.method static synthetic access$13400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->frameTimeT:J

    return-wide v0
.end method

.method static synthetic access$13402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 171
    iput-wide p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->frameTimeT:J

    return-wide p1
.end method

.method static synthetic access$13500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightmode:Z

    return v0
.end method

.method static synthetic access$13600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rudderLessX:F

    return v0
.end method

.method static synthetic access$13602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rudderLessX:F

    return p1
.end method

.method static synthetic access$13700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rudderLessY:F

    return v0
.end method

.method static synthetic access$13702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rudderLessY:F

    return p1
.end method

.method static synthetic access$13800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setSelfPivot(FF)V

    return-void
.end method

.method static synthetic access$13900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followFlag:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setScaleOfIjk(F)V

    return-void
.end method

.method static synthetic access$14000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->grayFlag:Z

    return v0
.end method

.method static synthetic access$14100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSpeed:I

    return v0
.end method

.method static synthetic access$14208(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->secondCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->secondCount:I

    return v0
.end method

.method static synthetic access$14300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recTimeThread:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$14400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hRecTime:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFlagShow:Z

    return v0
.end method

.method static synthetic access$14502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFlagShow:Z

    return p1
.end method

.method static synthetic access$14600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hRecFlag:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isShowPtz:Z

    return v0
.end method

.method static synthetic access$14800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showPtz()V

    return-void
.end method

.method static synthetic access$14900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideFlyMode()V

    return-void
.end method

.method static synthetic access$1500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoAngle:F

    return v0
.end method

.method static synthetic access$15000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoAngle:F

    return p1
.end method

.method static synthetic access$15100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideMenu()V

    return-void
.end method

.method static synthetic access$15202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->menuShow:Z

    return p1
.end method

.method static synthetic access$15302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followFaceMode:Z

    return p1
.end method

.method static synthetic access$15400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startDecode()V

    return-void
.end method

.method static synthetic access$15500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startDetectionFace()V

    return-void
.end method

.method static synthetic access$15600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->resetRS()V

    return-void
.end method

.method static synthetic access$15700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->issave:Z

    return v0
.end method

.method static synthetic access$15800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$15900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->visibleView(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$16000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/app/Activity;ILandroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    invoke-direct {p0, p1, p2, p3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->LongTouchSendCmd(Landroid/app/Activity;ILandroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$16100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicalSend:Z

    return v0
.end method

.method static synthetic access$16200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->longPress:Z

    return v0
.end method

.method static synthetic access$16300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)B
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-byte v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->channel2:B

    return v0
.end method

.method static synthetic access$16400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)B
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-byte v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->channel1:B

    return v0
.end method

.method static synthetic access$16500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setZhongli()V

    return-void
.end method

.method static synthetic access$16600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->musicProgress:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$16700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->filterNumber:I

    return v0
.end method

.method static synthetic access$16702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->filterNumber:I

    return p1
.end method

.method static synthetic access$16802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->splitNumber:I

    return p1
.end method

.method static synthetic access$1700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isProjection:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isProjection:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recordStatus:I

    return v0
.end method

.method static synthetic access$1902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recordStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/UDPClientGPS;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clientGPS:Lcom/task/UDPClientGPS;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initComm()V

    return-void
.end method

.method static synthetic access$2200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->init(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->openRTS(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->updateModeUI(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isHold:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/task/VideoRecord;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lcom/task/VideoRecord;)Lcom/task/VideoRecord;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Lcom/task/VideoRecord;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rectTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rudderLTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rudderRTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/connect/response/SendResponse;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendResponse:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->viewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionFace:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRefreshData:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRefreshData:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lorg/opencv/core/Mat;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mMat:Lorg/opencv/core/Mat;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Lorg/opencv/core/Mat;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mMat:Lorg/opencv/core/Mat;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lorg/opencv/core/Mat;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mMatGray:Lorg/opencv/core/Mat;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Lorg/opencv/core/Mat;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mMatGray:Lorg/opencv/core/Mat;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataWidth:I

    return v0
.end method

.method static synthetic access$3602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataWidth:I

    return p1
.end method

.method static synthetic access$3700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataHeight:I

    return v0
.end method

.method static synthetic access$3702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataHeight:I

    return p1
.end method

.method static synthetic access$3800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWidthRatio:F

    return v0
.end method

.method static synthetic access$3902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWidthRatio:F

    return p1
.end method

.method static synthetic access$400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startGpsUdp()V

    return-void
.end method

.method static synthetic access$4000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHeightRatio:F

    return v0
.end method

.method static synthetic access$4002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHeightRatio:F

    return p1
.end method

.method static synthetic access$4100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->color:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->color:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->colorG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->colorG:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendFollowData(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/hfufo/widget/RectView;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mH264List:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # [B

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->h264ToYUV([B)V

    return-void
.end method

.method static synthetic access$4900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    return p1
.end method

.method static synthetic access$500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rcRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isTaking:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isTaking:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mGestureInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mGesture:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->candete:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->candete:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isAdjustResolution:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isAdjustResolution:Z

    return p1
.end method

.method static synthetic access$5802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hasFix:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->syncRearCamera()V

    return-void
.end method

.method static synthetic access$600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->closeRTS(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clickButton:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clickButton:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->revstate:I

    return v0
.end method

.method static synthetic access$6202(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->revstate:I

    return p1
.end method

.method static synthetic access$6300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSentOpenRtsCmd:Z

    return v0
.end method

.method static synthetic access$6302(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSentOpenRtsCmd:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Lcom/jieli/lib/dv/control/player/RealtimeStream;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->udpMode:Z

    return v0
.end method

.method static synthetic access$6502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->udpMode:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->createStream(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initPlayer1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initPlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->checkCameraType()V

    return-void
.end method

.method static synthetic access$700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSwitchCamera:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSwitchCamera:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lcom/hfufo/bean/FileInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->download(Lcom/hfufo/bean/FileInfo;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showDownload(I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCameraType:I

    return v0
.end method

.method static synthetic access$7400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->canRecord:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->canRecord:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i_wifi_code:I

    return v0
.end method

.method static synthetic access$7502(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i_wifi_code:I

    return p1
.end method

.method static synthetic access$7602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->connectedS:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isStarted:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isStarted:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->timeR:I

    return v0
.end method

.method static synthetic access$7802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->timeR:I

    return p1
.end method

.method static synthetic access$7808(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->timeR:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->timeR:I

    return v0
.end method

.method static synthetic access$7900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    return v0
.end method

.method static synthetic access$800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->releasePlayer()V

    return-void
.end method

.method static synthetic access$802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$8108(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->spotNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->spotNumber:I

    return v0
.end method

.method static synthetic access$8110(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->spotNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->spotNumber:I

    return v0
.end method

.method static synthetic access$8200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFrontCamera:Z

    return v0
.end method

.method static synthetic access$8300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureWidth:I

    return v0
.end method

.method static synthetic access$8400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureHeight:I

    return v0
.end method

.method static synthetic access$8500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldX:F

    return v0
.end method

.method static synthetic access$8600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldY:F

    return v0
.end method

.method static synthetic access$8700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    return v0
.end method

.method static synthetic access$8800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->savePathOfmpeg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->savePathOfmpeg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->savePathOfMedia:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8902(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->savePathOfMedia:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rotationSense:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadSpeed:I

    return v0
.end method

.method static synthetic access$9002(Lcom/hfufo/rxdrone/HDManualCtrlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadSpeed:I

    return p1
.end method

.method static synthetic access$9100(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    return v0
.end method

.method static synthetic access$9102(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stopLocalRecording()V

    return-void
.end method

.method static synthetic access$9300(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startLocalRecording()V

    return-void
.end method

.method static synthetic access$9400(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isCapturePrepared:Z

    return v0
.end method

.method static synthetic access$9402(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isCapturePrepared:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initVideoC()V

    return-void
.end method

.method static synthetic access$9600(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPanoramaA:Z

    return v0
.end method

.method static synthetic access$9602(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPanoramaA:Z

    return p1
.end method

.method static synthetic access$9700(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    return v0
.end method

.method static synthetic access$9800(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->aWait:Z

    return v0
.end method

.method static synthetic access$9802(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->aWait:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Lcom/videooperate/bean/Song;)V
    .locals 0
    .param p0, "x0"    # Lcom/hfufo/rxdrone/HDManualCtrlActivity;
    .param p1, "x1"    # Lcom/videooperate/bean/Song;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mergeLocationVideo(Lcom/videooperate/bean/Song;)V

    return-void
.end method

.method private addZoomData(Lcom/fh/beans/StreamInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/fh/beans/StreamInfo;

    .prologue
    .line 3977
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fh/beans/StreamInfo;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    if-eqz v0, :cond_0

    .line 3978
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    invoke-virtual {v0, p1}, Lcom/fh/util/ZoomImageThread;->addData(Lcom/fh/beans/StreamInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3982
    :cond_0
    return-void
.end method

.method private cancelLoading()V
    .locals 7

    .prologue
    .line 8470
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 8471
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    .line 8472
    .local v1, "info":Lcom/hfufo/bean/FileInfo;
    sget-object v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8473
    sget-object v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v3}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v4}, Lcom/hfufo/rxdrone/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->checkCameraDir(Lcom/hfufo/bean/FileInfo;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Download"

    invoke-static {v3, v4, v5, v6}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadDir:Ljava/lang/String;

    .line 8475
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/fh/hdutil/AppUtils;->getDownloadFilename(Lcom/hfufo/bean/FileInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8476
    .local v2, "savePath":Ljava/lang/String;
    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8477
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8478
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8483
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "info":Lcom/hfufo/bean/FileInfo;
    .end local v2    # "savePath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private cancelMusicFun()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 8779
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRotate:Z

    if-eqz v0, :cond_0

    .line 8780
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRotate:Z

    .line 8781
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v1, v1}, Lcom/hfufo/widget/IjkVideoView;->setSize(FF)V

    .line 8782
    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    .line 8783
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    .line 8784
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8785
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/IjkVideoView;->setRotation(I)V

    .line 8786
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoAngle:F

    .line 8787
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    const v1, 0x7f03003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 8789
    :cond_0
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    .line 8790
    invoke-direct {p0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showOrHideSelectedMuisc(Z)V

    .line 8791
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->filterNumber:I

    .line 8792
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->splitNumber:I

    .line 8793
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->filterNumber:I

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setFilter(I)V

    .line 8795
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_filter:Landroid/widget/ImageView;

    const v1, 0x7f030014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 8796
    return-void
.end method

.method private cancelTimer()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 8283
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCountdown:Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;

    if-eqz v0, :cond_0

    .line 8284
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->musicProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 8285
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->total_time:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8286
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->current_time:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8287
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCountdown:Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->cancel()V

    .line 8288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCountdown:Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;

    .line 8290
    :cond_0
    return-void
.end method

.method private checkCameraType()V
    .locals 3

    .prologue
    .line 2798
    sget-object v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 2799
    .local v0, "cameraType":I
    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCameraType:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    .line 2800
    .local v1, "isSwitchCamera":Z
    :goto_0
    if-nez v1, :cond_1

    .line 2818
    :goto_1
    return-void

    .line 2799
    .end local v1    # "isSwitchCamera":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2803
    .restart local v1    # "isSwitchCamera":Z
    :cond_1
    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCameraType:I

    goto :goto_1
.end method

.method private closeFixRTS()V
    .locals 3

    .prologue
    .line 3510
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    if-eqz v1, :cond_0

    .line 3511
    const-string v1, "123456"

    const-string v2, "closeFixRTS: "

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3514
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x1b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3515
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3516
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3518
    invoke-static {}, Lcom/fh/hdutil/DeviceClientCmd;->getInstance()Lcom/fh/hdutil/DeviceClientCmd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fh/hdutil/DeviceClientCmd;->closeFixRTS()V

    .line 3521
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private closeGpsUdp()V
    .locals 2

    .prologue
    .line 8864
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clientGPS:Lcom/task/UDPClientGPS;

    if-eqz v0, :cond_0

    .line 8865
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clientGPS:Lcom/task/UDPClientGPS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/task/UDPClientGPS;->setUpdate(Z)V

    .line 8866
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clientGPS:Lcom/task/UDPClientGPS;

    invoke-virtual {v0}, Lcom/task/UDPClientGPS;->pause()V

    .line 8868
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clientGPS:Lcom/task/UDPClientGPS;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->iGpsListener:Lcom/task/IGpsListener;

    invoke-virtual {v0, v1}, Lcom/task/UDPClientGPS;->unregisterGpsUdpListener(Lcom/task/IGpsListener;)Z

    .line 8870
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clientGPS:Lcom/task/UDPClientGPS;

    invoke-virtual {v0}, Lcom/task/UDPClientGPS;->releaseListener()V

    .line 8871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clientGPS:Lcom/task/UDPClientGPS;

    .line 8873
    :cond_0
    return-void
.end method

.method private closeRTS(I)V
    .locals 6
    .param p1, "a"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 3741
    const-string v1, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeRTS-- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3742
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-nez v1, :cond_1

    .line 3743
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->returnCtrl()V

    .line 3746
    :cond_1
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i:I

    .line 3747
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rtsSuccess:Z

    .line 3748
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->deinitPlayer1()V

    .line 3749
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->deinitPlayer()V

    .line 3757
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSwitchCamera:Z

    if-eqz v1, :cond_8

    .line 3759
    :cond_2
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 3760
    .local v0, "cameraTyp":I
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    if-eqz v1, :cond_6

    .line 3762
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->closeFixRTS()V

    .line 3794
    .end local v0    # "cameraTyp":I
    :goto_0
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stopLocalRecording()V

    .line 3796
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    if-eqz v1, :cond_3

    .line 3797
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    invoke-virtual {v1}, Lcom/task/VideoCapture;->destroy()V

    .line 3798
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    .line 3801
    :cond_3
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    if-eqz v1, :cond_4

    .line 3803
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->close()Z

    .line 3808
    :cond_4
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mLoadingView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mLoadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_5

    .line 3809
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mLoadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3811
    :cond_5
    return-void

    .line 3766
    .restart local v0    # "cameraTyp":I
    :cond_6
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->udpMode:Z

    if-eqz v1, :cond_7

    .line 3767
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->closeFixRTS()V

    .line 3768
    const-string v1, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeRTS--cameraTyp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3769
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$21;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$21;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToCloseRTStream(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 3779
    :cond_7
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$22;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$22;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToCloseRTStream(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 3791
    .end local v0    # "cameraTyp":I
    :cond_8
    const-string v1, "HDManualCtrlActivityTAG"

    const-string v2, "It is not receiving"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createStream(II)Z
    .locals 5
    .param p1, "mode"    # I
    .param p2, "port"    # I

    .prologue
    const/4 v4, 0x1

    .line 3688
    const-string v1, "HDManualCtrlActivityTAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchCamera==========createStream mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3690
    if-eqz p1, :cond_0

    if-ne p1, v4, :cond_4

    .line 3691
    :cond_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    if-nez v1, :cond_1

    .line 3692
    new-instance v1, Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-direct {v1, p1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;-><init>(I)V

    iput-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    .line 3699
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->realtimePlayerListener:Lcom/jieli/lib/dv/control/player/OnRealTimeListener;

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    .line 3702
    :cond_1
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3705
    .local v0, "addr":Ljava/lang/String;
    const-string v1, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Net mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is receiving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v3}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->isReceiving()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3710
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->isReceiving()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3711
    if-nez p1, :cond_2

    .line 3712
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v1, p2, v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->create(ILjava/lang/String;)Z

    .line 3721
    :goto_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setSoTimeout(I)Z

    .line 3722
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v1, v4}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->useDeviceTimestamp(Z)V

    .line 3723
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->vPort:[I

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->aPort:[I

    invoke-virtual {v1, v2, v3}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->configure([I[I)Z

    .line 3731
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->b_createSeocket:Z

    .end local v0    # "addr":Ljava/lang/String;
    :goto_1
    return v1

    .line 3715
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v1, p2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->create(I)Z

    goto :goto_0

    .line 3719
    :cond_3
    const-string v1, "HDManualCtrlActivityTAG"

    const-string v2, "stream not receiving"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3726
    .end local v0    # "addr":Ljava/lang/String;
    :cond_4
    const-string v1, "HDManualCtrlActivityTAG"

    const-string v2, "Create stream failed!!!"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->b_createSeocket:Z

    goto :goto_1
.end method

.method private deinitPlayer()V
    .locals 2

    .prologue
    .line 5241
    const-string v0, "HDManualCtrlActivityTAG"

    const-string v1, "deinit player"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5242
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->isBackgroundPlayEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5243
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->stopPlayback()V

    .line 5245
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->release(Z)V

    .line 5249
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->stopBackgroundPlay()V

    .line 5259
    :goto_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isIJKPlayerOpen:Z

    if-eqz v0, :cond_0

    .line 5260
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileEnd()V

    .line 5261
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isIJKPlayerOpen:Z

    .line 5262
    return-void

    .line 5252
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->enterBackground()V

    goto :goto_0
.end method

.method private deinitPlayer1()V
    .locals 2

    .prologue
    .line 5265
    const-string v0, "HDManualCtrlActivityTAG"

    const-string v1, "deinit player"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5266
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->isBackgroundPlayEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5267
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->stopPlayback()V

    .line 5268
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->release(Z)V

    .line 5271
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->stopBackgroundPlay()V

    .line 5290
    :goto_0
    return-void

    .line 5274
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->enterBackground()V

    goto :goto_0
.end method

.method private download(Lcom/hfufo/bean/FileInfo;)V
    .locals 11
    .param p1, "info"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    .line 8327
    sget-object v7, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v7}, Lcom/hfufo/rxdrone/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadDir:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 8328
    sget-object v7, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v7}, Lcom/hfufo/rxdrone/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v8}, Lcom/hfufo/rxdrone/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Lcom/fh/hdutil/AppUtils;->checkCameraDir(Lcom/hfufo/bean/FileInfo;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Download"

    invoke-static {v7, v8, v9, v10}, Lcom/fh/hdutil/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadDir:Ljava/lang/String;

    .line 8330
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "te"

    invoke-static {v8}, Lcom/fh/hdutil/AppUtils;->getLocalPhotoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8332
    .local v6, "savePath":Ljava/lang/String;
    invoke-static {v6}, Lcom/fh/hdutil/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 8334
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8335
    const/16 v7, 0xa3

    iput v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->fileOp:I

    .line 8336
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->handlerTaskList(Z)V

    .line 8359
    :cond_1
    :goto_0
    return-void

    .line 8339
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8340
    .local v5, "pathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hfufo/bean/FileInfo;

    .line 8341
    .local v2, "fileInfo":Lcom/hfufo/bean/FileInfo;
    if-eqz v2, :cond_3

    .line 8342
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->getDownloadFilename(Lcom/hfufo/bean/FileInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8343
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Lcom/fh/hdutil/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 8344
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8348
    .end local v2    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    .end local v4    # "path":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 8349
    .local v1, "currentPos":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 8350
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/hfufo/rxdrone/GenericActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8351
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "key_fragment_tag"

    const/4 v8, 0x7

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8352
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8353
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "path_list"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8354
    const-string v7, "position"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8355
    const-string v7, "key_data"

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8356
    invoke-virtual {p0, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private endIJK()V
    .locals 1

    .prologue
    .line 5293
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isIJKPlayerOpen:Z

    if-eqz v0, :cond_0

    .line 5294
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileEnd()V

    .line 5296
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isIJKPlayerOpen:Z

    .line 5297
    return-void
.end method

.method private getEditor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7791
    const-string v2, "data"

    invoke-virtual {p0, v2, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7792
    .local v1, "share":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 7793
    const-string v2, "flight"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flightMode:Z

    .line 7794
    iget-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flightMode:Z

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    .line 7797
    const-string v2, "right"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightmode:Z

    .line 7798
    const-string v2, "operateMode"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    .line 7799
    const/4 v0, 0x0

    .line 7800
    .local v0, "a":I
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getCountry()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7801
    const/4 v0, 0x0

    .line 7805
    :goto_0
    const-string v2, "languageMode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->languageMode:I

    .line 7806
    const-string v2, "saveparam"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->issave:Z

    .line 7808
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    iget v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->languageMode:I

    invoke-virtual {v2, v3}, Lcom/hfufo/rxdrone/MainApplication;->shiftLanguage(I)V

    .line 7810
    return-void

    .line 7803
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getRtsFormat()I
    .locals 3

    .prologue
    .line 5220
    const/4 v0, 0x1

    .line 5221
    .local v0, "format":I
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v1

    .line 5222
    .local v1, "settingInfo":Lcom/hfufo/bean/DeviceDesc;
    if-eqz v1, :cond_0

    .line 5223
    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceDesc;->getVideoType()I

    move-result v0

    .line 5225
    :cond_0
    return v0
.end method

.method private getSampleRate(I)I
    .locals 3
    .param p1, "cameraType"    # I

    .prologue
    .line 4749
    const/16 v0, 0x1f40

    .line 4750
    .local v0, "rate":I
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    .line 4751
    .local v1, "settingInfo":Lcom/hfufo/bean/DeviceSettingInfo;
    if-eqz v1, :cond_0

    .line 4752
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 4753
    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getRearSampleRate()I

    move-result v0

    .line 4758
    :cond_0
    :goto_0
    return v0

    .line 4755
    :cond_1
    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getFrontSampleRate()I

    move-result v0

    goto :goto_0
.end method

.method private getVideoRate(I)I
    .locals 3
    .param p1, "cameraType"    # I

    .prologue
    .line 4762
    const/16 v0, 0x1e

    .line 4763
    .local v0, "rate":I
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    .line 4764
    .local v1, "settingInfo":Lcom/hfufo/bean/DeviceSettingInfo;
    if-eqz v1, :cond_0

    .line 4765
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 4766
    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getRearRate()I

    move-result v0

    .line 4772
    :cond_0
    :goto_0
    return v0

    .line 4768
    :cond_1
    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getFrontRate()I

    move-result v0

    goto :goto_0
.end method

.method private h264ToYUV([B)V
    .locals 14
    .param p1, "data"    # [B

    .prologue
    const v4, 0x151800

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 4681
    if-nez p1, :cond_1

    .line 4729
    :cond_0
    :goto_0
    return-void

    .line 4687
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bFirstFrame_video:Z

    if-eqz v0, :cond_2

    .line 4688
    invoke-static {p1}, Lcom/fh/hdutil/AppUtils;->checkFrameType([B)I

    move-result v0

    const v1, 0xa1a1

    if-ne v0, v1, :cond_0

    .line 4694
    :cond_2
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bFirstFrame_video:Z

    .line 4696
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420Size:[I

    aput v4, v0, v2

    .line 4698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 4707
    .local v12, "start":J
    new-array v3, v4, [B

    .line 4708
    .local v3, "yuv420":[B
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->m_handleVideoCodec:[I

    aget v0, v0, v2

    array-length v2, p1

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420Size:[I

    iget-object v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_width:[I

    iget-object v10, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_heigh:[I

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-static/range {v0 .. v10}, Lcom/utility/WF_VCodec;->WFVC_Decode(I[BI[B[I[B[I[B[I[I[I)I

    move-result v11

    .line 4712
    .local v11, "nRet":I
    const-class v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;

    monitor-enter v1

    .line 4715
    :try_start_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420:[B

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_width:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_heigh:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v3, v0, v2, v4}, Lcom/libyuv/util/YuvUtil;->yuvI420ToNV21([B[BII)V

    .line 4716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRefreshData:Z

    .line 4717
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4718
    const-string v0, "yuv\u8017\u65f6\u6d4b\u8bd5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h264ToYUV11: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4717
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handlerTaskList(Z)V
    .locals 7
    .param p1, "result"    # Z

    .prologue
    const/4 v6, 0x0

    .line 8362
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    invoke-virtual {v4}, Lcom/task/MediaTask;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8363
    :cond_0
    const-string v4, "handlerTask"

    const-string v5, "handlerTaskList-null: "

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8364
    new-instance v4, Lcom/task/MediaTask;

    const-string v5, "photo_task"

    invoke-direct {v4, p0, v5}, Lcom/task/MediaTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    .line 8365
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/task/MediaTask;->setUIHandler(Landroid/os/Handler;)V

    .line 8366
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    invoke-virtual {v4}, Lcom/task/MediaTask;->start()V

    .line 8368
    :cond_1
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 8369
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 8370
    .local v3, "taskSize":I
    if-eqz p1, :cond_5

    .line 8371
    if-lez v3, :cond_2

    .line 8372
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hfufo/bean/FileInfo;

    .line 8373
    .local v0, "fileInfo":Lcom/hfufo/bean/FileInfo;
    iget v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->fileOp:I

    const/16 v5, 0xa4

    if-ne v4, v5, :cond_2

    .line 8374
    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->updateDeleteUI(Lcom/hfufo/bean/FileInfo;)V

    .line 8377
    .end local v0    # "fileInfo":Lcom/hfufo/bean/FileInfo;
    :cond_2
    iput v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->retryNum:I

    .line 8387
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 8388
    if-lez v3, :cond_6

    .line 8389
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setSelectNum(I)V

    .line 8390
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hfufo/bean/FileInfo;

    .line 8391
    .local v1, "info":Lcom/hfufo/bean/FileInfo;
    if-eqz v1, :cond_4

    .line 8392
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    if-eqz v4, :cond_4

    .line 8393
    new-instance v2, Lcom/hfufo/bean/MediaTaskInfo;

    invoke-direct {v2}, Lcom/hfufo/bean/MediaTaskInfo;-><init>()V

    .line 8394
    .local v2, "taskInfo":Lcom/hfufo/bean/MediaTaskInfo;
    invoke-virtual {v2, v1}, Lcom/hfufo/bean/MediaTaskInfo;->setInfo(Lcom/hfufo/bean/FileInfo;)Lcom/hfufo/bean/MediaTaskInfo;

    .line 8395
    iget v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->fileOp:I

    invoke-virtual {v2, v4}, Lcom/hfufo/bean/MediaTaskInfo;->setOp(I)Lcom/hfufo/bean/MediaTaskInfo;

    .line 8396
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    invoke-virtual {v4, v2}, Lcom/task/MediaTask;->tryToStartTask(Lcom/hfufo/bean/MediaTaskInfo;)V

    .line 8404
    .end local v1    # "info":Lcom/hfufo/bean/FileInfo;
    .end local v2    # "taskInfo":Lcom/hfufo/bean/MediaTaskInfo;
    .end local v3    # "taskSize":I
    :cond_4
    :goto_1
    return-void

    .line 8379
    .restart local v3    # "taskSize":I
    :cond_5
    iget v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->retryNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->retryNum:I

    .line 8380
    iget v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->retryNum:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 8381
    iput v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->retryNum:I

    .line 8382
    if-lez v3, :cond_3

    .line 8383
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 8400
    :cond_6
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setSelectNum(I)V

    goto :goto_1
.end method

.method private hideFlyMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 8005
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicalSend:Z

    .line 8007
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    if-nez v0, :cond_0

    .line 8008
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_face:Landroid/widget/ImageView;

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8009
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8010
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8013
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    if-eqz v0, :cond_1

    .line 8014
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    .line 8015
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rokerOff()V

    .line 8022
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8023
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    .line 8026
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    if-nez v0, :cond_3

    .line 8027
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 8028
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightClassicLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8029
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightClassicRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8030
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8031
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8050
    :cond_2
    :goto_0
    return-void

    .line 8033
    :cond_3
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 8035
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 8039
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v4}, Lcom/hfufo/widget/ManualView;->setMotion(Z)V

    goto :goto_0

    .line 8042
    :cond_4
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 8043
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    goto :goto_0

    .line 8044
    :cond_5
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 8046
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 8047
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8048
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hide_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 7891
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->menuShow:Z

    .line 7892
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_panorama:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7893
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7894
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_fix:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7895
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_body:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7896
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7898
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->vr:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7899
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onhead:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7900
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_return:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7901
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7902
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hd_con_rev:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7904
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_drawline:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7906
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->choose_hd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7908
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7910
    return-void
.end method

.method private hideVideoUI()V
    .locals 2

    .prologue
    .line 5076
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takevideo:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5077
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_rec_time:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5078
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hRecFlag:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recFlagThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5079
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->secondCount:I

    .line 5084
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedMusic:Z

    if-nez v0, :cond_0

    .line 5085
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hRecTime:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recTimeThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5092
    :goto_0
    return-void

    .line 5087
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cancelTimer()V

    .line 5089
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/videooperate/utils/MusicControlUtils;->cmd_stop(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private init(Z)V
    .locals 2
    .param p1, "_online"    # Z

    .prologue
    .line 2429
    if-eqz p1, :cond_1

    .line 2435
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isOnPause:Z

    if-nez v0, :cond_1

    .line 2436
    const-string v0, "123456"

    const-string v1, "init-registerNotifyListener: "

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->first_init:Z

    if-eqz v0, :cond_0

    .line 2438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->first_init:Z

    .line 2442
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->requestFileMsgText()V

    .line 2443
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendResponse:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRequestRecordState(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 2448
    :cond_1
    return-void
.end method

.method private initClassicalBtn()V
    .locals 2

    .prologue
    .line 7436
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftUp:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$54;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$54;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7446
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftDown:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$55;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$55;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7456
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$56;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$56;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7466
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRRight:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$57;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$57;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7476
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRUp:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$58;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$58;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7486
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRDown:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$59;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$59;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7497
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightUp:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$60;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$60;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7507
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightDown:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$61;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$61;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7517
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$62;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$62;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7527
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLRight:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$63;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$63;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7537
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLUp:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$64;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$64;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7547
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightLDown:Landroid/widget/ImageView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$65;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$65;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7556
    return-void
.end method

.method private initComm()V
    .locals 3

    .prologue
    .line 3500
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3501
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendResponse:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSetTimeWatermark(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 3505
    :cond_0
    const/16 v0, 0x101

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->updateModeUI(I)V

    .line 3507
    return-void
.end method

.method private initDecoder()V
    .locals 3

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    if-nez v0, :cond_0

    .line 1731
    new-instance v0, Lcom/hfufo/widget/AvcDecoder;

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataWidth:I

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataHeight:I

    invoke-direct {v0, v1, v2}, Lcom/hfufo/widget/AvcDecoder;-><init>(II)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    .line 1733
    :cond_0
    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->useMediacodec:Z

    if-eqz v0, :cond_2

    .line 1744
    :cond_1
    :goto_0
    return-void

    .line 1736
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWf_netAPI:Lcom/wifi/WF_NetAPI;

    if-nez v0, :cond_1

    .line 1737
    new-instance v0, Lcom/wifi/WF_NetAPI;

    invoke-direct {v0}, Lcom/wifi/WF_NetAPI;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWf_netAPI:Lcom/wifi/WF_NetAPI;

    .line 1738
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWf_netAPI:Lcom/wifi/WF_NetAPI;

    invoke-virtual {v0}, Lcom/wifi/WF_NetAPI;->WFNET_Init()I

    .line 1739
    invoke-static {}, Lcom/utility/WF_VCodec;->WFVC_Init()I

    .line 1740
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->m_handleVideoCodec:[I

    invoke-static {v0}, Lcom/utility/WF_VCodec;->WFVC_Create([I)I

    goto :goto_0
.end method

.method private initFile()V
    .locals 4

    .prologue
    .line 1048
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 1049
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

    iput-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recordDir:Ljava/lang/String;

    .line 1050
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recordDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1052
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1055
    :cond_0
    return-void
.end method

.method private initPlayer(Ljava/lang/String;)V
    .locals 4
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 5140
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5141
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5142
    .local v0, "uri":Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    if-eqz v1, :cond_1

    .line 5143
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/IjkVideoView;->setVisibility(I)V

    .line 5147
    :goto_0
    const-string v1, "123456"

    const-string v2, "mStreamView2: "

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5150
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isIJKPlayerOpen:Z

    if-nez v1, :cond_0

    .line 5151
    const/4 v1, 0x0

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 5152
    const-string v1, "libijkplayer.so"

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 5153
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isIJKPlayerOpen:Z

    .line 5157
    :cond_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1, v3}, Lcom/hfufo/widget/IjkVideoView;->setRealtime(Z)V

    .line 5158
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1, v0}, Lcom/hfufo/widget/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 5159
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->start()V

    .line 5164
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_1
    return-void

    .line 5145
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/IjkVideoView;->setVisibility(I)V

    goto :goto_0

    .line 5162
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v1, "HDManualCtrlActivityTAG"

    const-string v2, "init player fail"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initPlayer1(Ljava/lang/String;)V
    .locals 4
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 5168
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5170
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isIJKPlayerOpen:Z

    if-nez v1, :cond_0

    .line 5171
    const/4 v1, 0x0

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 5172
    const-string v1, "libijkplayer.so"

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 5173
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isIJKPlayerOpen:Z

    .line 5175
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5176
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/IjkVideoView;->setVisibility(I)V

    .line 5177
    const-string v1, "123456"

    const-string v2, "mStreamView1: "

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5180
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1, v3}, Lcom/hfufo/widget/IjkVideoView;->setRealtime(Z)V

    .line 5181
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1, v0}, Lcom/hfufo/widget/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 5182
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->start()V

    .line 5183
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->invalidate()V

    .line 5185
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 5186
    sget-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->isGuangJiao:Z

    if-eqz v1, :cond_3

    .line 5187
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v2}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0xf

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cBodyWidth:F

    .line 5188
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, -0x32

    int-to-float v1, v1

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cPalmWidth:F

    .line 5193
    :goto_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pScreenWidth:F

    .line 5194
    const-string v1, "HDManualCtrlActivityTAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cBodyWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cBodyWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v3}, Lcom/hfufo/widget/IjkVideoView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cPalmWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v3}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cPalmWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5195
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v2}, Lcom/hfufo/widget/IjkVideoView;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    div-int/lit8 v1, v1, 0x12

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->screenMianji:I

    .line 5198
    :cond_1
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    if-eqz v1, :cond_2

    .line 5199
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->filterNumber:I

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/IjkVideoView;->setFilter(I)V

    .line 5204
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    return-void

    .line 5190
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v2}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cBodyWidth:F

    .line 5191
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cPalmWidth:F

    goto/16 :goto_0

    .line 5202
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_4
    const-string v1, "HDManualCtrlActivityTAG"

    const-string v2, "init player fail"

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initRecord()V
    .locals 5

    .prologue
    .line 4973
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getVideoRate(I)I

    move-result v0

    .line 4974
    .local v0, "rate":I
    const/16 v1, 0x3e8

    div-int/2addr v1, v0

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->frameRateTime:I

    .line 4975
    const-string v1, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Record -rate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4976
    new-instance v1, Lcom/hfufo/widget/AvcEncoder;

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    iget v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoHeight:I

    const v4, 0x81b320

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/hfufo/widget/AvcEncoder;-><init>(IIII)V

    iput-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    .line 4977
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    new-instance v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;

    invoke-direct {v2, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$34;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/AvcEncoder;->setH264CallBack(Lcom/hfufo/widget/AvcEncoder$H264CallBack;)V

    .line 5048
    return-void
.end method

.method private initVideoC()V
    .locals 4

    .prologue
    .line 4324
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    if-nez v0, :cond_0

    .line 4325
    new-instance v0, Lcom/task/VideoCapture;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v2, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    sget-object v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v3, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    invoke-direct {v0, v1, v2, v3}, Lcom/task/VideoCapture;-><init>(Landroid/content/Context;FF)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    .line 4327
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    if-eqz v0, :cond_1

    .line 4329
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$27;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/task/VideoCapture;->setOnCaptureListener(Lcom/task/OnVideoCaptureListener;)V

    .line 4430
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 2292
    const v0, 0x7f0f0089

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/IjkVideoView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    .line 2293
    const v0, 0x7f0f008a

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/IjkVideoView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    .line 2294
    const v0, 0x7f0f0090

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/RectView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    .line 2295
    const v0, 0x7f0f0091

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hide_layout:Landroid/widget/LinearLayout;

    .line 2296
    const v0, 0x7f0f0095

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/RockerBgView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    .line 2297
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/RockerBgView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    .line 2298
    const v0, 0x7f0f00ee

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tvFPS:Landroid/widget/TextView;

    .line 2300
    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->musicProgress:Landroid/widget/SeekBar;

    .line 2301
    const v0, 0x7f0f00f0

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hfufo/widget/MyProgressBar;

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->download_progress:Lcom/hfufo/widget/MyProgressBar;

    .line 2302
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onRectTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2304
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->viewTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2306
    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->editText:Landroid/widget/EditText;

    .line 2307
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$15;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$15;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2332
    return-void
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 3837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isPlaying()Z
    .locals 1

    .prologue
    .line 3111
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->isReceiving()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static is_rx(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 7361
    invoke-static {p0}, Lcom/fh/hdutil/AppUtils;->isHD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/fh/hdutil/AppUtils;->is52(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ishd(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 7365
    invoke-static {p1}, Lcom/fh/hdutil/AppUtils;->isHD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 7367
    const-string v2, "wifi_720"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WIFI_720"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Wifi_camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7368
    :cond_0
    sget-object v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    .line 7384
    :cond_1
    :goto_0
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7385
    sput-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->c_wifi:Z

    .line 7386
    sget-object v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->c_WIFI:Z

    .line 7387
    const-string v2, "P"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7388
    sget-object v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->e_8data:Z

    .line 7402
    :cond_2
    :goto_1
    return v0

    .line 7371
    :cond_3
    const-string v2, "WIFI_1080"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "wifi_1080"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7372
    :cond_4
    sget-object v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    goto :goto_0

    .line 7375
    :cond_5
    const-string v2, "M8_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7379
    sget-object v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v1, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    goto :goto_0

    .line 7389
    :cond_6
    const-string v1, "p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7390
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->e_8data:Z

    goto :goto_1

    .line 7393
    :cond_7
    const-string v2, "WIFI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7394
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->c_wifi:Z

    .line 7395
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->c_WIFI:Z

    goto :goto_1

    .line 7397
    :cond_8
    sput-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->c_wifi:Z

    .line 7398
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->c_WIFI:Z

    goto :goto_1

    :cond_9
    move v0, v1

    .line 7402
    goto :goto_1
.end method

.method private loadIJK()V
    .locals 1

    .prologue
    .line 5207
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    if-eqz v0, :cond_1

    .line 5208
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 5209
    const-string v0, "libijkplayer.so"

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 5210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isIJKPlayerOpen:Z

    .line 5212
    :cond_1
    return-void
.end method

.method private mergeLocationVideo(Lcom/videooperate/bean/Song;)V
    .locals 5
    .param p1, "song"    # Lcom/videooperate/bean/Song;

    .prologue
    const/4 v4, 0x0

    .line 8126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recordDir:Ljava/lang/String;

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

    .line 8127
    .local v0, "outputVideoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitting:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8128
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->canRecord:Z

    .line 8129
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/videooperate/utils/VideoManager;->getInstance(Landroid/content/Context;Lcom/videooperate/utils/VideoManager$Callback;)Lcom/videooperate/utils/VideoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->oldVideoUrl:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0, v4}, Lcom/videooperate/utils/VideoManager;->mergeLocationVideo(Lcom/videooperate/bean/Song;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8130
    return-void
.end method

.method private openAlbum(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 6247
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/Util/FileUtil;->scanFile(Landroid/media/MediaScannerConnection;Ljava/lang/String;Z)V

    .line 6248
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/Util/FileUtil;->scanFile(Landroid/media/MediaScannerConnection;Ljava/lang/String;Z)V

    .line 6249
    invoke-static {p0, v3}, Lcom/videooperate/activity/AlbumListActivity;->start(Landroid/app/Activity;Z)V

    .line 6252
    return-void
.end method

.method private openFixRTS(IIIII)V
    .locals 5
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fps"    # I
    .param p5, "rate"    # I

    .prologue
    .line 3525
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3526
    .local v0, "message":Landroid/os/Message;
    const/16 v3, 0x1b

    iput v3, v0, Landroid/os/Message;->what:I

    .line 3527
    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 3528
    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3530
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 3531
    .local v1, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v3, "OPEN_FIX_RT_STREAM"

    invoke-virtual {v1, v3}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 3532
    const-string v3, "PUT"

    invoke-virtual {v1, v3}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 3533
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 3534
    .local v2, "var8":Landroid/support/v4/util/ArrayMap;
    const-string v3, "format"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3535
    const-string v3, "w"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3536
    const-string v3, "h"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3537
    const-string v3, "fps"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3538
    const-string v3, "rate"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3539
    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroid/support/v4/util/ArrayMap;)V

    .line 3544
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3546
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v3

    new-instance v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity$19;

    invoke-direct {v4, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$19;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v3, v1, v4}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 3567
    :cond_0
    return-void
.end method

.method private openRTS(I)V
    .locals 13
    .param p1, "type"    # I

    .prologue
    const/16 v12, 0x500

    const/4 v8, 0x0

    const/16 v7, 0x2d0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3577
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getConncetion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3680
    :goto_0
    return-void

    .line 3582
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3583
    const-string v0, "HDManualCtrlActivityTAG"

    const-string v2, "rts is playing, please stop it first."

    invoke-static {v0, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3586
    :cond_1
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceDesc()Lcom/hfufo/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceDesc;->getNetMode()I

    move-result v10

    .line 3587
    .local v10, "mode":I
    const-string v0, "HDManualCtrlActivityTAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    const-string v0, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openrts-type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3594
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v3

    .line 3595
    .local v3, "cameraTyp":I
    const-string v0, "HDManualCtrlActivityTAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open rts..........."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3596
    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getStreamResolutionLevel()I

    move-result v9

    .line 3597
    .local v9, "level":I
    const/4 v0, 0x2

    if-ne v9, v0, :cond_3

    .line 3598
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/16 v0, 0x442

    sput v0, Lcom/hfufo/rxdrone/MainApplication;->STREAM_SIZE:I

    .line 3605
    :goto_1
    invoke-static {v9}, Lcom/fh/hdutil/AppUtils;->getRtsResolution(I)[I

    move-result-object v11

    .line 3608
    .local v11, "resolution":[I
    if-nez v9, :cond_2

    .line 3610
    iput v12, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureWidth:I

    .line 3611
    iput v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureHeight:I

    .line 3612
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isNeedZoomImg:Z

    .line 3615
    :cond_2
    if-eq v3, v6, :cond_5

    .line 3616
    iput v12, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureWidth:I

    .line 3617
    iput v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureHeight:I

    .line 3628
    :goto_2
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isNeedZoomImg:Z

    .line 3636
    aget v0, v11, v5

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataWidth:I

    .line 3637
    aget v0, v11, v6

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataHeight:I

    .line 3638
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v0, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    div-float/2addr v0, v2

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWidthRatio:F

    .line 3639
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v0, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataHeight:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    div-float/2addr v0, v2

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHeightRatio:F

    .line 3645
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getRtsFormat()I

    move-result v1

    .line 3647
    .local v1, "mRTSType":I
    const-string v0, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openRTS-param: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v11, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v11, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getVideoRate(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->chooseFix:Z

    if-eqz v0, :cond_6

    .line 3650
    const-string v0, "123456"

    const-string v2, "openRTS-isFix:: "

    invoke-static {v0, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3651
    aget v2, v11, v5

    aget v3, v11, v6

    .end local v3    # "cameraTyp":I
    invoke-direct {p0, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getVideoRate(I)I

    move-result v4

    invoke-direct {p0, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getSampleRate(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->openFixRTS(IIIII)V

    goto/16 :goto_0

    .line 3599
    .end local v1    # "mRTSType":I
    .end local v11    # "resolution":[I
    .restart local v3    # "cameraTyp":I
    :cond_3
    if-ne v9, v6, :cond_4

    .line 3600
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sput v7, Lcom/hfufo/rxdrone/MainApplication;->STREAM_SIZE:I

    goto/16 :goto_1

    .line 3602
    :cond_4
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const/16 v0, 0x1e0

    sput v0, Lcom/hfufo/rxdrone/MainApplication;->STREAM_SIZE:I

    goto/16 :goto_1

    .line 3620
    .restart local v11    # "resolution":[I
    :cond_5
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v0, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_WIDTH:I

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureWidth:I

    .line 3623
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v0, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureHeight:I

    goto/16 :goto_2

    .line 3653
    .restart local v1    # "mRTSType":I
    :cond_6
    if-ne v3, v6, :cond_8

    .line 3654
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVga:Z

    .line 3659
    :goto_3
    if-nez v10, :cond_7

    .line 3660
    const/16 v0, 0x8b5

    invoke-direct {p0, v10, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->createStream(II)Z

    .line 3661
    const-string v0, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open RTS mode TCP_MODE 22"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    :cond_7
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    aget v5, v11, v5

    aget v6, v11, v6

    invoke-direct {p0, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getVideoRate(I)I

    move-result v7

    new-instance v8, Lcom/hfufo/rxdrone/HDManualCtrlActivity$20;

    invoke-direct {v8, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$20;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    move v4, v1

    invoke-virtual/range {v2 .. v8}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToOpenRTStream(IIIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 3677
    const-string v0, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openRTS-notFix: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3656
    :cond_8
    iput-boolean v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVga:Z

    goto :goto_3
.end method

.method private palm_takePhoto()V
    .locals 2

    .prologue
    .line 7007
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7008
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "gesture_take"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7009
    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 7011
    return-void
.end method

.method private pushData(ZLjava/lang/String;)V
    .locals 11
    .param p1, "isVideo"    # Z
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 8104
    if-nez p2, :cond_1

    .line 8123
    :cond_0
    :goto_0
    return-void

    .line 8107
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8108
    .local v10, "file":Ljava/io/File;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8111
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/fh/util/TimeFormate;->formatYMD_HMS(J)Ljava/lang/String;

    move-result-object v6

    .line 8112
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

    .line 8113
    .local v0, "fileInfo":Lcom/hfufo/bean/FileInfo;
    if-eqz p1, :cond_2

    .line 8114
    invoke-virtual {v0}, Lcom/hfufo/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/microshow/rxffmpeg/VideoUitls;->getDuration(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/hfufo/bean/FileInfo;->setDuration(I)V

    .line 8115
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->record_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8122
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "video/mp4"

    invoke-static {p0, v1, v2}, Lcom/Util/FileUtil;->notifyUpdate(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 8118
    :cond_2
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/hfufo/rxdrone/MainApplication;->snapshot_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private rectTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1096
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1118
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1099
    :pswitch_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-nez v0, :cond_0

    .line 1101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWidthRatio:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v2, v1

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHeightRatio:F

    float-to-double v4, v1

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/opencv/openCVJni;->SetInixy(II)V

    goto :goto_0

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerBroadcast()V
    .locals 2

    .prologue
    .line 2922
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRegistered:Z

    if-nez v1, :cond_0

    .line 2923
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.jieli.dv.running2_projection_status"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2924
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.jieli.dv.running2_format_sdcard"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2925
    const-string v1, "com.jieli.dv.running2_emergency_video_state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2926
    const-string v1, "gesture_take"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2927
    const-string v1, "gesture_takevideo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2928
    const-string v1, "time_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2929
    const-string v1, "time_finish_video"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2930
    const-string v1, "dete_body"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2931
    const-string v1, "net_lost"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2932
    const-string v1, "net_connect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2933
    const-string v1, "openrts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2938
    const-string v1, "ACTION_CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2939
    const-string v1, "ACTION_CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2940
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2941
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRegistered:Z

    .line 2943
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releasePlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5229
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    if-eqz v0, :cond_0

    .line 5230
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->release(Z)V

    .line 5231
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->stopPlayback()V

    .line 5233
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    if-eqz v0, :cond_1

    .line 5234
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->release(Z)V

    .line 5235
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->stopPlayback()V

    .line 5238
    :cond_1
    return-void
.end method

.method private requestFileMsgText()V
    .locals 3

    .prologue
    .line 5303
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCameraType:I

    .line 5304
    const-string v0, "HDManualCtrlActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestFileMsgText**mCameraType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5305
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCameraType:I

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendResponse:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRequestMediaFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 5306
    return-void
.end method

.method private resetRS()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1441
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setRotation(I)V

    .line 1442
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v3, v4, v3, v3}, Lcom/hfufo/widget/IjkVideoView;->setRS(FFFF)V

    .line 1443
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->getPivotX()F

    move-result v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v2}, Lcom/hfufo/widget/IjkVideoView;->getPivotY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/widget/IjkVideoView;->setXY(FF)V

    .line 1444
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotX:F

    .line 1445
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotY:F

    .line 1446
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldX:F

    .line 1447
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldY:F

    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->resetRotaton:Z

    .line 1450
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v4, v4}, Lcom/hfufo/widget/IjkVideoView;->setSize(FF)V

    .line 1451
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    .line 1452
    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidthOld:F

    .line 1453
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    .line 1454
    return-void
.end method

.method private returnCtrl()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8761
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-nez v0, :cond_0

    .line 8762
    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setMode(Landroid/view/View;)V

    .line 8764
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    if-eqz v0, :cond_1

    .line 8765
    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setPalmFollow(Landroid/view/View;)V

    .line 8767
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    if-nez v0, :cond_2

    .line 8771
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecording:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    if-eqz v0, :cond_4

    .line 8772
    :cond_3
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stopLocalRecording()V

    .line 8774
    :cond_4
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cancelMusicFun()V

    .line 8775
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->visibleMusic(Z)V

    .line 8776
    return-void
.end method

.method private rudderLTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v1, -0x80

    .line 1126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1183
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1132
    :pswitch_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1135
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setLeftWheelPosition(FF)V

    .line 1136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xLeftEvent:F

    .line 1137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->yLeftEvent:F

    goto :goto_0

    .line 1151
    :pswitch_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xLeftEvent:F

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->yLeftEvent:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/widget/RockerBgView;->onTouchHide(FF)V

    goto :goto_0

    .line 1158
    :pswitch_3
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightmode:Z

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 1160
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    .line 1171
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 1166
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    goto :goto_1

    .line 1126
    nop

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

.method private rudderRTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v3, -0x80

    .line 1191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1247
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1196
    :pswitch_0
    const-string v0, "HDManualCtrlActivityTAG"

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

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1199
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xRightEvent:F

    .line 1200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->yRightEvent:F

    .line 1201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setRightWheelPosition(FF)V

    goto/16 :goto_0

    .line 1211
    :pswitch_1
    const-string v0, "HDManualCtrlActivityTAG"

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

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xRightEvent:F

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->yRightEvent:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/widget/RockerBgView;->onTouchHide(FF)V

    goto/16 :goto_0

    .line 1218
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

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightmode:Z

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v3}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 1226
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v3}, Lcom/fh/util/Protocol1;->setChannel4(B)V

    .line 1237
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1231
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v3}, Lcom/fh/util/Protocol1;->setChannel1(B)V

    .line 1232
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v3}, Lcom/fh/util/Protocol1;->setChannel2(B)V

    goto :goto_1

    .line 1191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private saveMergePicture(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "mBitmap1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4597
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->opencvStitcher:Lcom/opencvstitcher/OpencvStitcher;

    if-nez v0, :cond_0

    .line 4598
    new-instance v0, Lcom/opencvstitcher/OpencvStitcher;

    invoke-direct {v0}, Lcom/opencvstitcher/OpencvStitcher;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->opencvStitcher:Lcom/opencvstitcher/OpencvStitcher;

    .line 4600
    :cond_0
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoN:I

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downTIme:I

    .line 4601
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoN:I

    .line 4603
    const-string v0, "ggppptime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5168\u666f\u56fe\u7247\u6570\u91cf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4604
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4606
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoN:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 4608
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4609
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4610
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4611
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/task/VideoCapture;->setPano(Z)V

    .line 4613
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;

    invoke-direct {v1, p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$30;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4659
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4667
    :goto_0
    return-void

    .line 4662
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->opencvStitcher:Lcom/opencvstitcher/OpencvStitcher;

    invoke-virtual {v0, p1}, Lcom/opencvstitcher/OpencvStitcher;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private savePicture([B)V
    .locals 18
    .param p1, "out_yuv"    # [B

    .prologue
    .line 4446
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->aData:[B

    .line 4448
    new-instance v2, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataHeight:I

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 4449
    .local v2, "image":Landroid/graphics/YuvImage;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4450
    .local v12, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataHeight:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x63

    invoke-virtual {v2, v4, v5, v12}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 4451
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 4452
    .local v13, "bytes":[B
    const/4 v4, 0x0

    array-length v5, v13

    invoke-static {v13, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4456
    .local v3, "mBitmap1":Landroid/graphics/Bitmap;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getLocalPhotoName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4457
    .local v16, "outPath":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->savePathOfmpeg:Ljava/lang/String;

    .line 4462
    const/16 v17, 0x0

    .line 4463
    .local v17, "result":Z
    sget-object v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    const/16 v5, 0x2d0

    if-ne v4, v5, :cond_5

    sget-object v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v4, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVga:Z

    if-nez v4, :cond_5

    .line 4464
    move-object v14, v3

    .line 4478
    .local v14, "dscDataBmp":Landroid/graphics/Bitmap;
    :goto_0
    const/16 v4, 0x63

    move-object/from16 v0, v16

    invoke-static {v14, v0, v4}, Lcom/fh/hdutil/AppUtils;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    move-result v17

    .line 4479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 4481
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    .line 4484
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    const/high16 v5, 0x43800000    # 256.0f

    const/high16 v6, 0x43100000    # 144.0f

    invoke-static {v4, v5, v6}, Lcom/fh/hdutil/BitmapUtil;->getBitmapSizeByC(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    .line 4485
    new-instance v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity$28;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$28;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4502
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVga:Z

    if-nez v4, :cond_1

    sget-object v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v4, Lcom/hfufo/rxdrone/MainApplication;->PICTURE_HEIGHT:I

    const/16 v5, 0x2d0

    if-ne v4, v5, :cond_2

    .line 4503
    :cond_1
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->savePathOfmpeg:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "image/jpeg"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/Util/FileUtil;->notifyUpdate(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 4510
    :cond_2
    :try_start_0
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4528
    :goto_1
    if-eqz v17, :cond_4

    .line 4529
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 4530
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4532
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 4534
    :cond_4
    return-void

    .line 4467
    .end local v14    # "dscDataBmp":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFrontCamera:Z

    if-eqz v4, :cond_6

    .line 4468
    move-object/from16 v0, p0

    iget v4, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldX:F

    neg-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldY:F

    neg-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoAngle:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lcom/fh/hdutil/BitmapUtil;->adjustBitmapSizeByC(Landroid/graphics/Bitmap;IIFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .restart local v14    # "dscDataBmp":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 4472
    .end local v14    # "dscDataBmp":Landroid/graphics/Bitmap;
    :cond_6
    const/16 v4, 0x500

    const/16 v5, 0x2d0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldX:F

    neg-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldY:F

    neg-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoAngle:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lcom/fh/hdutil/BitmapUtil;->adjustBitmapSizeByC(Landroid/graphics/Bitmap;IIFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .restart local v14    # "dscDataBmp":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 4511
    :catch_0
    move-exception v15

    .line 4512
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private savePictureJPEG([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fh/hdutil/AppUtils;->getLocalPhotoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4541
    .local v10, "outPath":Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4543
    .local v0, "bitmapL":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4544
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4545
    iput-object v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    .line 4547
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, 0x43800000    # 256.0f

    const/high16 v3, 0x43100000    # 144.0f

    invoke-static {v1, v2, v3}, Lcom/fh/hdutil/BitmapUtil;->getBitmapSizeByC(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    .line 4548
    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureWidth:I

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pictureHeight:I

    iget v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldX:F

    neg-float v3, v3

    iget v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldY:F

    neg-float v4, v4

    iget v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoAngle:F

    float-to-int v5, v5

    iget v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    invoke-static/range {v0 .. v8}, Lcom/fh/hdutil/BitmapUtil;->adjustBitmapSizeByC(Landroid/graphics/Bitmap;IIFFIFLandroid/graphics/Paint;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 4555
    .local v9, "dscDataBmp":Landroid/graphics/Bitmap;
    iput-object v10, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->savePathOfmpeg:Ljava/lang/String;

    .line 4557
    const/16 v1, 0x59

    invoke-static {v9, v10, v1}, Lcom/fh/hdutil/AppUtils;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    move-result v11

    .line 4567
    .local v11, "result":Z
    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$29;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$29;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4584
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "image/jpeg"

    invoke-static {p0, v1, v2}, Lcom/Util/FileUtil;->notifyUpdate(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 4585
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4586
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4587
    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4588
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 4590
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4592
    return-void
.end method

.method private saveVideoToMP4(Ljava/lang/String;)V
    .locals 6
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    .line 8140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8141
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 8142
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recordDir:Ljava/lang/String;

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

    .line 8143
    .local v0, "outputVideoUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/videooperate/utils/VideoManager;->getInstance(Landroid/content/Context;Lcom/videooperate/utils/VideoManager$Callback;)Lcom/videooperate/utils/VideoManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/videooperate/utils/VideoManager;->saveVideo(Landroid/net/Uri;Ljava/lang/String;)V

    .line 8146
    .end local v0    # "outputVideoUrl":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private selsectMusic(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 8100
    const/16 v0, 0x2766

    invoke-static {p0, v0}, Lcom/videooperate/activity/MusicLibraryActivity;->startForResult(Landroid/app/Activity;I)V

    .line 8101
    return-void
.end method

.method private sendControlCmd()V
    .locals 4

    .prologue
    .line 6962
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    .line 6963
    .local v1, "settingCmd":Lcom/jieli/lib/dv/control/json/bean/SettingCmd;
    const-string v2, "FLIGHT_CONTROL"

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 6964
    const-string v2, "PUT"

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 6966
    const-string v0, ""

    .line 6967
    .local v0, "cmd":Ljava/lang/String;
    sget-boolean v2, Lcom/hfufo/rxdrone/MainApplication;->isQuanzhi:Z

    if-eqz v2, :cond_0

    .line 6968
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v2}, Lcom/fh/util/ProtocolOfQuanzhi;->packaging()[B

    move-result-object v2

    invoke-static {v2}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 6973
    :goto_0
    const-string v2, "DRONE_DATA"

    invoke-virtual {v1, v2, v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 6976
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendResponse:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    invoke-virtual {v2, v1, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 6977
    return-void

    .line 6970
    :cond_0
    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v2}, Lcom/fh/util/Protocol1;->packaging()[B

    move-result-object v2

    invoke-static {v2}, Lcom/fh/util/Protocol1;->toHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendFollowData(Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "rectDete"    # Landroid/graphics/Rect;

    .prologue
    .line 2068
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v13}, Lcom/hfufo/widget/ManualView;->isOnTouch()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2285
    :cond_0
    :goto_0
    return-void

    .line 2073
    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    sub-int v12, v13, v14

    .line 2074
    .local v12, "rectWidth":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    sub-int v11, v13, v14

    .line 2076
    .local v11, "rectHeight":I
    mul-int v10, v12, v11

    .line 2077
    .local v10, "mianji":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->screenMianji:I

    if-gt v10, v13, :cond_0

    .line 2081
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-nez v13, :cond_2

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-eqz v13, :cond_0

    :cond_2
    if-eqz v11, :cond_0

    .line 2085
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v14, v12, 0x2

    add-int v7, v13, v14

    .line 2089
    .local v7, "centerW":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstChoose:Z

    if-eqz v13, :cond_3

    .line 2090
    move-object/from16 v0, p0

    iput v7, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstCenterW:I

    .line 2091
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstChoose:Z

    .line 2092
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstFollow:Z

    .line 2095
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstFollow:Z

    if-eqz v13, :cond_4

    .line 2096
    int-to-float v13, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstCenterW:I

    int-to-float v14, v14

    invoke-static {v13, v14}, Lcom/fh/hdutil/AppUtils;->getDistance(FF)D

    move-result-wide v14

    const-wide/high16 v16, 0x4054000000000000L    # 80.0

    cmpg-double v13, v14, v16

    if-ltz v13, :cond_0

    .line 2099
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstFollow:Z

    .line 2104
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followFaceMode:Z

    if-nez v13, :cond_8

    .line 2106
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v14, v11, 0x2

    add-int v9, v13, v14

    .line 2107
    .local v9, "mRectCenter":I
    const/16 v13, 0x32

    if-ge v9, v13, :cond_7

    .line 2108
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v14, v11, 0x2

    add-int v6, v13, v14

    .line 2112
    .local v6, "centerH":I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cBodyWidth:F

    const/high16 v14, 0x41c80000    # 25.0f

    add-float v8, v13, v14

    .line 2121
    .end local v9    # "mRectCenter":I
    .local v8, "initWidth":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 2122
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v14, 0x14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 2123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v14, 0x15

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 2124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v14, 0x16

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 2125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v14, 0x17

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 2126
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-eqz v13, :cond_b

    .line 2129
    const/16 v2, 0x80

    .line 2130
    .local v2, "a1":I
    int-to-float v13, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pScreenWidth:F

    const/high16 v15, 0x428c0000    # 70.0f

    sub-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_9

    if-lez v7, :cond_9

    .line 2133
    mul-int/lit16 v13, v7, 0x100

    int-to-float v13, v13

    sget-object v14, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v14, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    div-float/2addr v13, v14

    float-to-int v2, v13

    .line 2143
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    invoke-virtual {v13, v2, v14, v15}, Lcom/fh/util/Protocol1;->setChannel4(ID)V

    .line 2145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    const-wide/16 v16, 0x78

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2155
    const/16 v5, 0x80

    .line 2156
    .local v5, "a4":I
    int-to-float v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initHeight:F

    const/high16 v15, 0x41f00000    # 30.0f

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a

    int-to-float v13, v6

    sget-object v14, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v14, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_a

    .line 2159
    const/high16 v13, 0x43000000    # 128.0f

    sget-object v14, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v14, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    int-to-float v15, v6

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    sget-object v14, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v14, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initHeight:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x41f00000    # 30.0f

    sub-float/2addr v14, v15

    div-float/2addr v13, v14

    float-to-int v5, v13

    .line 2168
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    invoke-virtual {v13, v5, v14, v15}, Lcom/fh/util/Protocol1;->setChannel3(ID)V

    goto/16 :goto_0

    .line 2110
    .end local v2    # "a1":I
    .end local v5    # "a4":I
    .end local v6    # "centerH":I
    .end local v8    # "initWidth":F
    .restart local v9    # "mRectCenter":I
    :cond_7
    add-int/lit8 v6, v9, -0x32

    .restart local v6    # "centerH":I
    goto/16 :goto_1

    .line 2114
    .end local v6    # "centerH":I
    .end local v9    # "mRectCenter":I
    :cond_8
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v14, v11, 0x2

    add-int v6, v13, v14

    .line 2115
    .restart local v6    # "centerH":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cPalmWidth:F

    const/high16 v14, 0x40800000    # 4.0f

    sub-float v8, v13, v14

    .restart local v8    # "initWidth":F
    goto/16 :goto_2

    .line 2135
    .restart local v2    # "a1":I
    :cond_9
    int-to-float v13, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pScreenWidth:F

    const/high16 v15, 0x428c0000    # 70.0f

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    int-to-float v13, v7

    sget-object v14, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v14, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    .line 2138
    mul-int/lit16 v13, v7, 0x100

    int-to-float v13, v13

    sget-object v14, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v14, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    div-float/2addr v13, v14

    float-to-int v2, v13

    goto/16 :goto_3

    .line 2161
    .restart local v5    # "a4":I
    :cond_a
    int-to-float v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initHeight:F

    const/high16 v15, 0x41f00000    # 30.0f

    sub-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_6

    if-lez v6, :cond_6

    .line 2164
    const/high16 v13, 0x43800000    # 256.0f

    const/high16 v14, 0x43000000    # 128.0f

    int-to-float v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initHeight:F

    move/from16 v16, v0

    const/high16 v17, 0x41f00000    # 30.0f

    sub-float v16, v16, v17

    div-float v15, v15, v16

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    float-to-int v5, v13

    goto :goto_4

    .line 2173
    .end local v2    # "a1":I
    .end local v5    # "a4":I
    :cond_b
    const/16 v3, 0x80

    .line 2174
    .local v3, "a2":I
    const/16 v4, 0x80

    .line 2175
    .local v4, "a3":I
    int-to-float v13, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pScreenWidth:F

    const/high16 v15, 0x428c0000    # 70.0f

    sub-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_10

    if-lez v7, :cond_10

    .line 2178
    mul-int/lit16 v13, v7, 0x100

    int-to-float v13, v13

    sget-object v14, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v14, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    div-float/2addr v13, v14

    float-to-int v3, v13

    .line 2188
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    invoke-virtual {v13, v3, v14, v15}, Lcom/fh/util/Protocol1;->setChannel4(ID)V

    .line 2195
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stopParam:F

    .line 2197
    int-to-float v13, v12

    const/high16 v14, 0x41200000    # 10.0f

    sub-float v14, v8, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_11

    const/16 v13, 0x14

    if-lt v12, v13, :cond_11

    .line 2200
    const/high16 v13, 0x43000000    # 128.0f

    const/high16 v14, 0x43000000    # 128.0f

    const/high16 v15, 0x41400000    # 12.0f

    sub-float v15, v8, v15

    int-to-float v0, v12

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    const/high16 v15, 0x41f00000    # 30.0f

    sub-float v15, v8, v15

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v4, v13

    .line 2203
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stopParam:F

    .line 2234
    :cond_d
    :goto_6
    const/16 v13, 0x7e

    if-ge v4, v13, :cond_14

    const/16 v13, 0x7d

    if-lt v4, v13, :cond_14

    .line 2235
    const/16 v4, 0x7d

    .line 2244
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    invoke-virtual {v13, v4, v14, v15}, Lcom/fh/util/Protocol1;->setChannel2(ID)V

    .line 2250
    const/16 v5, 0x80

    .line 2251
    .restart local v5    # "a4":I
    int-to-float v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initHeight:F

    const/high16 v15, 0x42a00000    # 80.0f

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_17

    int-to-float v13, v6

    sget-object v14, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v14, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_17

    .line 2254
    const/high16 v13, 0x43000000    # 128.0f

    sget-object v14, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v14, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    int-to-float v15, v6

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    sget-object v14, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v14, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initHeight:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x42a00000    # 80.0f

    sub-float/2addr v14, v15

    div-float/2addr v13, v14

    float-to-int v5, v13

    .line 2264
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const/16 v14, 0x80

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(ID)V

    .line 2274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v14, 0x14

    const-wide/16 v16, 0x46

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v14, 0x15

    const-wide/16 v16, 0x104

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2276
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v14, 0x16

    const-wide/16 v16, 0x50

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    const/16 v14, 0x17

    const-wide/16 v16, 0x78

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2180
    .end local v5    # "a4":I
    :cond_10
    int-to-float v13, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pScreenWidth:F

    const/high16 v15, 0x428c0000    # 70.0f

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_c

    int-to-float v13, v7

    sget-object v14, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v14, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_c

    .line 2183
    mul-int/lit16 v13, v7, 0x100

    int-to-float v13, v13

    sget-object v14, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v14, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    div-float/2addr v13, v14

    float-to-int v3, v13

    goto/16 :goto_5

    .line 2204
    :cond_11
    int-to-float v13, v12

    const/high16 v14, 0x41400000    # 12.0f

    add-float/2addr v14, v8

    cmpl-float v13, v13, v14

    if-lez v13, :cond_12

    int-to-float v13, v12

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v8

    cmpg-float v13, v13, v14

    if-gez v13, :cond_12

    .line 2207
    const/high16 v13, 0x43000000    # 128.0f

    const/high16 v14, 0x43000000    # 128.0f

    const/high16 v15, 0x41400000    # 12.0f

    add-float/2addr v15, v8

    int-to-float v0, v12

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    const/high16 v15, 0x41400000    # 12.0f

    sub-float v15, v8, v15

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v4, v13

    .line 2210
    const/high16 v13, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stopParam:F

    goto/16 :goto_6

    .line 2211
    :cond_12
    const/16 v13, 0x14

    if-gt v12, v13, :cond_13

    .line 2213
    const/16 v4, 0xff

    .line 2214
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stopParam:F

    goto/16 :goto_6

    .line 2216
    :cond_13
    int-to-float v13, v12

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v8

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_d

    .line 2218
    const/4 v4, 0x0

    .line 2219
    const/high16 v13, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stopParam:F

    goto/16 :goto_6

    .line 2236
    :cond_14
    const/16 v13, 0x81

    if-le v4, v13, :cond_15

    const/16 v13, 0x8a

    if-ge v4, v13, :cond_15

    .line 2237
    const/16 v4, 0x8a

    goto/16 :goto_7

    .line 2238
    :cond_15
    const/16 v13, 0xec

    if-le v4, v13, :cond_16

    .line 2239
    const/16 v4, 0xec

    goto/16 :goto_7

    .line 2240
    :cond_16
    const/16 v13, 0x1e

    if-ge v4, v13, :cond_e

    .line 2241
    const/16 v4, 0x1e

    goto/16 :goto_7

    .line 2256
    .restart local v5    # "a4":I
    :cond_17
    int-to-float v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initHeight:F

    const/high16 v15, 0x42a00000    # 80.0f

    sub-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_f

    if-lez v6, :cond_f

    .line 2259
    const/high16 v13, 0x43800000    # 256.0f

    const/high16 v14, 0x43000000    # 128.0f

    int-to-float v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initHeight:F

    move/from16 v16, v0

    const/high16 v17, 0x42a00000    # 80.0f

    sub-float v16, v16, v17

    div-float v15, v15, v16

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    float-to-int v5, v13

    goto/16 :goto_8
.end method

.method private setEditor(Z)V
    .locals 2
    .param p1, "Checked"    # Z

    .prologue
    .line 7785
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "flight"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7786
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7787
    return-void
.end method

.method public static setLayout(Landroid/view/View;IIIII)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "w"    # I

    .prologue
    .line 1476
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1477
    .local v0, "olp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v1, p1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1480
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1486
    return-void
.end method

.method private setLeftWheelPosition(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1460
    float-to-int v4, p1

    iget v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    sub-int v1, v4, v5

    .line 1461
    .local v1, "left":I
    float-to-int v4, p2

    iget v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    sub-int v3, v4, v5

    .line 1462
    .local v3, "top":I
    float-to-int v4, p1

    iget v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    add-int v2, v4, v5

    .line 1463
    .local v2, "right":I
    float-to-int v4, p2

    iget v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    add-int v0, v4, v5

    .line 1464
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/hfufo/widget/RockerBgView;->setVisibility(I)V

    .line 1465
    const-string v4, "HDManualCtrlActivityTAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLeftWheelPosition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v6}, Lcom/hfufo/widget/RockerBgView;->isShown()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/hfufo/widget/RockerBgView;->layout(IIII)V

    .line 1467
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 1468
    return-void
.end method

.method private setRightWheelPosition(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1490
    float-to-int v4, p1

    iget v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    sub-int v1, v4, v5

    .line 1491
    .local v1, "left":I
    float-to-int v4, p2

    iget v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    sub-int v3, v4, v5

    .line 1492
    .local v3, "top":I
    float-to-int v4, p1

    iget v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    add-int v2, v4, v5

    .line 1493
    .local v2, "right":I
    float-to-int v4, p2

    iget v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    add-int v0, v4, v5

    .line 1494
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/hfufo/widget/RockerBgView;->setVisibility(I)V

    .line 1495
    const-string v4, "\u9690\u85cf "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRightWheelPosition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v6}, Lcom/hfufo/widget/RockerBgView;->isShown()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/hfufo/widget/RockerBgView;->layout(IIII)V

    .line 1497
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 1498
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v4}, Lcom/hfufo/widget/RockerBgView;->invalidate()V

    .line 1499
    return-void
.end method

.method private setRotate()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 8817
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRotate:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRotate:Z

    .line 8818
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRotate:Z

    if-eqz v0, :cond_3

    .line 8819
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    if-eqz v0, :cond_0

    .line 8820
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    .line 8821
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rokerOff()V

    .line 8822
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    const v2, 0x7f0200f1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 8824
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    const v2, 0x7f03003b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 8825
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstRotate:Z

    if-eqz v0, :cond_1

    .line 8826
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstRotate:Z

    .line 8827
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_tips1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8828
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8830
    :cond_1
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->resetRS()V

    .line 8847
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 8817
    goto :goto_0

    .line 8839
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2, v2}, Lcom/hfufo/widget/IjkVideoView;->setSize(FF)V

    .line 8840
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    .line 8841
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    .line 8842
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8843
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setRotation(I)V

    .line 8844
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoAngle:F

    .line 8845
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    const v1, 0x7f03003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private setScaleOfIjk(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    const v1, 0x3e4ccccd    # 0.2f

    .line 1508
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, p1, p1}, Lcom/hfufo/widget/IjkVideoView;->setSize(FF)V

    .line 1520
    :goto_0
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidthOld:F

    .line 1521
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    .line 1522
    return-void

    .line 1511
    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 1512
    const p1, 0x3e4ccccd    # 0.2f

    .line 1513
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v1, v1}, Lcom/hfufo/widget/IjkVideoView;->setSize(FF)V

    goto :goto_0

    .line 1514
    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 1515
    const/high16 p1, 0x40800000    # 4.0f

    .line 1516
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2, v2}, Lcom/hfufo/widget/IjkVideoView;->setSize(FF)V

    goto :goto_0

    .line 1518
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v3, v3}, Lcom/hfufo/widget/IjkVideoView;->setSize(FF)V

    goto :goto_0
.end method

.method private setSelectNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 8410
    return-void
.end method

.method private setSelfPivot(FF)V
    .locals 7
    .param p1, "lessX"    # F
    .param p2, "lessY"    # F

    .prologue
    const/4 v5, 0x0

    .line 1530
    iget v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotX:F

    add-float v0, v4, p1

    .line 1531
    .local v0, "lessDX":F
    iget v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotY:F

    add-float v1, v4, p2

    .line 1533
    .local v1, "lessDY":F
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v4}, Lcom/hfufo/widget/IjkVideoView;->getPivotX()F

    move-result v4

    add-float v2, v4, v0

    .line 1534
    .local v2, "setPivotX":F
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v4}, Lcom/hfufo/widget/IjkVideoView;->getPivotY()F

    move-result v4

    add-float v3, v4, v1

    .line 1538
    .local v3, "setPivotY":F
    cmpg-float v4, v2, v5

    if-gez v4, :cond_1

    cmpg-float v4, v3, v5

    if-gez v4, :cond_1

    .line 1539
    const/4 v2, 0x0

    .line 1540
    const/4 v3, 0x0

    .line 1564
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v4}, Lcom/hfufo/widget/IjkVideoView;->getPivotX()F

    move-result v4

    sub-float v4, v2, v4

    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldX:F

    .line 1565
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v4}, Lcom/hfufo/widget/IjkVideoView;->getPivotY()F

    move-result v4

    sub-float v4, v3, v4

    iput v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldY:F

    .line 1567
    const-string v4, "lawwingLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSelfPivot00: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v6}, Lcom/hfufo/widget/IjkVideoView;->getPivotX()F

    move-result v6

    sub-float v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "++"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v6}, Lcom/hfufo/widget/IjkVideoView;->getPivotY()F

    move-result v6

    sub-float v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const-string v4, "lawwingLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSelfPivot11: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v4, v2, v3}, Lcom/hfufo/widget/IjkVideoView;->setXY(FF)V

    .line 1571
    return-void

    .line 1541
    :cond_1
    cmpl-float v4, v2, v5

    if-lez v4, :cond_2

    cmpg-float v4, v3, v5

    if-gez v4, :cond_2

    .line 1543
    const/4 v3, 0x0

    .line 1544
    sget v4, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    .line 1545
    sget v2, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    goto :goto_0

    .line 1547
    :cond_2
    cmpg-float v4, v2, v5

    if-gez v4, :cond_3

    cmpl-float v4, v3, v5

    if-lez v4, :cond_3

    .line 1548
    const/4 v2, 0x0

    .line 1549
    sget v4, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 1550
    sget v3, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    goto/16 :goto_0

    .line 1553
    :cond_3
    sget v4, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_4

    .line 1554
    sget v2, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    .line 1558
    :goto_1
    sget v4, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    .line 1559
    sget v3, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    goto/16 :goto_0

    .line 1556
    :cond_4
    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldX:F

    goto :goto_1

    .line 1561
    :cond_5
    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldY:F

    goto/16 :goto_0
.end method

.method private setSpeed(I)V
    .locals 1
    .param p1, "speed"    # I

    .prologue
    .line 7145
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/ManualView;->setSpeed(I)V

    .line 7146
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, p1}, Lcom/fh/util/Protocol1;->setSpeed(I)V

    .line 7147
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, p1}, Lcom/fh/util/ProtocolOfQuanzhi;->setSpeed(I)V

    .line 7148
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/LeftRockerBgView;->setSpeed(I)V

    .line 7149
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setSpeed(I)V

    .line 7150
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0, p1}, Lcom/hfufo/widget/RockerBgView;->setSpeed(I)V

    .line 7151
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSpeed:I

    .line 7153
    return-void
.end method

.method private setTrim()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 7834
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim1:Lcom/hfufo/widget/MicroTrimView;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim1CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/MicroTrimView;->onClickEvent(Lcom/hfufo/widget/MicroTrimView$ICallBack;)V

    .line 7835
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim2:Lcom/hfufo/widget/MicroTrimView;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim2CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/MicroTrimView;->onClickEvent(Lcom/hfufo/widget/MicroTrimView$ICallBack;)V

    .line 7836
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim3:Lcom/hfufo/widget/MicroTrimView;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim3CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/MicroTrimView;->onClickEvent(Lcom/hfufo/widget/MicroTrimView$ICallBack;)V

    .line 7837
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim4:Lcom/hfufo/widget/MicroTrimView;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim4CB:Lcom/hfufo/widget/MicroTrimView$ICallBack;

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/MicroTrimView;->onClickEvent(Lcom/hfufo/widget/MicroTrimView$ICallBack;)V

    .line 7838
    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7839
    .local v0, "share":Landroid/content/SharedPreferences;
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->issave:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim1:Lcom/hfufo/widget/MicroTrimView;

    if-eqz v1, :cond_0

    .line 7840
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim1:Lcom/hfufo/widget/MicroTrimView;

    const-string v2, "trim1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/MicroTrimView;->setPosition(I)V

    .line 7841
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim2:Lcom/hfufo/widget/MicroTrimView;

    const-string v2, "trim2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/MicroTrimView;->setPosition(I)V

    .line 7842
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim3:Lcom/hfufo/widget/MicroTrimView;

    const-string v2, "trim4"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/MicroTrimView;->setPosition(I)V

    .line 7843
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim4:Lcom/hfufo/widget/MicroTrimView;

    const-string v2, "trim4"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/MicroTrimView;->setPosition(I)V

    .line 7845
    :cond_0
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightmode:Z

    if-eqz v1, :cond_1

    .line 7848
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hfufo/widget/ManualView;->setRight(Z)V

    .line 7850
    :cond_1
    return-void
.end method

.method private setZhongli()V
    .locals 6

    .prologue
    const v5, 0x7f03001e

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x80

    .line 7699
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followFlag:Z

    if-eqz v0, :cond_0

    .line 7700
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08006d

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7723
    :goto_0
    return-void

    .line 7703
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isManual:Z

    if-eqz v0, :cond_1

    .line 7704
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7705
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->grayFlag:Z

    .line 7706
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isManual:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MotionView;->setGrayFlagr(Z)V

    .line 7707
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isManual:Z

    .line 7709
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->motionViewInit()V

    goto :goto_0

    .line 7711
    :cond_1
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->grayFlag:Z

    .line 7712
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isManual:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MotionView;->setGrayFlagr(Z)V

    .line 7713
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isManual:Z

    .line 7714
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightmode:Z

    if-eqz v0, :cond_2

    .line 7715
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setLeftRudderPoint(Landroid/graphics/Point;)V

    .line 7719
    :goto_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7717
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setRightRudderPoint(Landroid/graphics/Point;)V

    goto :goto_1
.end method

.method private showDownload(I)V
    .locals 4
    .param p1, "total"    # I

    .prologue
    const/4 v2, 0x0

    .line 5100
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->totalTimeD:I

    .line 5101
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downTIme:I

    .line 5102
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->download_progress:Lcom/hfufo/widget/MyProgressBar;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MyProgressBar;->setVisibility(I)V

    .line 5103
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->download_progress:Lcom/hfufo/widget/MyProgressBar;

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->totalTimeD:I

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MyProgressBar;->setMax(I)V

    .line 5104
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->download_progress:Lcom/hfufo/widget/MyProgressBar;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MyProgressBar;->setProgress(I)V

    .line 5105
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadSpeed:I

    .line 5106
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadSpeed:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5108
    return-void
.end method

.method private showFlyMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 7914
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-eqz v0, :cond_0

    .line 7915
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_face:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7917
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    if-nez v0, :cond_1

    .line 7918
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    .line 7919
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rokerOn()V

    .line 7928
    :cond_1
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    if-nez v0, :cond_4

    .line 7929
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7930
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initClassicalBtn()V

    .line 7931
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 7932
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudderInit()V

    .line 7933
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7934
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v4}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    .line 7935
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightmode:Z

    if-eqz v0, :cond_3

    .line 7936
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightClassicLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7937
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightClassicRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8001
    :cond_2
    :goto_0
    return-void

    .line 7939
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicLeft:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7940
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicRight:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 7943
    :cond_4
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    if-ne v0, v5, :cond_5

    .line 7944
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7945
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 7946
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudderInit()V

    .line 7947
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualViewInit()V

    .line 7948
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initClassicalBtn()V

    .line 7949
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7950
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    .line 7954
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightmode:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setRight(Z)V

    .line 7955
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v5}, Lcom/hfufo/widget/ManualView;->setMotion(Z)V

    .line 7966
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$67;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$67;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7974
    :cond_5
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 7975
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7977
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualViewInit()V

    .line 7978
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 7979
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7980
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    goto :goto_0

    .line 7981
    :cond_6
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 7983
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7984
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v4}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    .line 7985
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 7988
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hide_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7993
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideRockerInit()V

    .line 7994
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private showMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7855
    sget v0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    if-ne v0, v3, :cond_0

    .line 7856
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7860
    :cond_0
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->isExistRearView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7861
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7864
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7865
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7866
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->vr:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7867
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onhead:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7868
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hd_con_rev:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7869
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_drawline:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7871
    sget v0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    if-eq v0, v3, :cond_2

    .line 7872
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hasFix:Z

    if-eqz v0, :cond_2

    .line 7873
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_fix:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 7879
    :cond_2
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->c_WIFI:Z

    if-eqz v0, :cond_3

    .line 7880
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7881
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_body:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7888
    :cond_3
    return-void
.end method

.method private showOrHideSelectedMuisc(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 8201
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    if-eqz v0, :cond_1

    .line 8229
    :cond_0
    :goto_0
    return-void

    .line 8204
    :cond_1
    if-eqz p1, :cond_4

    .line 8205
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    if-eqz v0, :cond_0

    .line 8208
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedMusic:Z

    .line 8209
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    iget v0, v0, Lcom/videooperate/bean/Song;->duration:I

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->MAX_VID_DURATION:I

    .line 8210
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->MAX_VID_DURATION:I

    const v1, 0x186a0

    if-le v0, v1, :cond_2

    .line 8211
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->MAX_VID_DURATION:I

    add-int/lit16 v0, v0, -0x3a98

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->MAX_VID_DURATION:I

    .line 8214
    :cond_2
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tvMusicName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    iget-object v0, v0, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8215
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tvMusicName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 8216
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ivAddMusic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8217
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8218
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ivMusicDel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8214
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    iget-object v0, v0, Lcom/videooperate/bean/Song;->songName:Ljava/lang/String;

    goto :goto_1

    .line 8221
    :cond_4
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedMusic:Z

    .line 8222
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tvMusicName:Landroid/widget/TextView;

    const v1, 0x7f0800e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8223
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->MAX_VID_DURATION:I

    .line 8225
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8226
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ivMusicDel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPicture()V
    .locals 0

    .prologue
    .line 4675
    return-void
.end method

.method private showPtz()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8800
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isShowPtz:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isShowPtz:Z

    .line 8801
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isShowPtz:Z

    if-eqz v0, :cond_1

    .line 8802
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rudderLessX:F

    .line 8803
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rudderLessY:F

    .line 8804
    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setScaleOfIjk(F)V

    .line 8805
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_picture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8806
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tranRudder:Lcom/hfufo/widget/TranRockerBgView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/TranRockerBgView;->setVisibility(I)V

    .line 8812
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 8800
    goto :goto_0

    .line 8808
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setScaleOfIjk(F)V

    .line 8809
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_picture:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8810
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tranRudder:Lcom/hfufo/widget/TranRockerBgView;

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/TranRockerBgView;->setVisibility(I)V

    goto :goto_1
.end method

.method private showVideoUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5051
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_rec_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5052
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hRecFlag:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recFlagThread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5053
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takevideo:Landroid/widget/ImageView;

    const v2, 0x7f0200a9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5058
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedMusic:Z

    if-nez v1, :cond_0

    .line 5059
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hRecTime:Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recTimeThread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5073
    :goto_0
    return-void

    .line 5061
    :cond_0
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->musicProgress:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    invoke-virtual {v2}, Lcom/videooperate/bean/Song;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 5063
    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->MAX_VID_DURATION:I

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/fh/util/Common;->intToTime2(J)Ljava/lang/String;

    move-result-object v0

    .line 5064
    .local v0, "hms":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->total_time:Landroid/widget/TextView;

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

    .line 5065
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->current_time:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5067
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->musicProgress:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5068
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startTimer()V

    .line 5070
    invoke-static {}, Lcom/videooperate/utils/MusicControlUtils;->getInstance()Lcom/videooperate/utils/MusicControlUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    iget-object v2, v2, Lcom/videooperate/bean/Song;->path:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/videooperate/utils/MusicControlUtils;->cmd_start(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showWaitingDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 8442
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitingDialog:Lcom/hfufo/dialog/WaitingDialog;

    if-nez v0, :cond_0

    .line 8443
    new-instance v0, Lcom/hfufo/dialog/WaitingDialog;

    invoke-direct {v0}, Lcom/hfufo/dialog/WaitingDialog;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitingDialog:Lcom/hfufo/dialog/WaitingDialog;

    .line 8444
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitingDialog:Lcom/hfufo/dialog/WaitingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/dialog/WaitingDialog;->setCancelable(Z)V

    .line 8445
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitingDialog:Lcom/hfufo/dialog/WaitingDialog;

    invoke-virtual {v0, p1}, Lcom/hfufo/dialog/WaitingDialog;->setNotifyContent(Ljava/lang/String;)V

    .line 8446
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitingDialog:Lcom/hfufo/dialog/WaitingDialog;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$69;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$69;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/dialog/WaitingDialog;->setOnWaitingDialog(Lcom/hfufo/dialog/WaitingDialog$OnWaitingDialog;)V

    .line 8460
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8461
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitingDialog:Lcom/hfufo/dialog/WaitingDialog;

    invoke-virtual {v0, p1}, Lcom/hfufo/dialog/WaitingDialog;->updateNotifyContent(Ljava/lang/String;)V

    .line 8463
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitingDialog:Lcom/hfufo/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/hfufo/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8465
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitingDialog:Lcom/hfufo/dialog/WaitingDialog;

    const-string v1, "wait_dialog"

    invoke-virtual {v0, v1}, Lcom/hfufo/dialog/WaitingDialog;->showToastShort(Ljava/lang/String;)V

    .line 8467
    :cond_2
    return-void
.end method

.method private startDecode()V
    .locals 3

    .prologue
    .line 1747
    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->useMediacodec:Z

    if-eqz v0, :cond_2

    .line 1748
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcDecoder;->checkCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$12;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$12;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/AvcDecoder;->setH264CallBack(Lcom/hfufo/widget/AvcEncoder$H264CallBack;)V

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataWidth:I

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/widget/AvcDecoder;->initDecoder(II)Z

    .line 1812
    :cond_1
    :goto_0
    return-void

    .line 1784
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    if-nez v0, :cond_1

    .line 1785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    .line 1786
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$13;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$13;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1809
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private startDetectionFace()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1587
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionFace:Z

    if-nez v0, :cond_0

    .line 1588
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstChoose:Z

    .line 1589
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionFace:Z

    .line 1590
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bFirstFrame_video:Z

    .line 1591
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setFollow(Z)V

    .line 1592
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setFollow(Z)V

    .line 1595
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->faceBodyThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$11;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1712
    :cond_0
    return-void
.end method

.method private startDetectionHand()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1818
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mGesture:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    if-nez v0, :cond_0

    .line 1819
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->getInstance(Landroid/content/Context;)Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mGesture:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    .line 1821
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mGesture:Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;

    invoke-virtual {v0}, Lcom/thinkjoy/zhthinkjoygesturedetectlib/ZHThinkjoyGesture;->init()V

    .line 1824
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    if-nez v0, :cond_1

    .line 1825
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    .line 1826
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bFirstFrame_video:Z

    .line 1827
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$14;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2037
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2039
    :cond_1
    return-void
.end method

.method private startGpsUdp()V
    .locals 2

    .prologue
    .line 8853
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clientGPS:Lcom/task/UDPClientGPS;

    if-nez v0, :cond_0

    .line 8854
    invoke-static {}, Lcom/task/UDPClientGPS;->getInstance()Lcom/task/UDPClientGPS;

    move-result-object v0

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clientGPS:Lcom/task/UDPClientGPS;

    .line 8855
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clientGPS:Lcom/task/UDPClientGPS;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->iGpsListener:Lcom/task/IGpsListener;

    invoke-virtual {v0, v1}, Lcom/task/UDPClientGPS;->registerGpsUdpListener(Lcom/task/IGpsListener;)Z

    .line 8858
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clientGPS:Lcom/task/UDPClientGPS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/task/UDPClientGPS;->setUpdate(Z)V

    .line 8859
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clientGPS:Lcom/task/UDPClientGPS;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/task/UDPClientGPS;->startGpsUdp(I)V

    .line 8861
    return-void
.end method

.method private startLocalRecording()V
    .locals 8

    .prologue
    const/16 v7, 0x800

    const/16 v4, 0x780

    const/16 v6, 0x19

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 4811
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4812
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    .line 4813
    const-string v0, "HDManualCtrlActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLocalRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4814
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->VIDEO1080P_SUPPORT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    if-ne v0, v7, :cond_2

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    if-nez v0, :cond_2

    .line 4815
    :cond_1
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const v1, 0x7f08014e

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 4818
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    if-nez v0, :cond_5

    :cond_3
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    if-ne v0, v4, :cond_4

    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->VIDEO1080P_SUPPORT:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    if-nez v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    if-ne v0, v7, :cond_a

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    if-eqz v0, :cond_a

    .line 4820
    :cond_5
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initRecord()V

    .line 4821
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecording:Z

    .line 4822
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recordSrcData:Z

    .line 4823
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4824
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recordSrcData:Z

    .line 4825
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    .line 4826
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->saveSVideo()V

    .line 4827
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcEncoder;->StartThread()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4828
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->Recording1:Z

    .line 4829
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    .line 4830
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_6

    .line 4831
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startRecordJL()V

    .line 4833
    :cond_6
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const v1, 0x7f0800e1

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 4834
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecording:Z

    .line 4899
    :cond_7
    :goto_0
    return-void

    .line 4839
    :cond_8
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$31;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$31;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1, v5}, Lcom/hfufo/widget/IjkVideoView;->setRecordCallback(Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;Z)V

    .line 4862
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v2}, Lcom/hfufo/widget/IjkVideoView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    iget v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hfufo/widget/IjkVideoView;->setVideoSize(IIII)V

    .line 4864
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$32;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$32;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->startRecord(Lcom/jieli/lib/stream/udp/IActionListener;)V

    .line 4879
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcEncoder;->StartThread()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4880
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    .line 4881
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    const v1, 0x7f0800e1

    invoke-virtual {v0, v1}, Lcom/hfufo/rxdrone/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 4882
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->endRecord()V

    .line 4883
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecording:Z

    .line 4884
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 4885
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4895
    :cond_9
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showVideoUI()V

    goto :goto_0

    .line 4897
    :cond_a
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startRecordJL()V

    goto :goto_0
.end method

.method private startRecordJL()V
    .locals 3

    .prologue
    const/16 v2, 0x780

    .line 4902
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    if-nez v0, :cond_0

    .line 4903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recordSrcData:Z

    .line 4904
    new-instance v0, Lcom/task/VideoRecord;

    invoke-direct {v0}, Lcom/task/VideoRecord;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    .line 4905
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedMusic:Z

    invoke-virtual {v0, v1}, Lcom/task/VideoRecord;->setAddMusic(Z)V

    .line 4906
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    const/16 v1, 0x800

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    if-nez v0, :cond_1

    .line 4907
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    const/16 v1, 0x438

    invoke-virtual {v0, v2, v1}, Lcom/task/VideoRecord;->setResolution(II)V

    .line 4914
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$33;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/task/VideoRecord;->prepare(Lcom/task/OnRecordStateListener;)V

    .line 4966
    :cond_0
    return-void

    .line 4908
    :cond_1
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->VIDEO1080P_SUPPORT:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    if-nez v0, :cond_2

    .line 4909
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2}, Lcom/task/VideoRecord;->setResolution(II)V

    goto :goto_0

    .line 4911
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/task/VideoRecord;->setResolution(II)V

    goto :goto_0
.end method

.method private startTimer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 8270
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCountdown:Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;

    if-nez v0, :cond_0

    .line 8271
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->MAX_VID_DURATION:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;JJ)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCountdown:Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;

    .line 8273
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->musicProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 8274
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->total_time:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8275
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->current_time:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8276
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCountdown:Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$Countdown;->start()Landroid/os/CountDownTimer;

    .line 8277
    return-void
.end method

.method private startZoomImgThread(II)V
    .locals 2
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 3985
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stopZoomImgThread()V

    .line 3986
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    if-nez v0, :cond_0

    .line 3987
    new-instance v0, Lcom/fh/util/ZoomImageThread;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mIActionListener:Lcom/jieli/lib/stream/udp/IActionListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/fh/util/ZoomImageThread;-><init>(IILcom/jieli/lib/stream/udp/IActionListener;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    .line 3988
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    invoke-virtual {v0}, Lcom/fh/util/ZoomImageThread;->start()V

    .line 3990
    :cond_0
    return-void
.end method

.method private stopLocalRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4776
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    if-eqz v0, :cond_0

    .line 4781
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    if-nez v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->VIDEO1080P_SUPPORT:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    const/16 v1, 0x800

    if-ne v0, v1, :cond_4

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    if-eqz v0, :cond_4

    .line 4783
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecording:Z

    .line 4784
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/hfufo/rxdrone/MainApplication;->getApplication()Lcom/hfufo/rxdrone/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getJPEG()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4785
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcEncoder;->StopThread()V

    .line 4793
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideVideoUI()V

    .line 4797
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    .line 4798
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isNeedZoomImg:Z

    if-eqz v0, :cond_5

    .line 4808
    :cond_5
    return-void

    .line 4787
    :cond_6
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->endRecord()V

    .line 4788
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitting:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private stopZoomImgThread()V
    .locals 1

    .prologue
    .line 3993
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    if-eqz v0, :cond_0

    .line 3994
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    invoke-virtual {v0}, Lcom/fh/util/ZoomImageThread;->stopThread()V

    .line 3995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mZoomImageThread:Lcom/fh/util/ZoomImageThread;

    .line 3997
    :cond_0
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6353
    sget v1, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    if-ne v1, v4, :cond_0

    .line 6395
    :goto_0
    return-void

    .line 6356
    :cond_0
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSwitchCamera:Z

    .line 6357
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isAdjustResolution:Z

    .line 6358
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->closeRTS(I)V

    .line 6359
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->timeR:I

    .line 6360
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v2, 0x7f03001f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6361
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    .line 6362
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    .line 6363
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    invoke-virtual {v1}, Lcom/hfufo/widget/AvcDecoder;->stopDecode()V

    .line 6364
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    .line 6365
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v2, 0x7f08005c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 6366
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 6368
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 6369
    .local v0, "cameraType":I
    if-ne v0, v4, :cond_1

    .line 6370
    const/4 v0, 0x2

    .line 6376
    :goto_1
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->chooseFix:Z

    if-eqz v1, :cond_3

    .line 6377
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFrontCamera:Z

    if-eqz v1, :cond_2

    .line 6378
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/hfufo/bean/DeviceSettingInfo;->setCameraType(I)V

    .line 6385
    :goto_2
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->chooseFix:Z

    goto :goto_0

    .line 6373
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 6380
    :cond_2
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/hfufo/bean/DeviceSettingInfo;->setCameraType(I)V

    goto :goto_2

    .line 6383
    :cond_3
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hfufo/bean/DeviceSettingInfo;->setCameraType(I)V

    goto :goto_2
.end method

.method private syncRearCamera()V
    .locals 1

    .prologue
    .line 8074
    new-instance v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity$68;

    invoke-direct {v0, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$68;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 8084
    return-void
.end method

.method private takePicture([B)V
    .locals 11
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 4433
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420Size:[I

    const v1, 0x151800

    aput v1, v0, v2

    .line 4434
    monitor-enter p0

    .line 4435
    :try_start_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->m_handleVideoCodec:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    array-length v2, p1

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420:[B

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420Size:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_width:[I

    iget-object v10, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_heigh:[I

    move-object v1, p1

    invoke-static/range {v0 .. v10}, Lcom/utility/WF_VCodec;->WFVC_Decode(I[BI[B[I[B[I[B[I[I[I)I

    .line 4436
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4437
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 4438
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420:[B

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->yuv420_nv21([B)V

    .line 4439
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->out_yuv420:[B

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->savePicture([B)V

    .line 4442
    :cond_0
    return-void

    .line 4436
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private topRudderInit()V
    .locals 2

    .prologue
    .line 5512
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$40;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$40;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/LeftRockerBgView;->setRudderListener(Lcom/fh/listener/RudderListener;)V

    .line 5530
    return-void
.end method

.method private tranRudderInit()V
    .locals 2

    .prologue
    .line 5536
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tranRudder:Lcom/hfufo/widget/TranRockerBgView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$41;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/TranRockerBgView;->setRudderListener(Lcom/fh/listener/RudderListener;)V

    .line 5573
    return-void
.end method

.method private updateDeleteUI(Lcom/hfufo/bean/FileInfo;)V
    .locals 0
    .param p1, "fileInfo"    # Lcom/hfufo/bean/FileInfo;

    .prologue
    .line 8428
    return-void
.end method

.method private updateModeUI(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/16 v1, 0x8

    .line 2825
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->playbackMode:I

    if-eq v0, p1, :cond_0

    .line 2826
    iput p1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->playbackMode:I

    .line 2829
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2871
    :cond_1
    :goto_0
    return-void

    .line 2831
    :pswitch_0
    const-string v0, "updateModeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateModeUI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    const-string v0, "HDManualCtrlActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openrts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->syncRearCamera()V

    .line 2835
    invoke-static {}, Lcom/fh/hdutil/DeviceClientCmd;->getInstance()Lcom/fh/hdutil/DeviceClientCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fh/hdutil/DeviceClientCmd;->checkFixRTS()V

    .line 2839
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2841
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2842
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isProjection:Z

    if-nez v0, :cond_1

    .line 2845
    const-string v0, "HDManualCtrlActivityTAG"

    const-string v1, "openrts==="

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2853
    :pswitch_1
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2855
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->closeRTS(I)V

    .line 2857
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2858
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setVisibility(I)V

    goto :goto_0

    .line 2829
    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private videoChangeResolutionRatio(Ljava/lang/String;)V
    .locals 5
    .param p1, "oldVideoUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 8133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->recordDir:Ljava/lang/String;

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

    .line 8134
    .local v0, "outputVideoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitting:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8135
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->canRecord:Z

    .line 8136
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/videooperate/utils/VideoManager;->getInstance(Landroid/content/Context;Lcom/videooperate/utils/VideoManager$Callback;)Lcom/videooperate/utils/VideoManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/videooperate/utils/VideoManager;->exec(Ljava/lang/String;Ljava/lang/String;)V

    .line 8137
    return-void
.end method

.method private viewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 1437
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v18, 0x1

    :goto_1
    return v18

    .line 1273
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1274
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->point_num:I

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downX:F

    .line 1276
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downY:F

    .line 1278
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCurTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mLastTime:J

    .line 1280
    invoke-static/range {p2 .. p2}, Lcom/fh/hdutil/AppUtils;->spacingCenter(Landroid/view/MotionEvent;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->down2CenterDistance:D

    .line 1286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCurTime:J

    .line 1287
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->resetRotaton:Z

    .line 1288
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCurTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mLastTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0x12c

    cmp-long v18, v18, v20

    if-gez v18, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->point_num:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1299
    invoke-direct/range {p0 .. p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->resetRS()V

    .line 1300
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1308
    :cond_1
    const-string v18, "HDManualCtrlActivityTAG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "rudderLTouch_D: x:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",y:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1312
    :pswitch_2
    invoke-static/range {p2 .. p2}, Lcom/fh/hdutil/AppUtils;->spacing(Landroid/view/MotionEvent;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->twoPointDistance:D

    .line 1313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidthOld:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    .line 1314
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    .line 1315
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->point_num:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->point_num:I

    goto/16 :goto_0

    .line 1321
    :pswitch_3
    const-string v18, "HDManualCtrlActivityTAG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\u5b9e\u65f6\u4f4d\u7f6eL\uff1a("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->point_num:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRotate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1328
    invoke-static/range {p2 .. p2}, Lcom/fh/hdutil/AppUtils;->spacingCenter(Landroid/view/MotionEvent;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->move2CenterDistance:D

    .line 1329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->move2CenterDistance:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->down2CenterDistance:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    sget-object v22, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v22, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    const-wide/high16 v22, 0x4018000000000000L    # 6.0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .line 1330
    .local v11, "scale":F
    move-object/from16 v0, p0

    iput v11, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    .line 1331
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setScaleOfIjk(F)V

    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    sget-object v20, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v20, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    sget-object v21, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v21, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    invoke-static/range {v18 .. v21}, Lcom/fh/hdutil/AppUtils;->computeCurrentAngle(FFFF)I

    move-result v6

    .line 1334
    .local v6, "angle":I
    int-to-float v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoAngle:F

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/hfufo/widget/IjkVideoView;->setRotation(I)V

    goto/16 :goto_0

    .line 1337
    .end local v6    # "angle":I
    .end local v11    # "scale":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downX:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    sub-float v7, v18, v19

    .line 1338
    .local v7, "lessX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downY:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    sub-float v8, v18, v19

    .line 1343
    .local v8, "lessY":F
    const-string v18, "lawwingLog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "viewTouch-lessX: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " y:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setSelfPivot(FF)V

    goto/16 :goto_0

    .line 1346
    .end local v7    # "lessX":F
    .end local v8    # "lessY":F
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->point_num:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1347
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1348
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1350
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRotate:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scale_num:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1353
    invoke-static/range {p2 .. p2}, Lcom/fh/hdutil/AppUtils;->spacing(Landroid/view/MotionEvent;)D

    move-result-wide v4

    .line 1354
    .local v4, "Distance":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->twoPointDistance:D

    move-wide/from16 v18, v0

    sub-double v12, v4, v18

    .line 1355
    .local v12, "space":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    mul-double v20, v20, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .line 1359
    .restart local v11    # "scale":F
    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v18, v11, v18

    if-ltz v18, :cond_0

    .line 1360
    const/high16 v18, 0x41200000    # 10.0f

    mul-float v18, v18, v11

    move/from16 v0, v18

    float-to-int v10, v0

    .line 1361
    .local v10, "sc":I
    const/16 v18, 0x28

    move/from16 v0, v18

    if-le v10, v0, :cond_5

    .line 1362
    const/16 v10, 0x28

    .line 1364
    :cond_5
    int-to-float v0, v10

    move/from16 v18, v0

    const/high16 v19, 0x41200000    # 10.0f

    div-float v9, v18, v19

    .line 1365
    .local v9, "s":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scale_num:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setScaleOfIjk(F)V

    goto/16 :goto_0

    .line 1375
    .end local v4    # "Distance":D
    .end local v9    # "s":F
    .end local v10    # "sc":I
    .end local v11    # "scale":F
    .end local v12    # "space":D
    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mCurTime:J

    move-wide/from16 v20, v0

    sub-long v16, v18, v20

    .line 1376
    .local v16, "totalTime":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downY:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/fh/hdutil/AppUtils;->getDistance(FF)D

    move-result-wide v14

    .line 1377
    .local v14, "totalDistance":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRotate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1378
    const-wide/16 v18, 0xc8

    cmp-long v18, v16, v18

    if-gez v18, :cond_a

    sget-object v18, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v18, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    const/high16 v19, 0x40400000    # 3.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpl-double v18, v14, v18

    if-lez v18, :cond_a

    .line 1379
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downX:F

    move/from16 v18, v0

    sget-object v19, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v19, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    cmpl-float v18, v18, v19

    if-lez v18, :cond_8

    .line 1380
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    .line 1381
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rotationSense:Z

    .line 1392
    :goto_2
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v14, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rotationSpeed:D

    .line 1393
    const-string v18, "rrrrr"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "viewTouch: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rotationSpeed:D

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    sget-object v20, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v20, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    sget-object v21, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v21, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    invoke-static/range {v18 .. v21}, Lcom/fh/hdutil/AppUtils;->computeCurrentAngle(FFFF)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->degreeSelf:I

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1414
    :cond_6
    :goto_3
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->point_num:I

    .line 1415
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downX:F

    .line 1416
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downY:F

    .line 1417
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidthOld:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    .line 1418
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    .line 1419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldX:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotX:F

    .line 1420
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotoldY:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pivotY:F

    goto/16 :goto_0

    .line 1383
    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rotationSense:Z

    goto/16 :goto_2

    .line 1386
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downY:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_9

    .line 1387
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rotationSense:Z

    goto/16 :goto_2

    .line 1389
    :cond_9
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rotationSense:Z

    goto/16 :goto_2

    .line 1398
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->resetRotaton:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downX:F

    move/from16 v18, v0

    sget-object v19, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v19, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_b

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/hfufo/widget/IjkVideoView;->setRotation(I)V

    .line 1401
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoAngle:F

    .line 1406
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v20}, Lcom/hfufo/widget/IjkVideoView;->setSize(FF)V

    .line 1407
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    .line 1408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->xuanRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 1403
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    move-object/from16 v18, v0

    const/16 v19, 0xb4

    invoke-virtual/range {v18 .. v19}, Lcom/hfufo/widget/IjkVideoView;->setRotation(I)V

    .line 1404
    const/high16 v18, 0x43340000    # 180.0f

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoAngle:F

    goto :goto_4

    .line 1424
    .end local v14    # "totalDistance":D
    .end local v16    # "totalTime":J
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->point_num:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->point_num:I

    .line 1425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidthOld:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    .line 1426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scaleWidth:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoScale:F

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->scale_num:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1266
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

.method private visibleMusic(Z)V
    .locals 6
    .param p1, "isShowed"    # Z

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 6256
    if-eqz p1, :cond_3

    .line 6257
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-eqz v0, :cond_0

    .line 6258
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hd_ac:Landroid/widget/RelativeLayout;

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 6260
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    if-eqz v0, :cond_2

    .line 6261
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6265
    :goto_0
    sput-boolean v5, Lcom/hfufo/widget/RenderImageThread;->iSMVmode:Z

    .line 6266
    sput-boolean v5, Lcom/hfufo/widget/RenderImageThread;->isRev:Z

    .line 6268
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideMenu()V

    .line 6270
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_menu:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6271
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->calibration:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6273
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6274
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_file:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6275
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->fileText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6276
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6281
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6282
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6283
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6285
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->modeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6286
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6288
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6289
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_backc:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6290
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6292
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->return_control:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6293
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_filter:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6294
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_file1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6296
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6297
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tvMusicName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6299
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6300
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6346
    :cond_1
    :goto_1
    return-void

    .line 6263
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6303
    :cond_3
    sput-boolean v2, Lcom/hfufo/widget/RenderImageThread;->iSMVmode:Z

    .line 6304
    sput-boolean v2, Lcom/hfufo/widget/RenderImageThread;->isRev:Z

    .line 6305
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hd_ac:Landroid/widget/RelativeLayout;

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 6307
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_menu:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6308
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->calibration:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6310
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6311
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_file:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6312
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->fileText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6315
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->canLand:Z

    if-eqz v0, :cond_4

    .line 6321
    :cond_4
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6325
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6326
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6328
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6329
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_backc:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6330
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6332
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->return_control:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6333
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_filter:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6334
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_file1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6336
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6337
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tvMusicName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6338
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rotate:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6340
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->menuShow:Z

    if-nez v0, :cond_1

    .line 6341
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private visibleTip()V
    .locals 6

    .prologue
    const v5, 0x7f080144

    const v4, 0x7f0300c4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 7813
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_tips:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7815
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    if-nez v0, :cond_1

    .line 7816
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_image1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7817
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_text1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 7830
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7831
    return-void

    .line 7819
    :cond_1
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7820
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_image1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7821
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_text1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 7822
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_text3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7823
    :cond_2
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 7824
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_text1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7825
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_image1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 7826
    :cond_3
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 7827
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_image1:Landroid/widget/ImageView;

    const v1, 0x7f0300c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7828
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tip_text1:Landroid/widget/TextView;

    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private visibleView(Z)V
    .locals 4
    .param p1, "visib"    # Z

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2336
    packed-switch v3, :pswitch_data_0

    .line 2401
    if-eqz p1, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim1:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 2403
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim2:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 2404
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim3:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 2407
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rollView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2408
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2411
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2412
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rokerOff()V

    .line 2413
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    .line 2418
    :cond_0
    :goto_0
    sget v0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    if-ne v0, v3, :cond_1

    .line 2420
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2422
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_fix:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2424
    :cond_1
    return-void

    .line 2339
    :pswitch_0
    if-eqz p1, :cond_0

    .line 2340
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2341
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2342
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    if-nez v0, :cond_2

    .line 2343
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2345
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2346
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rokerOff()V

    .line 2347
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    goto :goto_0

    .line 2351
    :pswitch_1
    if-eqz p1, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2353
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2354
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    if-nez v0, :cond_3

    .line 2355
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2358
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2359
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->menuShow:Z

    if-nez v0, :cond_4

    .line 2360
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2362
    :cond_4
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rokerOff()V

    .line 2363
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    goto :goto_0

    .line 2368
    :pswitch_2
    sget v0, Lcom/hfufo/rxdrone/MainApplication;->WIFI_Name:I

    if-ne v0, v3, :cond_0

    if-eqz p1, :cond_0

    .line 2369
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2371
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2372
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2373
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ivAddMusic:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2374
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2375
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rokerOff()V

    .line 2376
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    goto :goto_0

    .line 2387
    :pswitch_3
    if-eqz p1, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2389
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2390
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    if-nez v0, :cond_5

    .line 2391
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2393
    :cond_5
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2394
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ptz_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2395
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rokerOff()V

    .line 2396
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    goto/16 :goto_0

    .line 2336
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private yuv420_nv21([B)V
    .locals 4
    .param p1, "byt_yuv420"    # [B

    .prologue
    const/4 v3, 0x0

    .line 4738
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->w_h:I

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pU:[B

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->w_h:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4739
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->w_h:I

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->w_h:I

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pV:[B

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->w_h:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4740
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i:I

    :goto_0
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i:I

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->w_h:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    .line 4741
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->w_h:I

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pV:[B

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i:I

    aget-byte v1, v1, v2

    aput-byte v1, p1, v0

    .line 4742
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->w_h:I

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pU:[B

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i:I

    aget-byte v1, v1, v2

    aput-byte v1, p1, v0

    .line 4740
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i:I

    goto :goto_0

    .line 4746
    :cond_0
    return-void
.end method


# virtual methods
.method back(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f009b
        }
    .end annotation

    .prologue
    .line 6923
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    if-eqz v0, :cond_0

    .line 6924
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takevideo:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takeVideo(Landroid/view/View;)V

    .line 6925
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->closeRTS(I)V

    .line 6928
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$47;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$47;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6943
    :goto_0
    return-void

    .line 6935
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitting:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 6936
    const v0, 0x7f08014c

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6939
    :cond_1
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->finish()V

    goto :goto_0
.end method

.method calibration(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00b8
        }
    .end annotation

    .prologue
    .line 6694
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_1

    .line 6706
    :cond_0
    :goto_0
    return-void

    .line 6697
    :cond_1
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6698
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    if-nez v0, :cond_2

    .line 6699
    const v0, 0x7f08014d

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 6700
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->calibration:Landroid/widget/ImageView;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6701
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->calibration()V

    .line 6702
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0}, Lcom/fh/util/ProtocolOfQuanzhi;->calibration()V

    .line 6703
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendControlCmd()V

    .line 6704
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3ac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method changeFix(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00b5
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 6713
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    if-eqz v0, :cond_0

    .line 6714
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFrontCamera:Z

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFrontCamera:Z

    .line 6715
    invoke-static {}, Lcom/fh/hdutil/DeviceClientCmd;->getInstance()Lcom/fh/hdutil/DeviceClientCmd;

    move-result-object v0

    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getRtsFormat()I

    move-result v1

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {p0, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getVideoRate(I)I

    move-result v4

    invoke-direct {p0, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getSampleRate(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/fh/hdutil/DeviceClientCmd;->changeFixRTS(IIIII)V

    .line 6716
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFrontCamera:Z

    if-eqz v0, :cond_2

    .line 6717
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/hfufo/bean/DeviceSettingInfo;->setCameraType(I)V

    .line 6724
    :cond_0
    :goto_1
    return-void

    .line 6714
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6720
    :cond_2
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hfufo/bean/DeviceSettingInfo;->setCameraType(I)V

    goto :goto_1
.end method

.method chooseMode(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00bc
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6082
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 6119
    :goto_0
    return-void

    .line 6085
    :cond_0
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v0, Lcom/hfufo/rxdrone/MainApplication;->STREAM_SIZE:I

    const/16 v3, 0x438

    if-ne v0, v3, :cond_1

    .line 6086
    const v0, 0x7f08007c

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6089
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    if-eqz v0, :cond_2

    .line 6090
    const v0, 0x7f0800e0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6093
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followFaceMode:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followFaceMode:Z

    .line 6097
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    .line 6098
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followFaceMode:Z

    if-eqz v0, :cond_4

    .line 6100
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_face:Landroid/widget/ImageView;

    const v2, 0x7f030012

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6103
    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initOpencvMode(I)V

    .line 6112
    :goto_2
    const-string v0, "R"

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->colorG:Ljava/lang/String;

    .line 6113
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rcHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$45;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$45;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 6093
    goto :goto_1

    .line 6108
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initOpencvMode(I)V

    .line 6109
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_face:Landroid/widget/ImageView;

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public connectDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2878
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2879
    const-string v0, "123456"

    const-string v1, "HDconnectDevice: "

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2881
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    if-eqz v0, :cond_0

    .line 2882
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0, v2}, Lcom/hfufo/rxdrone/MainApplication;->sendCommandToService(I)V

    .line 2891
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->connectedS:Z

    .line 2892
    return-void

    .line 2885
    :cond_1
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    if-eqz v0, :cond_0

    .line 2886
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0, v2, p1}, Lcom/hfufo/rxdrone/MainApplication;->sendCommandToService(ILjava/lang/String;)V

    goto :goto_0
.end method

.method drawline(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00c1
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6861
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionFace:Z

    if-eqz v0, :cond_1

    .line 6862
    :cond_0
    const v0, 0x7f0800d6

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 6919
    :goto_0
    return-void

    .line 6865
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    .line 6866
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    if-eqz v0, :cond_5

    .line 6867
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    if-nez v0, :cond_2

    .line 6868
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    .line 6871
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6872
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rcRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6873
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideFlyMode()V

    .line 6874
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightmode:Z

    invoke-virtual {v0, v3}, Lcom/hfufo/widget/ManualView;->setRight(Z)V

    .line 6875
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rocker_hide:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6877
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualViewInit()V

    .line 6878
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->operationgMode:I

    if-ne v0, v1, :cond_3

    .line 6879
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->topRudder:Lcom/hfufo/widget/LeftRockerBgView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/LeftRockerBgView;->setVisibility(I)V

    .line 6881
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    .line 6882
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6883
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setRightRoker(Z)V

    .line 6884
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setDrawLineEnable(Z)V

    .line 6885
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_drawline:Landroid/widget/ImageView;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6886
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0}, Lcom/hfufo/widget/ManualView;->setPosi()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 6865
    goto :goto_1

    .line 6905
    :cond_5
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    if-eqz v0, :cond_6

    .line 6906
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideFlyMode()V

    .line 6907
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rokerOn()V

    .line 6912
    :cond_6
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showFlyMode()V

    .line 6913
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/ManualView;->setRightRoker(Z)V

    .line 6914
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/ManualView;->setDrawLineEnable(Z)V

    .line 6915
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_drawline:Landroid/widget/ImageView;

    const v2, 0x7f020064

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6917
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public fun_switchCamera()V
    .locals 3

    .prologue
    .line 8053
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 8054
    .local v0, "cameraType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8055
    const/4 v0, 0x2

    .line 8059
    :goto_0
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v1}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hfufo/bean/DeviceSettingInfo;->setCameraType(I)V

    .line 8060
    const-string v1, "HDManualCtrlActivityTAG"

    const-string v2, "openrts=="

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8061
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->openRTS(I)V

    .line 8062
    return-void

    .line 8057
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getConnectedWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3818
    const-string v3, ""

    .line 3821
    .local v3, "strIp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 3823
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 3824
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    iget v2, v0, Landroid/net/DhcpInfo;->serverAddress:I

    .line 3826
    .local v2, "ip":I
    invoke-direct {p0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->intToIp(I)Ljava/lang/String;

    move-result-object v3

    .line 3828
    const-string v5, "ip="

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fh/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3833
    .end local v0    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v2    # "ip":I
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v3

    .line 3829
    :catch_0
    move-exception v1

    .line 3831
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurSysDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5660
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5661
    .local v1, "sDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 5662
    .local v0, "date":Ljava/lang/String;
    return-object v0
.end method

.method public getMotionReady()Z
    .locals 1

    .prologue
    .line 8066
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightmode:Z

    if-eqz v0, :cond_0

    .line 8067
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0}, Lcom/hfufo/widget/ManualView;->getLeftMotionReady()Z

    move-result v0

    .line 8069
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    invoke-virtual {v0}, Lcom/hfufo/widget/ManualView;->getRightMotionReady()Z

    move-result v0

    goto :goto_0
.end method

.method hdRev(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00c0
        }
    .end annotation

    .prologue
    .line 6402
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 6405
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVga:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    if-nez v0, :cond_1

    .line 6406
    const v0, 0x7f080094

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 6428
    :goto_0
    return-void

    .line 6409
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    if-eqz v0, :cond_2

    .line 6410
    const v0, 0x7f0800e0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6423
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->clickButton:Z

    .line 6424
    invoke-static {}, Lcom/fh/hdutil/DeviceClientCmd;->getInstance()Lcom/fh/hdutil/DeviceClientCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fh/hdutil/DeviceClientCmd;->requstFlip()V

    goto :goto_0
.end method

.method public hideRockerInit()V
    .locals 2

    .prologue
    .line 5442
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->left_layout_hide:Landroid/view/View;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onRudderLTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5443
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->right_layout_hide:Landroid/view/View;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onRudderRTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5444
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSpeed:I

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setSpeed(I)V

    .line 5445
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSpeed:I

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setSpeed(I)V

    .line 5446
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$38;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$38;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setRudderListener(Lcom/fh/listener/RudderListener;)V

    .line 5478
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$39;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$39;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RockerBgView;->setRudderListener(Lcom/fh/listener/RudderListener;)V

    .line 5509
    return-void
.end method

.method public initOpencvMode(I)V
    .locals 1
    .param p1, "model"    # I

    .prologue
    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->firstChoose:Z

    .line 1059
    invoke-static {p1}, Lcom/opencv/openCVJni;->SetModel(I)V

    .line 1061
    return-void
.end method

.method land(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00e1
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6546
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 6560
    :goto_0
    return-void

    .line 6549
    :cond_0
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->canLand:Z

    .line 6550
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setOneKeyDown(Z)V

    .line 6551
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v2}, Lcom/fh/util/ProtocolOfQuanzhi;->setOneKeyDown(Z)V

    .line 6553
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendControlCmd()V

    .line 6554
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_takeoff:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6555
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyText:Landroid/widget/TextView;

    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6556
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_land:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6558
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6559
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method manualBtnClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00c5
        }
    .end annotation

    .prologue
    .line 7695
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setZhongli()V

    .line 7696
    return-void
.end method

.method public manualViewInit()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 5403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isManual:Z

    .line 5404
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setVisibility(I)V

    .line 5405
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MotionView;->setVisibility(I)V

    .line 5406
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setRightRudderPoint(Landroid/graphics/Point;)V

    .line 5407
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$37;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setMsgCallback(Lcom/fh/util/MsgCallback;)V

    .line 5438
    return-void
.end method

.method public motionViewInit()V
    .locals 2

    .prologue
    .line 5583
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dm:Landroid/util/DisplayMetrics;

    .line 5584
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5586
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    invoke-virtual {v0}, Lcom/hfufo/widget/MotionView;->startSensor()V

    .line 5587
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$42;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/MotionView;->setMsgCallback(Lcom/fh/util/MsgCallback;)V

    .line 5650
    return-void
.end method

.method public net_lost()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 7280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    .line 7281
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hd_ac:Landroid/widget/RelativeLayout;

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 7282
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-nez v0, :cond_0

    .line 7283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setMode(Landroid/view/View;)V

    .line 7285
    :cond_0
    invoke-direct {p0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->closeRTS(I)V

    .line 7286
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/IjkVideoView;->setVisibility(I)V

    .line 7287
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 7291
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 7292
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7298
    :cond_2
    const-string v0, "123456"

    const-string v1, "net_lost_st"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->lost_net:Z

    .line 7315
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 8294
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 8295
    packed-switch p1, :pswitch_data_0

    .line 8305
    :cond_0
    :goto_0
    return-void

    .line 8297
    :pswitch_0
    if-nez p3, :cond_1

    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8300
    :cond_1
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/videooperate/bean/Song;

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->song:Lcom/videooperate/bean/Song;

    .line 8301
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showOrHideSelectedMuisc(Z)V

    goto :goto_0

    .line 8295
    :pswitch_data_0
    .packed-switch 0x2766
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 5699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mExitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 5701
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/fh/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 5702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mExitTime:J

    .line 5709
    :goto_0
    return-void

    .line 5704
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->closeRTS(I)V

    .line 5707
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00c4,
            0x7f0f00fc,
            0x7f0f00b9,
            0x7f0f00cc,
            0x7f0f00b2,
            0x7f0f00bd,
            0x7f0f00be,
            0x7f0f00c9,
            0x7f0f00ce,
            0x7f0f00d2,
            0x7f0f00cd,
            0x7f0f00b0,
            0x7f0f00d0,
            0x7f0f00d1,
            0x7f0f00cf,
            0x7f0f00ec,
            0x7f0f00ed,
            0x7f0f00f7,
            0x7f0f00fb,
            0x7f0f009d
        }
    .end annotation

    .prologue
    const/16 v10, 0x4b0

    const/16 v9, 0x1d

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 8503
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 8758
    :cond_0
    :goto_0
    return-void

    .line 8505
    :sswitch_0
    invoke-static {v10}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8508
    sget-object v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v6, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    const/16 v7, 0x2d0

    if-eq v6, v7, :cond_1

    .line 8509
    const-string v5, "\u4ec5\u652f\u6301720P"

    invoke-static {v5}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8513
    :cond_1
    iget-boolean v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPanorama:Z

    if-eqz v6, :cond_0

    .line 8516
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPanoramaA:Z

    goto :goto_0

    .line 8520
    :sswitch_1
    iget-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-eqz v5, :cond_0

    .line 8523
    invoke-static {v10}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8526
    iget-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    if-nez v5, :cond_0

    .line 8529
    iget-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    if-nez v5, :cond_0

    .line 8532
    iget-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVga:Z

    if-nez v5, :cond_0

    .line 8535
    iget v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->panoN:I

    if-gtz v5, :cond_0

    .line 8539
    new-instance v1, Lcom/hfufo/dialog/EditDialog;

    invoke-direct {v1, p0}, Lcom/hfufo/dialog/EditDialog;-><init>(Landroid/content/Context;)V

    .line 8540
    .local v1, "editDialog":Lcom/hfufo/dialog/EditDialog;
    const-string v5, "\u53d6\u6d88"

    const-string v7, "\u786e\u5b9a"

    new-instance v8, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;

    invoke-direct {v8, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$70;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v1, v5, v7, v8}, Lcom/hfufo/dialog/EditDialog;->setOnclickListener(Ljava/lang/String;Ljava/lang/String;Lcom/hfufo/dialog/EditDialog$OnclickListener;)V

    .line 8573
    const-string v5, "\u5168\u666f\u62cd\u7167"

    invoke-virtual {v1, v5}, Lcom/hfufo/dialog/EditDialog;->setTitle(Ljava/lang/String;)V

    .line 8574
    const-string v5, "\u9009\u62e9\u901f\u5ea6\u8303\u56f4 0 - 50"

    invoke-virtual {v1, v5}, Lcom/hfufo/dialog/EditDialog;->setMessage(Ljava/lang/String;)V

    .line 8575
    const-string v5, "25"

    invoke-virtual {v1, v5}, Lcom/hfufo/dialog/EditDialog;->setDefaultNum(Ljava/lang/String;)V

    .line 8576
    const/16 v5, 0x32

    invoke-virtual {v1, v6, v5}, Lcom/hfufo/dialog/EditDialog;->setRange(II)V

    .line 8577
    invoke-virtual {v1}, Lcom/hfufo/dialog/EditDialog;->show()V

    goto :goto_0

    .line 8582
    .end local v1    # "editDialog":Lcom/hfufo/dialog/EditDialog;
    :sswitch_2
    iget-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    if-eqz v5, :cond_2

    .line 8583
    const v5, 0x7f0800d4

    invoke-static {v5}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 8586
    :cond_2
    iget-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionFace:Z

    if-eqz v5, :cond_4

    .line 8587
    :cond_3
    const v5, 0x7f0800d6

    invoke-static {v5}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 8590
    :cond_4
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showPtz()V

    goto :goto_0

    .line 8594
    :sswitch_3
    sget-object v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v6, Lcom/hfufo/rxdrone/MainApplication;->STREAM_SIZE:I

    const/16 v7, 0x438

    if-ne v6, v7, :cond_5

    .line 8595
    const v5, 0x7f08007c

    invoke-static {v5}, Lcom/fh/util/ToastUtils;->show(I)V

    goto/16 :goto_0

    .line 8598
    :cond_5
    iget-boolean v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionFace:Z

    if-eqz v6, :cond_7

    .line 8599
    :cond_6
    const v5, 0x7f0800d6

    invoke-static {v5}, Lcom/fh/util/ToastUtils;->show(I)V

    goto/16 :goto_0

    .line 8602
    :cond_7
    iget-boolean v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    if-eqz v6, :cond_8

    .line 8603
    const v5, 0x7f0800da

    invoke-static {v5}, Lcom/fh/util/ToastUtils;->show(I)V

    goto/16 :goto_0

    .line 8606
    :cond_8
    iget-boolean v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    if-eqz v6, :cond_9

    .line 8607
    const v5, 0x7f0800d4

    invoke-static {v5}, Lcom/fh/util/ToastUtils;->show(I)V

    goto/16 :goto_0

    .line 8611
    :cond_9
    iget-boolean v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    if-nez v6, :cond_0

    .line 8622
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    .line 8623
    invoke-direct {p0, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->visibleMusic(Z)V

    goto/16 :goto_0

    .line 8627
    :sswitch_4
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->returnCtrl()V

    goto/16 :goto_0

    .line 8632
    :sswitch_5
    sget-boolean v5, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    if-nez v5, :cond_a

    .line 8633
    const v5, 0x7f0800e1

    invoke-static {v5}, Lcom/fh/util/ToastUtils;->show(I)V

    goto/16 :goto_0

    .line 8637
    :cond_a
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setRotate()V

    goto/16 :goto_0

    .line 8642
    :sswitch_6
    sget-boolean v5, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    if-nez v5, :cond_b

    .line 8643
    const v5, 0x7f0800e1

    invoke-static {v5}, Lcom/fh/util/ToastUtils;->show(I)V

    goto/16 :goto_0

    .line 8647
    :cond_b
    new-instance v5, Lcom/hfufo/dialog/RenderDialog;

    iget v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->filterNumber:I

    iget v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->splitNumber:I

    new-instance v8, Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;

    invoke-direct {v8, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$71;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/hfufo/dialog/RenderDialog;-><init>(Landroid/app/Activity;IILcom/hfufo/dialog/RenderDialog$FilterCallback;)V

    .line 8667
    invoke-virtual {v5}, Lcom/hfufo/dialog/RenderDialog;->show()V

    goto/16 :goto_0

    .line 8676
    :sswitch_7
    invoke-virtual {p0, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rockercon(Landroid/view/View;)V

    .line 8678
    iget-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    if-nez v5, :cond_c

    .line 8679
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    const v6, 0x7f0200f1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 8682
    :cond_c
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_hide:Landroid/widget/ImageView;

    const v6, 0x7f0200f2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 8688
    :sswitch_8
    invoke-virtual {p0, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setMode(Landroid/view/View;)V

    goto/16 :goto_0

    .line 8699
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->openAlbum(Landroid/view/View;)V

    goto/16 :goto_0

    .line 8703
    :sswitch_a
    iget-boolean v7, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->to1080P:Z

    if-nez v7, :cond_d

    :goto_1
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->to1080P:Z

    .line 8704
    iget-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->to1080P:Z

    if-eqz v5, :cond_e

    .line 8705
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->choose_hd:Landroid/widget/ImageView;

    const v6, 0x7f030059

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_d
    move v5, v6

    .line 8703
    goto :goto_1

    .line 8707
    :cond_e
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->choose_hd:Landroid/widget/ImageView;

    const v6, 0x7f03005a

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 8714
    :sswitch_b
    invoke-direct {p0, v8}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selsectMusic(Landroid/view/View;)V

    goto/16 :goto_0

    .line 8718
    :sswitch_c
    iget-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedMusic:Z

    if-eqz v5, :cond_0

    .line 8722
    :sswitch_d
    iget-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->canRecord:Z

    if-eqz v5, :cond_0

    .line 8723
    invoke-direct {p0, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showOrHideSelectedMuisc(Z)V

    goto/16 :goto_0

    .line 8731
    :sswitch_e
    iput-boolean v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->takePho:Z

    .line 8732
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v5

    iget-object v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendResponse:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    invoke-virtual {v5, v6}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToTakePhoto(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto/16 :goto_0

    .line 8742
    :sswitch_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/T"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8743
    .local v3, "outputVideoUrl":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "test.mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8744
    .local v2, "inputVideoUrl":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "test.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 8745
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8747
    .local v0, "cmd":Ljava/lang/String;
    goto/16 :goto_0

    .line 8751
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "inputVideoUrl":Ljava/lang/String;
    .end local v3    # "outputVideoUrl":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :sswitch_10
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 8752
    iget-object v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 8503
    :sswitch_data_0
    .sparse-switch
        0x7f0f009d -> :sswitch_2
        0x7f0f00b0 -> :sswitch_6
        0x7f0f00b2 -> :sswitch_b
        0x7f0f00b9 -> :sswitch_9
        0x7f0f00bd -> :sswitch_3
        0x7f0f00be -> :sswitch_4
        0x7f0f00c4 -> :sswitch_1
        0x7f0f00c9 -> :sswitch_8
        0x7f0f00cc -> :sswitch_9
        0x7f0f00cd -> :sswitch_7
        0x7f0f00ce -> :sswitch_c
        0x7f0f00cf -> :sswitch_d
        0x7f0f00d0 -> :sswitch_a
        0x7f0f00d1 -> :sswitch_b
        0x7f0f00d2 -> :sswitch_5
        0x7f0f00ec -> :sswitch_e
        0x7f0f00ed -> :sswitch_f
        0x7f0f00f7 -> :sswitch_10
        0x7f0f00fb -> :sswitch_10
        0x7f0f00fc -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 5655
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5656
    const-string v0, "HDManualCtrlActivityTAG"

    const-string v1, "onconfiguration"

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5657
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/16 v6, 0x438

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 930
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 931
    invoke-virtual {p0, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->requestWindowFeature(I)Z

    .line 933
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 934
    .local v0, "windowParams":Landroid/view/WindowManager$LayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 937
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 938
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 939
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 940
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 941
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1000000

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 943
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getEditor()V

    .line 945
    const v1, 0x7f04001d

    invoke-virtual {p0, v1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setContentView(I)V

    .line 946
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 948
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/hfufo/rxdrone/MainApplication;

    sput-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    .line 953
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)V

    .line 954
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "online"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    .line 955
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hold"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isHold:Z

    .line 959
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initView()V

    .line 960
    invoke-direct {p0, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->visibleView(Z)V

    .line 961
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setTrim()V

    .line 963
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->registerBroadcast()V

    .line 966
    new-instance v1, Landroid/media/MediaScannerConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 968
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 991
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->m_handleVideoCodec:[I

    const/4 v2, -0x1

    aput v2, v1, v4

    .line 993
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    div-float/2addr v1, v2

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWidthRatio:F

    .line 994
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataHeight:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    div-float/2addr v1, v2

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHeightRatio:F

    .line 996
    sget-boolean v1, Lcom/hfufo/rxdrone/MainApplication;->isGuangJiao:Z

    if-eqz v1, :cond_2

    .line 997
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    sget-object v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v2, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cBodyWidth:F

    .line 998
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42480000    # 50.0f

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cPalmWidth:F

    .line 1003
    :goto_0
    const-string v1, "123456"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGuangJiao == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/hfufo/rxdrone/MainApplication;->isGuangJiao:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    div-float/2addr v1, v8

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pScreenWidth:F

    .line 1005
    const-string v1, "HDManualCtrlActivityTAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cBodyWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v3, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v3, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cPalmWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    div-float/2addr v1, v8

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initHeight:F

    .line 1011
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initFile()V

    .line 1013
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080027

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1015
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "workThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    .line 1016
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1017
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    .line 1019
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->visibleTip()V

    .line 1020
    invoke-direct {p0, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setSpeed(I)V

    .line 1021
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    const v2, 0x7f02009d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1022
    const/16 v1, -0x40

    iput-byte v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->channel1:B

    .line 1023
    const/16 v1, 0x40

    iput-byte v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->channel2:B

    .line 1024
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->tranRudderInit()V

    .line 1025
    sget v1, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    const/16 v2, 0x800

    if-ne v1, v2, :cond_3

    .line 1026
    sput-boolean v4, Lcom/hfufo/widget/RenderImageThread;->isRev:Z

    .line 1027
    const/16 v1, 0x800

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    .line 1028
    iput v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoHeight:I

    .line 1036
    :goto_1
    new-instance v1, Lorg/opencv/core/Mat;

    iget v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataHeight:I

    iget v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->dataWidth:I

    sget v4, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v1, v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(III)V

    iput-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mMatGray:Lorg/opencv/core/Mat;

    .line 1038
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-eqz v1, :cond_1

    .line 1039
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startGpsUdp()V

    .line 1041
    :cond_1
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initDecoder()V

    .line 1044
    return-void

    .line 1000
    :cond_2
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    sget-object v2, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v2, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cBodyWidth:F

    .line 1001
    sget-object v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->cPalmWidth:F

    goto/16 :goto_0

    .line 1029
    :cond_3
    sget v1, Lcom/hfufo/rxdrone/MainApplication;->VIDEO_SIZE:I

    if-ne v1, v6, :cond_4

    .line 1030
    const/16 v1, 0x780

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    .line 1031
    iput v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoHeight:I

    goto :goto_1

    .line 1033
    :cond_4
    const/16 v1, 0x500

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    .line 1034
    const/16 v1, 0x2d0

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoHeight:I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5810
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->closeGpsUdp()V

    .line 5811
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    if-eqz v0, :cond_0

    .line 5812
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->avcCodec:Lcom/hfufo/widget/AvcEncoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcEncoder;->StopThread()V

    .line 5815
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    if-eqz v0, :cond_1

    .line 5816
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    invoke-virtual {v0}, Lcom/task/VideoCapture;->destroy()V

    .line 5817
    iput-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    .line 5819
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isManual:Z

    if-nez v0, :cond_2

    .line 5820
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->motionView:Lcom/hfufo/widget/MotionView;

    invoke-virtual {v0}, Lcom/hfufo/widget/MotionView;->finishSensor()V

    .line 5822
    :cond_2
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicalSend:Z

    .line 5825
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    .line 5826
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcDecoder;->stopDecode()V

    .line 5827
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    .line 5828
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionFace:Z

    .line 5829
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    .line 5830
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    .line 5832
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isOnPause:Z

    .line 5833
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->closeRTS(I)V

    .line 5834
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->releasePlayer()V

    .line 5836
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->faceBodyThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    .line 5838
    :try_start_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->faceBodyThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 5839
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->faceBodyThreadExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5840
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->faceBodyThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5861
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 5862
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5863
    iput-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    .line 5865
    :cond_4
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 5866
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5867
    iput-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 5870
    :cond_5
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 5872
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5874
    :cond_6
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rcHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 5879
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rcHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5881
    :cond_7
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 5883
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5886
    :cond_8
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 5887
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5889
    :cond_9
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->release()V

    .line 5893
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 5894
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 5895
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5896
    iput-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    .line 5899
    :cond_a
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    if-eqz v0, :cond_b

    .line 5900
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    if-eqz v0, :cond_b

    .line 5901
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    invoke-virtual {v0}, Lcom/task/VideoRecord;->close()V

    .line 5902
    iput-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRecordVideo:Lcom/task/VideoRecord;

    .line 5905
    :cond_b
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->Recording:Z

    .line 5906
    iput-boolean v5, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->Recording1:Z

    .line 5908
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWf_netAPI:Lcom/wifi/WF_NetAPI;

    if-eqz v0, :cond_c

    .line 5909
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWf_netAPI:Lcom/wifi/WF_NetAPI;

    invoke-virtual {v0}, Lcom/wifi/WF_NetAPI;->WFNET_Uninit()V

    .line 5910
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->m_handleVideoCodec:[I

    invoke-static {v0}, Lcom/utility/WF_VCodec;->WFVC_Destroy([I)V

    .line 5911
    invoke-static {}, Lcom/utility/WF_VCodec;->WFVC_Uninit()V

    .line 5914
    :cond_c
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 5915
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 5917
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 5918
    return-void

    .line 5842
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onFailure()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 8178
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8179
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->canRecord:Z

    .line 8180
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->oldVideoUrl:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pushData(ZLjava/lang/String;)V

    .line 8181
    return-void
.end method

.method onHead(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00c2
        }
    .end annotation

    .prologue
    .line 6433
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 6452
    :goto_0
    return-void

    .line 6436
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->nohead:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->nohead:Z

    .line 6437
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->nohead:Z

    if-eqz v0, :cond_2

    .line 6438
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onhead:Landroid/widget/ImageView;

    const v1, 0x7f030030

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6439
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->nohead:Z

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->noHead(Z)V

    .line 6440
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->nohead:Z

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->noHead(Z)V

    .line 6442
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendControlCmd()V

    goto :goto_0

    .line 6436
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 6444
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onhead:Landroid/widget/ImageView;

    const v1, 0x7f03002f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6445
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->nohead:Z

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->noHead(Z)V

    .line 6446
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->nohead:Z

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->noHead(Z)V

    .line 6447
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendControlCmd()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 5730
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 5732
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5733
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i:I

    .line 5734
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->j:I

    .line 5736
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->classicalSend:Z

    .line 5738
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecordPrepared:Z

    if-eqz v0, :cond_1

    .line 5739
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stopLocalRecording()V

    .line 5740
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->waitting:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5744
    :cond_1
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isOnPause:Z

    .line 5745
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-nez v0, :cond_2

    .line 5746
    invoke-virtual {p0, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setMode(Landroid/view/View;)V

    .line 5748
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->closeRTS(I)V

    .line 5749
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    if-eqz v0, :cond_3

    .line 5750
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->realtimePlayerListener:Lcom/jieli/lib/dv/control/player/OnRealTimeListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    .line 5751
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->release()Z

    .line 5752
    iput-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    .line 5754
    :cond_3
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 5755
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    if-eqz v0, :cond_4

    .line 5756
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    invoke-virtual {v0}, Lcom/task/VideoCapture;->destroy()V

    .line 5757
    iput-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mVideoCapture:Lcom/task/VideoCapture;

    .line 5762
    :cond_4
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 5766
    :cond_5
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5768
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    .line 5769
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcDecoder;->stopDecode()V

    .line 5770
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    .line 5771
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    .line 5772
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    .line 5773
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5777
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5778
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5779
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    .line 5780
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setRightRoker(Z)V

    .line 5781
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setDrawLineEnable(Z)V

    .line 5782
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_drawline:Landroid/widget/ImageView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5784
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    if-eqz v0, :cond_7

    .line 5785
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    invoke-virtual {v0}, Lcom/task/MediaTask;->tryToStopTask()V

    .line 5786
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 5787
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5789
    :cond_6
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    invoke-virtual {v0}, Lcom/task/MediaTask;->release()V

    .line 5790
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    invoke-virtual {v0}, Lcom/task/MediaTask;->interrupt()V

    .line 5791
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    invoke-virtual {v0}, Lcom/task/MediaTask;->quit()Z

    .line 5792
    iput-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    .line 5794
    :cond_7
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->downloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5795
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->download_progress:Lcom/hfufo/widget/MyProgressBar;

    invoke-virtual {v0, v4}, Lcom/hfufo/widget/MyProgressBar;->setVisibility(I)V

    .line 5796
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 5797
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->thumRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5798
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->thumRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5800
    :cond_8
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRegistered:Z

    if-eqz v0, :cond_9

    .line 5802
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5803
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRegistered:Z

    .line 5805
    :cond_9
    return-void
.end method

.method public onProgress()V
    .locals 0

    .prologue
    .line 8186
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 3417
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 3418
    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 3419
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i_wifi_code:I

    .line 3420
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hRecTime:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3421
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hRecTime:Landroid/os/Handler;

    .line 3423
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hRecFlag:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 3424
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hRecFlag:Landroid/os/Handler;

    .line 3426
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rcHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 3427
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rcHandler:Landroid/os/Handler;

    .line 3429
    :cond_2
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 3430
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    .line 3432
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 3433
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    .line 3436
    :cond_4
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    invoke-direct {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->init(Z)V

    .line 3437
    iput v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i_wifi_code:I

    .line 3438
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->timeR:I

    .line 3439
    iput-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isSentOpenRtsCmd:Z

    .line 3440
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-eqz v0, :cond_5

    .line 3441
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    .line 3442
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcDecoder;->stopDecode()V

    .line 3443
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    .line 3444
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3446
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3458
    :cond_5
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    if-nez v0, :cond_9

    .line 3459
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showMode()V

    .line 3466
    :goto_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isOnPause:Z

    if-eqz v0, :cond_6

    .line 3468
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isOnPause:Z

    .line 3471
    :cond_6
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    invoke-virtual {v0}, Lcom/task/MediaTask;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3472
    :cond_7
    new-instance v0, Lcom/task/MediaTask;

    const-string v1, "photo_task"

    invoke-direct {v0, p0, v1}, Lcom/task/MediaTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    .line 3473
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/task/MediaTask;->setUIHandler(Landroid/os/Handler;)V

    .line 3474
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->photoTask:Lcom/task/MediaTask;

    invoke-virtual {v0}, Lcom/task/MediaTask;->start()V

    .line 3477
    :cond_8
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initComm()V

    .line 3478
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isHold:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setHold(Z)V

    .line 3479
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isHold:Z

    if-eqz v0, :cond_a

    .line 3480
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 3484
    :goto_1
    return-void

    .line 3461
    :cond_9
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showMode()V

    .line 3463
    invoke-direct {p0, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->visibleMusic(Z)V

    goto :goto_0

    .line 3482
    :cond_a
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const/16 v1, -0x80

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 2896
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 2900
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->registerBroadcast()V

    .line 2909
    const-string v0, "HDManualCtrlActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openrts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5713
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 5715
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->stopLocalRecording()V

    .line 5716
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setFollow(Z)V

    .line 5717
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setFollow(Z)V

    .line 5719
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionFace:Z

    .line 5720
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    .line 5721
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcDecoder;->stopDecode()V

    .line 5722
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    .line 5724
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "composeVideoUrl"    # Ljava/lang/String;
    .param p2, "outputVideoUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 8157
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8158
    iput-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->canRecord:Z

    .line 8159
    if-eqz p1, :cond_0

    .line 8161
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8162
    .local v0, "composeFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8163
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->oldVideoUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/Util/FileUtil;->deleteFileWithPath(Ljava/lang/String;)Z

    .line 8164
    invoke-direct {p0, v3, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pushData(ZLjava/lang/String;)V

    .line 8167
    .end local v0    # "composeFile":Ljava/io/File;
    :cond_0
    invoke-direct {p0, v3, p2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->pushData(ZLjava/lang/String;)V

    .line 8168
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 3488
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 3489
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0}, Lcom/hfufo/widget/RockerBgView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    .line 3490
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v0}, Lcom/hfufo/widget/RockerBgView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWheelRadius:I

    .line 3491
    const-string v0, "HDManualCtrlActivityTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFlyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rightRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v2}, Lcom/hfufo/widget/RockerBgView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->leftRudder_hide:Lcom/hfufo/widget/RockerBgView;

    invoke-virtual {v2}, Lcom/hfufo/widget/RockerBgView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3492
    return-void
.end method

.method openFix(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00c8
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6730
    const/16 v2, 0x320

    invoke-static {v2}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6732
    iget-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    if-eqz v2, :cond_0

    .line 6733
    invoke-virtual {p0, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->openPalmVideo(Landroid/view/View;)V

    .line 6735
    :cond_0
    iget-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    if-eqz v2, :cond_1

    .line 6736
    invoke-virtual {p0, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setPalmFollow(Landroid/view/View;)V

    .line 6738
    :cond_1
    iget-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-nez v2, :cond_3

    .line 6739
    const v0, 0x7f08006e

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 6754
    :cond_2
    :goto_0
    return-void

    .line 6743
    :cond_3
    iget-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    if-eqz v2, :cond_4

    .line 6744
    const v0, 0x7f0800d4

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6747
    :cond_4
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->closeRTS(I)V

    .line 6748
    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->timeR:I

    .line 6749
    iget-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->chooseFix:Z

    if-nez v2, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->chooseFix:Z

    .line 6750
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFrontCamera:Z

    .line 6752
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method openPalmVideo(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00cb
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6126
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_1

    .line 6168
    :cond_0
    :goto_0
    return-void

    .line 6129
    :cond_1
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v0, Lcom/hfufo/rxdrone/MainApplication;->STREAM_SIZE:I

    const/16 v3, 0x438

    if-ne v0, v3, :cond_2

    .line 6130
    const v0, 0x7f08007c

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6133
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    if-eqz v0, :cond_3

    .line 6134
    const v0, 0x7f0800e0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6137
    :cond_3
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 6139
    const v0, 0x7f08006f

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6142
    :cond_4
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    .line 6143
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v3, 0x7f03001f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6145
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    .line 6147
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    if-eqz v0, :cond_6

    .line 6148
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->candete:Z

    .line 6149
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setLines(Z)V

    .line 6151
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    const v1, 0x7f030021

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6153
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 6154
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    if-nez v0, :cond_0

    .line 6155
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startDecode()V

    .line 6156
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startDetectionHand()V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 6142
    goto :goto_1

    .line 6159
    :cond_6
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 6161
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6163
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    .line 6164
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcDecoder;->stopDecode()V

    .line 6166
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8432
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 8433
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8435
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 8436
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8438
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 8439
    return-void
.end method

.method retrun(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00c6
        }
    .end annotation

    .prologue
    .line 6030
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 6039
    :goto_0
    return-void

    .line 6033
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->rth()V

    .line 6035
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_return:Landroid/widget/ImageView;

    const v1, 0x7f030037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6037
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6038
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method rockercon(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00d6
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 6760
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    if-eqz v1, :cond_0

    .line 6761
    const v0, 0x7f0800da

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 6794
    :goto_0
    return-void

    .line 6764
    :cond_0
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionFace:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-nez v1, :cond_1

    .line 6766
    invoke-virtual {p0, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setMode(Landroid/view/View;)V

    .line 6767
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->return_control:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6768
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_menu:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6770
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6772
    :cond_1
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    if-eqz v1, :cond_2

    .line 6774
    invoke-virtual {p0, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setPalmFollow(Landroid/view/View;)V

    .line 6775
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->return_control:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6777
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_menu:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6778
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6782
    :cond_2
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    .line 6783
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    if-eqz v0, :cond_4

    .line 6784
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6785
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rcRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6786
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rokerOn()V

    goto :goto_0

    .line 6791
    :cond_4
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rokerOff()V

    goto :goto_0
.end method

.method public rokerOff()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 6830
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6835
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_stop:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6842
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim3:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 6843
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim4:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 6844
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ll_trim:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6846
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideFlyMode()V

    .line 6847
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    const v1, 0x7f03009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6850
    return-void
.end method

.method public rokerOn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6798
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6803
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_stop:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6807
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->isExistRearView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6808
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ll_trim:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6809
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim1:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 6810
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim2:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 6811
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->trim3:Lcom/hfufo/widget/MicroTrimView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/MicroTrimView;->setVisibility(I)V

    .line 6818
    :cond_0
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showFlyMode()V

    .line 6819
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_rockercon:Landroid/widget/ImageView;

    const v1, 0x7f03009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6821
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualView:Lcom/hfufo/widget/ManualView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isHold:Z

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/ManualView;->setHold(Z)V

    .line 6822
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isHold:Z

    if-eqz v0, :cond_1

    .line 6823
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    .line 6827
    :goto_0
    return-void

    .line 6825
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    const/16 v1, -0x80

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setChannel3(B)V

    goto :goto_0
.end method

.method roll(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00b7
        }
    .end annotation

    .prologue
    .line 6018
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 6026
    :goto_0
    return-void

    .line 6021
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->roll()V

    .line 6022
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0}, Lcom/fh/util/ProtocolOfQuanzhi;->roll()V

    .line 6024
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rollView:Landroid/widget/ImageView;

    const v1, 0x7f030026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6025
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public saveSVideo()V
    .locals 2

    .prologue
    .line 4029
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->Recording1:Z

    if-nez v0, :cond_0

    .line 4030
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runnable_scale_video:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4034
    :cond_0
    return-void
.end method

.method public saveVideo()V
    .locals 2

    .prologue
    .line 4021
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->Recording:Z

    if-nez v0, :cond_0

    .line 4022
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->runnable_save_video:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4026
    :cond_0
    return-void
.end method

.method public sendCommandToService(I)V
    .locals 3
    .param p1, "cmd"    # I

    .prologue
    .line 7416
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7417
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->KEY_SERVICE_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7419
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/MainApplication;->sendToService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 7420
    return-void
.end method

.method public sendCommandToService(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 7423
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hfufo/service/hdservice/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7424
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "service_command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7425
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7426
    const-string v1, "connect_ip"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7428
    :cond_0
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hfufo/rxdrone/MainApplication;->sendToService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 7430
    return-void
.end method

.method setMenu(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00bf
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 6458
    const-string v1, "\u8fde\u63a5test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConnected - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/fh/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6460
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-nez v1, :cond_0

    .line 6461
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->menuShow:Z

    .line 6477
    :goto_0
    return-void

    .line 6464
    :cond_0
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->menuShow:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->menuShow:Z

    .line 6467
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->menuShow:Z

    if-eqz v0, :cond_2

    .line 6468
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showMenu()V

    goto :goto_0

    .line 6470
    :cond_2
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideMenu()V

    goto :goto_0
.end method

.method setMode(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00d8
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 6567
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v0, Lcom/hfufo/rxdrone/MainApplication;->STREAM_SIZE:I

    const/16 v2, 0x438

    if-ne v0, v2, :cond_1

    .line 6568
    const v0, 0x7f08007c

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 6690
    :cond_0
    :goto_0
    return-void

    .line 6571
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    if-eqz v0, :cond_2

    .line 6572
    const v0, 0x7f0800e0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6575
    :cond_2
    const-string v0, "HDManualCtrlActivityTAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLeftWheelPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fh/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6577
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    if-eqz v0, :cond_3

    .line 6578
    const v0, 0x7f0800d4

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6582
    :cond_3
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 6584
    const v0, 0x7f08006f

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6588
    :cond_4
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    if-eqz v0, :cond_5

    .line 6590
    const v0, 0x7f080066

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6593
    :cond_5
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    if-eqz v0, :cond_6

    .line 6594
    invoke-virtual {p0, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setPalmFollow(Landroid/view/View;)V

    .line 6596
    :cond_6
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    if-eqz v0, :cond_7

    .line 6597
    invoke-virtual {p0, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->openPalmVideo(Landroid/view/View;)V

    .line 6600
    :cond_7
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6601
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    .line 6603
    const-string v0, "R"

    iput-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->colorG:Ljava/lang/String;

    .line 6604
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-eqz v0, :cond_9

    .line 6605
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 6606
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6607
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_stop:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6608
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6611
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setFollow(Z)V

    .line 6612
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setFollow(Z)V

    .line 6613
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionFace:Z

    .line 6614
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    .line 6615
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcDecoder;->stopDecode()V

    .line 6617
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    .line 6618
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    .line 6619
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    .line 6620
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showFlyMode()V

    .line 6621
    invoke-virtual {p0, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initOpencvMode(I)V

    .line 6624
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    const v1, 0x7f03002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6626
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6630
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 6601
    goto :goto_1

    .line 6633
    :cond_9
    new-instance v0, Lcom/hfufo/dialog/MasterHelpDialog;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$46;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/hfufo/dialog/MasterHelpDialog;-><init>(Landroid/app/Activity;Lcom/hfufo/dialog/MasterHelpDialog$DeleteDialogListener;)V

    .line 6682
    invoke-virtual {v0}, Lcom/hfufo/dialog/MasterHelpDialog;->show()V

    goto/16 :goto_0
.end method

.method setPalmFollow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00c7
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6174
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_1

    .line 6238
    :cond_0
    :goto_0
    return-void

    .line 6177
    :cond_1
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v0, Lcom/hfufo/rxdrone/MainApplication;->STREAM_SIZE:I

    const/16 v3, 0x438

    if-ne v0, v3, :cond_2

    .line 6178
    const v0, 0x7f08007c

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6181
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->drawline:Z

    if-eqz v0, :cond_3

    .line 6183
    const v0, 0x7f080066

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6186
    :cond_3
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    if-eqz v0, :cond_4

    .line 6187
    const v0, 0x7f0800e0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6190
    :cond_4
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    if-eqz v0, :cond_5

    .line 6191
    const v0, 0x7f0800d4

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6194
    :cond_5
    sget-object v0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Lcom/hfufo/rxdrone/MainApplication;->getDeviceSettingInfo()Lcom/hfufo/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hfufo/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 6196
    const v0, 0x7f08006f

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 6199
    :cond_6
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    const v3, 0x7f030020

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6201
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    .line 6202
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRoker:Z

    if-eqz v0, :cond_7

    .line 6203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rockercon(Landroid/view/View;)V

    .line 6205
    :cond_7
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    .line 6206
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    if-eqz v0, :cond_a

    .line 6210
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setPalmFollow(Z)V

    .line 6211
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setPalmFollow(Z)V

    .line 6213
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/RectView;->setLines(Z)V

    .line 6214
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v1, 0x7f030022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6215
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 6216
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    if-nez v0, :cond_8

    .line 6217
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startDecode()V

    .line 6218
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startDetectionHand()V

    .line 6220
    :cond_8
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->resetRS()V

    .line 6221
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isShowPtz:Z

    if-eqz v0, :cond_0

    .line 6222
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showPtz()V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 6205
    goto :goto_1

    .line 6229
    :cond_a
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setPalmFollow(Z)V

    .line 6230
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v2}, Lcom/fh/util/ProtocolOfQuanzhi;->setPalmFollow(Z)V

    .line 6232
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 6233
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6234
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    .line 6235
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcDecoder;->stopDecode()V

    .line 6236
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    goto/16 :goto_0
.end method

.method public showMode()V
    .locals 4

    .prologue
    const v3, 0x7f08007e

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 7729
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flightMode:Z

    if-eqz v0, :cond_0

    .line 7731
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v2}, Lcom/fh/util/Protocol1;->setFollow(Z)V

    .line 7732
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v2}, Lcom/fh/util/ProtocolOfQuanzhi;->setFollow(Z)V

    .line 7733
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    .line 7734
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcDecoder;->stopDecode()V

    .line 7735
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionFace:Z

    .line 7736
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    .line 7737
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    .line 7738
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    .line 7742
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 7744
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initOpencvMode(I)V

    .line 7745
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    const v1, 0x7f03002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7747
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 7748
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7749
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->manualViewInit()V

    .line 7782
    :goto_0
    return-void

    .line 7756
    :cond_0
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->menuShow:Z

    .line 7757
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideMenu()V

    .line 7758
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hideFlyMode()V

    .line 7760
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/RectView;->setLines(Z)V

    .line 7761
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_music:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7762
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7763
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palmVideo:Z

    .line 7764
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->decodecRunning:Z

    .line 7765
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mAvcDecoder:Lcom/hfufo/widget/AvcDecoder;

    invoke-virtual {v0}, Lcom/hfufo/widget/AvcDecoder;->stopDecode()V

    .line 7766
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mDetectionHand:Z

    .line 7767
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followFaceMode:Z

    .line 7768
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mode_layout:Landroid/widget/ImageView;

    const v1, 0x7f030031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7769
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->modeText:Landroid/widget/TextView;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7770
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->onText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 7771
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->initOpencvMode(I)V

    .line 7772
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7773
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startDecode()V

    .line 7774
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->startDetectionFace()V

    goto :goto_0
.end method

.method speed(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00d3
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 7123
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->speed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->speed:I

    .line 7124
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->speed:I

    if-nez v0, :cond_1

    .line 7125
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7126
    invoke-direct {p0, v3}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setSpeed(I)V

    .line 7127
    const/16 v0, -0x5b

    iput-byte v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->channel1:B

    .line 7128
    const/16 v0, 0x55

    iput-byte v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->channel2:B

    .line 7141
    :cond_0
    :goto_0
    return-void

    .line 7129
    :cond_1
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->speed:I

    if-ne v0, v4, :cond_2

    .line 7130
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7131
    invoke-direct {p0, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setSpeed(I)V

    .line 7132
    const/16 v0, -0x40

    iput-byte v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->channel1:B

    .line 7133
    const/16 v0, 0x40

    iput-byte v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->channel2:B

    goto :goto_0

    .line 7134
    :cond_2
    iget v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->speed:I

    if-ne v0, v5, :cond_0

    .line 7135
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->btn_speed:Landroid/widget/ImageView;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7136
    invoke-direct {p0, v5}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setSpeed(I)V

    .line 7137
    iput v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->speed:I

    .line 7138
    iput-byte v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->channel1:B

    .line 7139
    iput-byte v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->channel2:B

    goto :goto_0
.end method

.method public status(Ljava/lang/String;)V
    .locals 3
    .param p1, "_status"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 7245
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 7246
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7247
    const-string v1, "connect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7248
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isStarted:Z

    if-eqz v1, :cond_1

    .line 7249
    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i_wifi_code:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i_wifi_code:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 7251
    const/16 v1, 0xf1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7252
    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->workHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7253
    const/4 v1, -0x1

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i_wifi_code:I

    .line 7275
    :cond_0
    :goto_0
    return-void

    .line 7256
    :cond_1
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isStarted:Z

    goto :goto_0

    .line 7258
    :cond_2
    const-string v1, "disconnect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7259
    const/4 v1, 0x5

    iput v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->i_wifi_code:I

    .line 7261
    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isStarted:Z

    if-nez v1, :cond_0

    .line 7264
    iput-boolean v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isStarted:Z

    goto :goto_0
.end method

.method stop(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00e4
        }
    .end annotation

    .prologue
    .line 6948
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 6959
    :goto_0
    return-void

    .line 6951
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0}, Lcom/fh/util/Protocol1;->stop()V

    .line 6952
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0}, Lcom/fh/util/ProtocolOfQuanzhi;->stop()V

    .line 6954
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendControlCmd()V

    .line 6955
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_takeoff:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6956
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyText:Landroid/widget/TextView;

    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6957
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_land:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6958
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method switchCamera(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00ca
        }
    .end annotation

    .prologue
    const v1, 0x7f08006e

    .line 5928
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-nez v0, :cond_1

    .line 5929
    invoke-static {v1}, Lcom/fh/util/ToastUtils;->show(I)V

    .line 5950
    :cond_0
    :goto_0
    return-void

    .line 5932
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    if-eqz v0, :cond_2

    .line 5933
    invoke-static {v1}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 5936
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-eqz v0, :cond_0

    .line 5939
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hd_ac:Landroid/widget/RelativeLayout;

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 5942
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5944
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 5945
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->open_palmVideo:Landroid/widget/ImageView;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5947
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->palm_follow:Landroid/widget/ImageView;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5948
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera()V

    goto :goto_0
.end method

.method switchCamera2(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00b6
        }
    .end annotation

    .prologue
    .line 5923
    invoke-virtual {p0, p1}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->switchCamera(Landroid/view/View;)V

    .line 5924
    return-void
.end method

.method takePhoto(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00d4
        }
    .end annotation

    .prologue
    const/16 v1, 0xa01

    .line 7025
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_1

    .line 7116
    :cond_0
    :goto_0
    return-void

    .line 7028
    :cond_1
    const/16 v0, 0x5dc

    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7032
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isMVMode:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/hfufo/rxdrone/MainApplication;->hasReadPixel:Z

    if-eqz v0, :cond_3

    .line 7033
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRecording:Z

    if-eqz v0, :cond_2

    .line 7034
    const-string v0, "Recording"

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7037
    :cond_2
    const-string v0, "Taking..."

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 7038
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v1}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v2}, Lcom/hfufo/widget/IjkVideoView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoWidth:I

    iget v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hfufo/widget/IjkVideoView;->setVideoSize(IIII)V

    .line 7039
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    new-instance v1, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;

    invoke-direct {v1, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$48;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hfufo/widget/IjkVideoView;->setRecordCallback(Lcom/hfufo/widget/media/VideoTextureRenderer$RecordingCallback;Z)V

    .line 7106
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->take()V

    goto :goto_0

    .line 7108
    :cond_3
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 7109
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7110
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7111
    new-instance v0, Lcom/fh/util/ShootSoundTask;

    invoke-direct {v0, p0}, Lcom/fh/util/ShootSoundTask;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/fh/util/ShootSoundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method takeVideo(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00d5
        }
    .end annotation

    .prologue
    const/16 v1, 0xa00

    .line 6983
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_1

    .line 7001
    :cond_0
    :goto_0
    return-void

    .line 6991
    :cond_1
    const/16 v0, 0x5dc

    invoke-static {v0}, Lcom/fh/hdutil/AppUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6994
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6995
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6996
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method takeoff(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00df
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 6522
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 6540
    :goto_0
    return-void

    .line 6525
    :cond_0
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->canLand:Z

    .line 6530
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocol1:Lcom/fh/util/Protocol1;

    invoke-virtual {v0, v1}, Lcom/fh/util/Protocol1;->setOneKeyFly(Z)V

    .line 6531
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->protocolHuiYuan:Lcom/fh/util/ProtocolOfQuanzhi;

    invoke-virtual {v0, v1}, Lcom/fh/util/ProtocolOfQuanzhi;->setOneKeyFly(Z)V

    .line 6533
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->sendControlCmd()V

    .line 6535
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_takeoff:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6536
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->con_land:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6537
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyText:Landroid/widget/TextView;

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6538
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6539
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->holdRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public viewInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5311
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->iMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setMediaController(Lcom/hfufo/widget/media/IMediaController;)V

    .line 5312
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    if-eqz v0, :cond_1

    .line 5313
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/IjkVideoView;->setAspectRatio(I)V

    .line 5317
    :goto_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->flyMode:Z

    if-nez v0, :cond_0

    .line 5318
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/RectView;->setVisibility(I)V

    .line 5320
    :cond_0
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->rl_rec_time:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5321
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    iget-object v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->iMediaController:Lcom/hfufo/widget/media/IMediaController;

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setMediaController(Lcom/hfufo/widget/media/IMediaController;)V

    .line 5322
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/IjkVideoView;->setAspectRatio(I)V

    .line 5324
    return-void

    .line 5315
    :cond_1
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setAspectRatio(I)V

    goto :goto_0
.end method

.method vr(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0f00c3
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 5956
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    if-nez v0, :cond_0

    .line 6014
    :goto_0
    return-void

    .line 5959
    :cond_0
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isFix:Z

    if-eqz v0, :cond_1

    .line 5960
    const v0, 0x7f0800e0

    invoke-static {v0}, Lcom/fh/util/ToastUtils;->show(I)V

    goto :goto_0

    .line 5963
    :cond_1
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->followPalm:Z

    if-eqz v0, :cond_2

    .line 5964
    invoke-virtual {p0, v6}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->setPalmFollow(Landroid/view/View;)V

    .line 5967
    :cond_2
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    .line 5968
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    if-eqz v0, :cond_5

    .line 5969
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->video_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 5970
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v6}, Lcom/hfufo/widget/IjkVideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5971
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v6}, Lcom/hfufo/widget/IjkVideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5972
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    iget-object v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v3}, Lcom/hfufo/widget/IjkVideoView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v4}, Lcom/hfufo/widget/IjkVideoView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/hfufo/widget/IjkVideoView;->setGLSize(II)V

    .line 5974
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    iget-boolean v3, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    sget-object v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v4, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sget-object v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v5, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    invoke-virtual {v0, v3, v4, v5}, Lcom/hfufo/widget/RectView;->setVR(ZLjava/lang/Float;F)V

    .line 5975
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/IjkVideoView;->setVisibility(I)V

    .line 5976
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->getRenderView()Lcom/hfufo/widget/media/IRenderView;

    move-result-object v0

    invoke-interface {v0}, Lcom/hfufo/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5977
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/IjkVideoView;->setAspectRatio(I)V

    .line 5978
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/IjkVideoView;->setAspectRatio(I)V

    .line 5982
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->invalidate()V

    .line 5983
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->invalidate()V

    .line 5984
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->hd_ac:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5985
    iput-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isRev:Z

    .line 5986
    const/4 v0, 0x0

    iput v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->videoAngle:F

    .line 5988
    iget-boolean v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isShowPtz:Z

    if-eqz v0, :cond_3

    .line 5989
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->showPtz()V

    .line 5991
    :cond_3
    invoke-direct {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->resetRS()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 5967
    goto/16 :goto_1

    .line 5995
    :cond_5
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->video_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0074

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 5996
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    sget v1, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    float-to-int v1, v1

    sget v3, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/hfufo/widget/IjkVideoView;->setGLSize(II)V

    .line 5999
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mRectView:Lcom/hfufo/widget/RectView;

    iget-boolean v1, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->isVr:Z

    sget-object v3, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v3, Lcom/hfufo/rxdrone/MainApplication;->screenWidth:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    sget v4, Lcom/hfufo/rxdrone/MainApplication;->screenHeight:F

    invoke-virtual {v0, v1, v3, v4}, Lcom/hfufo/widget/RectView;->setVR(ZLjava/lang/Float;F)V

    .line 6000
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v5}, Lcom/hfufo/widget/IjkVideoView;->setVisibility(I)V

    .line 6001
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->getRenderView()Lcom/hfufo/widget/media/IRenderView;

    move-result-object v0

    invoke-interface {v0}, Lcom/hfufo/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6002
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0, v2}, Lcom/hfufo/widget/IjkVideoView;->setAspectRatio(I)V

    .line 6003
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/hfufo/widget/IjkVideoView;->setAspectRatio(I)V

    .line 6007
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->invalidate()V

    .line 6008
    iget-object v0, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mStreamView1:Lcom/hfufo/widget/IjkVideoView;

    invoke-virtual {v0}, Lcom/hfufo/widget/IjkVideoView;->invalidate()V

    .line 6009
    invoke-direct {p0, v2}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->visibleView(Z)V

    goto/16 :goto_0
.end method

.method public wifi_scan()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 7320
    const-string v4, "unknow"

    iput-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->news:Ljava/lang/String;

    .line 7321
    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getApplicationContext()Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 7323
    .local v3, "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 7325
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_2

    .line 7326
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 7327
    .local v2, "ssid":Ljava/lang/String;
    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->news:Ljava/lang/String;

    .line 7329
    const-string v4, "location"

    invoke-virtual {p0, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 7330
    .local v1, "locManager":Landroid/location/LocationManager;
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->news:Ljava/lang/String;

    const-string v5, "unknow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "gps"

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7333
    :cond_0
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->news:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->ishd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7334
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    .line 7337
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->connectDevice(Ljava/lang/String;)V

    .line 7338
    iget-boolean v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    invoke-direct {p0, v4}, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->init(Z)V

    .line 7339
    iget-object v4, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/hfufo/rxdrone/HDManualCtrlActivity$53;

    invoke-direct {v5, p0}, Lcom/hfufo/rxdrone/HDManualCtrlActivity$53;-><init>(Lcom/hfufo/rxdrone/HDManualCtrlActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7358
    .end local v1    # "locManager":Landroid/location/LocationManager;
    .end local v2    # "ssid":Ljava/lang/String;
    :goto_0
    return-void

    .line 7350
    .restart local v1    # "locManager":Landroid/location/LocationManager;
    .restart local v2    # "ssid":Ljava/lang/String;
    :cond_1
    iput-boolean v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    goto :goto_0

    .line 7355
    .end local v1    # "locManager":Landroid/location/LocationManager;
    .end local v2    # "ssid":Ljava/lang/String;
    :cond_2
    iput-boolean v6, p0, Lcom/hfufo/rxdrone/HDManualCtrlActivity;->online:Z

    goto :goto_0
.end method
