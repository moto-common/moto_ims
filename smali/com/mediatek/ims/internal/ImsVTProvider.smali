.class public Lcom/mediatek/ims/internal/ImsVTProvider;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVTProvider.java"

# interfaces
.implements Lcom/mediatek/ims/internal/VTSource$EventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx;,
        Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    }
.end annotation


# static fields
.field public static final EARLY_MEDIA_START:I = 0x1

.field public static final EARLY_MEDIA_STOP:I = 0x0

.field public static final MODE_PAUSE_BY_HOLD:I = 0x2

.field public static final MODE_PAUSE_BY_NORMAL:I = 0x1

.field protected static final MSG_RECEIVE_CALL_SESSION_EVENT:I = 0x2c2

.field protected static final MSG_REQTIMEOUT_AUTOREJECT:I = 0x2c4

.field protected static final MSG_REQUEST_CALL_DATA_USAGE:I = 0xa

.field protected static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field protected static final MSG_RESET_WRAPPER:I = 0x2c0

.field protected static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field protected static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field protected static final MSG_SET_CALLBACK:I = 0x1

.field protected static final MSG_SET_CAMERA:I = 0x2

.field protected static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field protected static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field protected static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field protected static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field protected static final MSG_SET_UI_MODE:I = 0x2bd

.field protected static final MSG_SET_ZOOM:I = 0x6

.field protected static final MSG_SWITCH_FEATURE:I = 0x2be

.field protected static final MSG_SWITCH_ROAMING:I = 0x2bf

.field protected static final MSG_UPDATE_CALL_RAT:I = 0x2c3

.field protected static final MSG_UPDATE_PROFILE:I = 0x2c1

.field public static final MTK_VILTE_ROTATE_DELAY:Ljava/lang/String; = "persist.vendor.vt.rotate_delay"

.field public static final REPLACE_PICTURE_PATH:Landroid/net/Uri;

.field public static final SESSION_EVENT_BAD_DATA_BITRATE:I = 0xfa8

.field public static final SESSION_EVENT_CALL_ABNORMAL_END:I = 0x3f1

.field public static final SESSION_EVENT_CALL_END:I = 0x3f0

.field public static final SESSION_EVENT_CAM_CAP_CHANGED:I = 0xfa7

.field public static final SESSION_EVENT_DATA_BITRATE_RECOVER:I = 0xfa9

.field public static final SESSION_EVENT_DATA_PATH_PAUSE:I = 0xfab

.field public static final SESSION_EVENT_DATA_PATH_RESUME:I = 0xfac

.field public static final SESSION_EVENT_DATA_USAGE_CHANGED:I = 0xfa6

.field public static final SESSION_EVENT_DEFAULT_LOCAL_SIZE:I = 0xfad

.field public static final SESSION_EVENT_DOWNGRADE_TO_VOICE:I = 0xfb9

.field public static final SESSION_EVENT_ERROR_BIND_PORT:I = 0x1f47

.field public static final SESSION_EVENT_ERROR_CAMERA_CRASHED:I = 0x1f43

.field public static final SESSION_EVENT_ERROR_CAMERA_SET_IGNORED:I = 0x1f46

.field public static final SESSION_EVENT_ERROR_CODEC:I = 0x1f44

.field public static final SESSION_EVENT_ERROR_REC:I = 0x1f45

.field public static final SESSION_EVENT_ERROR_SERVER_DIED:I = 0x1f42

.field public static final SESSION_EVENT_ERROR_SERVICE:I = 0x1f41

.field public static final SESSION_EVENT_GET_CAP:I = 0xfae

.field public static final SESSION_EVENT_GET_CAP_WITH_SIM:I = 0xfb3

.field public static final SESSION_EVENT_GET_SENSOR_INFO:I = 0xfb2

.field public static final SESSION_EVENT_HANDLE_CALL_SESSION_EVT:I = 0xfa3

.field public static final SESSION_EVENT_LOCAL_BUFFER:I = 0xfaf

.field public static final SESSION_EVENT_LOCAL_BW_READY_IND:I = 0x3f5

.field public static final SESSION_EVENT_LOCAL_SIZE_CHANGED:I = 0xfa5

.field public static final SESSION_EVENT_PACKET_LOSS_RATE:I = 0xfb4

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_HIGH:I = 0xfb5

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_LOW:I = 0xfb7

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_MEDIUM:I = 0xfb6

.field public static final SESSION_EVENT_PAUSE_IMAGE_BUFFER:I = 0xfb8

.field public static final SESSION_EVENT_PEER_CAMERA_CLOSE:I = 0x3f4

.field public static final SESSION_EVENT_PEER_CAMERA_OPEN:I = 0x3f3

.field public static final SESSION_EVENT_PEER_SIZE_CHANGED:I = 0xfa4

.field public static final SESSION_EVENT_RECEIVE_FIRSTFRAME:I = 0x3e9

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE:I = 0x3ef

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME:I = 0x3ee

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION:I = 0x3ec

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE:I = 0x3ed

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN:I = 0x3eb

.field public static final SESSION_EVENT_RECV_ENHANCE_SESSION_IND:I = 0xfaa

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_REQ:I = 0xfa1

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_RSP:I = 0xfa2

.field public static final SESSION_EVENT_RESTART_CAMERA:I = 0xfb1

.field public static final SESSION_EVENT_SNAPSHOT_DONE:I = 0x3ea

.field public static final SESSION_EVENT_START_COUNTER:I = 0x3f2

.field public static final SESSION_EVENT_UPLINK_STATE_CHANGE:I = 0xfb0

.field public static final SESSION_EVENT_WARNING_SERVICE_NOT_READY:I = 0x2329

.field public static final SESSION_INDICATION_CANCEL:I = 0x0

.field public static final SESSION_INDICATION_EARLY_MEDIA:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_APP:I = 0x0

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_BAD_BITRATE:I = 0x4

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_DATA_OFF:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_DO_IMMEDIATELY:I = 0x4

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_MA_CRASH:I = 0x3

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_REJECT:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_REJECT_PREVIOUS:I = 0x2

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_ROAMINGG:I = 0x2

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_SKIP:I = 0x3

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_WAIT:I = 0x0

.field public static final SESSION_MODIFY_CANCELED:I = 0xb

.field public static final SESSION_MODIFY_CANCEL_FAILED_BW:I = 0x7

.field public static final SESSION_MODIFY_CANCEL_FAILED_DISABLE:I = 0x3

.field public static final SESSION_MODIFY_CANCEL_FAILED_DOWNGRADE:I = 0x1

.field public static final SESSION_MODIFY_CANCEL_FAILED_INTERNAL:I = 0x5

.field public static final SESSION_MODIFY_CANCEL_FAILED_LOCAL:I = 0x6

.field public static final SESSION_MODIFY_CANCEL_FAILED_NORMAL:I = 0x2

.field public static final SESSION_MODIFY_CANCEL_FAILED_REMOTE:I = 0x4

.field public static final SESSION_MODIFY_CANCEL_FAILED_TIMEOUT:I = 0x8

.field public static final SESSION_MODIFY_CANCEL_OK:I = 0x0

.field public static final SESSION_MODIFY_INTERNALERROR:I = 0x2

.field public static final SESSION_MODIFY_INVALIDPARA:I = 0x8

.field public static final SESSION_MODIFY_INVIDEOACTION:I = 0xc

.field public static final SESSION_MODIFY_ISHOLD:I = 0x6

.field public static final SESSION_MODIFY_ISREINVITE:I = 0xd

.field public static final SESSION_MODIFY_LOCALREL:I = 0x5

.field public static final SESSION_MODIFY_NOACTIVESTATE:I = 0x4

.field public static final SESSION_MODIFY_NONEED:I = 0x7

.field public static final SESSION_MODIFY_OK:I = 0x0

.field public static final SESSION_MODIFY_REJECTBYREMOTE:I = 0xa

.field public static final SESSION_MODIFY_REQTIMEOUT:I = 0x9

.field public static final SESSION_MODIFY_RESULT_BW_MODIFYFAILED:I = 0x3

.field public static final SESSION_MODIFY_WRONGVIDEODIR:I = 0x1

.field static final TAG:Ljava/lang/String; = "ImsVT"

.field public static final UPLINK_STATE_PAUSE_RECORDING:I = 0x2

.field public static final UPLINK_STATE_RESUME_RECORDING:I = 0x3

.field public static final UPLINK_STATE_START_RECORDING:I = 0x1

.field public static final UPLINK_STATE_STOP_RECORDING:I = 0x0

.field public static final UPLINK_STATE_STOP_RECORDING_PREVIEW:I = 0x4

.field public static final VTP_STATE_DATA_OFF:I = 0x1

.field public static final VTP_STATE_MA_CRASH:I = 0x4

.field public static final VTP_STATE_NORMAL:I = 0x0

.field public static final VTP_STATE_ROAMING:I = 0x2

.field public static final VT_PROVIDER_INVALIDE_ID:I = -0x2710

.field protected static mDefaultId:I

.field public static mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# instance fields
.field private mCallConnected:Z

.field protected mCallRat:I

.field protected mCameraId:Ljava/lang/String;

.field protected mCurrentProfile:Landroid/telecom/VideoProfile;

.field protected mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

.field public mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

.field protected mDuringEarlyMedia:Z

.field protected mDuringSessionRemoteRequestOperation:Z

.field protected mDuringSessionRequestOperation:Z

.field public mHasRequestCamCap:Z

.field protected mId:I

.field private mInPauseImage:Z

.field protected mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

.field public mInitComplete:Z

.field protected mIsAudioCall:Z

.field protected mIsDataOff:Z

.field private mIsDestroying:Z

.field protected mIsDuringResetMode:Z

.field protected mIsMaCrashed:Z

.field protected mIsRoaming:Z

.field protected mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

.field protected final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mMode:I

.field private mModificationCause:I

.field protected mOrientation:I

.field protected mOrientationRunnable:Ljava/lang/Runnable;

.field private mOriginalDisplaySurface:Landroid/view/Surface;

.field private mOriginalPreviewSurface:Landroid/view/Surface;

.field protected mPauseMode:I

.field protected mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

.field protected final mProviderHandler:Landroid/os/Handler;

.field protected mProviderHandlerThread:Landroid/os/HandlerThread;

.field protected mSessionOperationFlagLock:Ljava/lang/Object;

.field protected mSimId:I

.field public mSource:Lcom/mediatek/ims/internal/VTSource;

.field protected mState:I

.field protected mUplinkState:I

.field public mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOnByPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "mtk_vt_wrapper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 259
    :cond_0
    const-string v0, "content://PATH"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->REPLACE_PICTURE_PATH:Landroid/net/Uri;

    .line 301
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 304
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 384
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 298
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 299
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 300
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 302
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 310
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    .line 311
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    .line 312
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringEarlyMedia:Z

    .line 313
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    .line 314
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    .line 318
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    .line 321
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    .line 324
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    .line 327
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    .line 330
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    .line 331
    new-instance v3, Lcom/mediatek/ims/internal/VTDummySource;

    invoke-direct {v3}, Lcom/mediatek/ims/internal/VTDummySource;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

    .line 332
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    .line 333
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 336
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    .line 337
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    .line 339
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    const/16 v4, 0x140

    const/16 v5, 0xf0

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    .line 340
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    .line 341
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    .line 343
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    .line 348
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 351
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 354
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInPauseImage:Z

    .line 356
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalDisplaySurface:Landroid/view/Surface;

    .line 357
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalPreviewSurface:Landroid/view/Surface;

    .line 360
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x8

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v3, v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    .line 376
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    .line 377
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    .line 379
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    .line 381
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mModificationCause:I

    .line 385
    const-string v0, "ImsVT"

    const-string v2, "New ImsVTProvider without id"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/16 v0, -0x2710

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 387
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 389
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 391
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsVTUsageManager()Lcom/mediatek/ims/internal/ImsVTUsageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    .line 393
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProviderHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    .line 394
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 396
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$1;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider$1;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    .line 514
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProvider$2;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    .line 522
    return-void
.end method

.method private isOP07()Z
    .locals 2

    .line 2078
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    return v0
.end method

.method private isOP08()Z
    .locals 2

    .line 2074
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    return v0
.end method

.method public static native nFinalization(I)I
.end method

.method public static native nInitRefVTP()I
.end method

.method public static native nInitialization(II)I
.end method

.method public static native nRequestPeerConfig(ILjava/lang/String;)I
.end method

.method public static native nResponseLocalConfig(ILjava/lang/String;)I
.end method

.method public static native nSetCamera(II)I
.end method

.method public static native nSetCameraParameters(I[Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetCameraParametersOnly([Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetCameraParametersWithSim(II[Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetDeviceOrientation(II)I
.end method

.method public static native nSetDisplaySurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetPreviewSurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetUIMode(II)I
.end method

.method public static native nSnapshot(IILjava/lang/String;)I
.end method

.method public static native nStartRecording(IILjava/lang/String;J)I
.end method

.method public static native nStopRecording(I)I
.end method

.method public static native nSwitchFeature(III)I
.end method

.method public static native nTagSocketWithUid(I)I
.end method

.method public static native nTriggerGetOperatorId()I
.end method

.method public static native nUpdateNetworkTable(ZILjava/lang/String;)I
.end method

.method public static postEventFromNative(IIIIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16
    .param p0, "msg"    # I
    .param p1, "id"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "obj1"    # Ljava/lang/Object;
    .param p6, "obj2"    # Ljava/lang/Object;
    .param p7, "obj3"    # Ljava/lang/Object;

    .line 2104
    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v5

    .line 2106
    .local v5, "vp":Lcom/mediatek/ims/internal/ImsVTProvider;
    const-string v6, "ImsVT"

    if-nez v5, :cond_0

    const/16 v0, 0x1f42

    if-eq v1, v0, :cond_0

    const/16 v0, 0xfae

    if-eq v1, v0, :cond_0

    const/16 v0, 0xfb3

    if-eq v1, v0, :cond_0

    .line 2110
    const-string v0, "Error: post event to Call is already release or has happen error before!"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    return-void

    .line 2114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ID="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] [postEventFromNative]: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    const/4 v0, 0x3

    const/high16 v8, 0x10000

    const-string v9, "Error: sensor resolution = NULL"

    const/16 v10, 0x2c4

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 2811
    const-string v0, "postEventFromNative : msg = UNKNOWB"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2756
    :sswitch_0
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_ERROR_BIND_PORT"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 2759
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2760
    goto/16 :goto_e

    .line 2775
    :sswitch_1
    const-string v0, "postEventFromNative : msg = MSG_ERROR_CAMERA_SET_IGNORED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2778
    goto/16 :goto_e

    .line 2769
    :sswitch_2
    const-string v0, "postEventFromNative : msg = MSG_ERROR_REC"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2772
    goto/16 :goto_e

    .line 2763
    :sswitch_3
    const-string v0, "postEventFromNative : msg = MSG_ERROR_CODEC"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2766
    goto/16 :goto_e

    .line 2749
    :sswitch_4
    const-string v0, "postEventFromNative : msg = MSG_ERROR_CAMERA_CRASHED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 2752
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2753
    goto/16 :goto_e

    .line 2737
    :sswitch_5
    const-string v0, "postEventFromNative : msg = MSG_ERROR_SERVER_DIED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->releaseVTSourceAll()V

    .line 2741
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->quitAllThread()V

    .line 2742
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemoveAll()V

    .line 2743
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 2745
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->reInitRefVTP()V

    .line 2746
    goto/16 :goto_e

    .line 2725
    :sswitch_6
    const-string v0, "postEventFromNative : msg = MSG_ERROR_SERVICE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 2730
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 2731
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 2733
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2734
    goto/16 :goto_e

    .line 2807
    :sswitch_7
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    move-object/from16 v6, p7

    check-cast v6, Landroid/view/Surface;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setPauseImageSurface(Landroid/view/Surface;)V

    .line 2808
    goto/16 :goto_e

    .line 2493
    :sswitch_8
    const-string v7, "postEventFromNative : msg = SESSION_EVENT_PACKET_LOSS_RATE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    move/from16 v7, p2

    .line 2499
    .local v7, "lossRate":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Packet loss rate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    const/4 v8, 0x5

    if-ltz v7, :cond_1

    if-gt v7, v8, :cond_1

    .line 2502
    const-string v0, "Packet loss rate low, notify: 4023"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    invoke-virtual {v5, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeVideoQuality(I)V

    goto/16 :goto_e

    .line 2508
    :cond_1
    const/16 v9, 0xf

    if-ge v8, v7, :cond_2

    if-gt v7, v9, :cond_2

    .line 2510
    const-string v0, "Packet loss rate medium, notify: 4022"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    invoke-virtual {v5, v13}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeVideoQuality(I)V

    goto/16 :goto_e

    .line 2515
    :cond_2
    if-ge v9, v7, :cond_3

    .line 2516
    const-string v8, "Packet loss rate high, notify: 4021"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    invoke-virtual {v5, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeVideoQuality(I)V

    goto/16 :goto_e

    .line 2523
    :cond_3
    const-string v0, "Packet loss rate incorrect"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    goto/16 :goto_e

    .line 2560
    .end local v7    # "lossRate":I
    :sswitch_9
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_GET_CAP_WITH_SIM"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v0, :cond_4

    .line 2564
    invoke-static {}, Lcom/mediatek/ims/internal/VTDummySource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    move-object v7, v0

    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    goto :goto_0

    .line 2566
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :cond_4
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    move-object v7, v0

    .line 2568
    .local v7, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :goto_0
    if-nez v7, :cond_5

    .line 2569
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    :cond_5
    const/4 v8, 0x0

    .line 2573
    .local v8, "major_sim_id":I
    const/4 v0, 0x1

    .line 2575
    .local v0, "ImsCount":I
    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v9, v9, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/ims/ImsService;->getModemMultiImsCount()I

    move-result v9

    .line 2577
    .end local v0    # "ImsCount":I
    .local v9, "ImsCount":I
    const-wide/16 v10, 0xc8

    if-gt v9, v14, :cond_7

    .line 2579
    :goto_1
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->isCapabilitySwitching()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2581
    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2583
    :goto_2
    goto :goto_1

    .line 2582
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2586
    :cond_6
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    move v8, v0

    .end local v8    # "major_sim_id":I
    .local v0, "major_sim_id":I
    goto :goto_3

    .line 2589
    .end local v0    # "major_sim_id":I
    .restart local v8    # "major_sim_id":I
    :cond_7
    move/from16 v0, p1

    move v8, v0

    .line 2592
    :goto_3
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->waitSimStateStable(I)V

    .line 2594
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getSimCardState(I)I

    move-result v0

    const/16 v12, 0xb

    if-eq v0, v12, :cond_f

    .line 2599
    const/4 v0, 0x0

    .line 2600
    .local v0, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v12, 0x0

    .line 2601
    .local v12, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    const-string v13, ""

    .line 2602
    .local v13, "iccid":Ljava/lang/String;
    const/4 v14, 0x0

    move v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v0

    .line 2605
    .end local v0    # "subMgr":Landroid/telephony/SubscriptionManager;
    .local v12, "subMgr":Landroid/telephony/SubscriptionManager;
    .local v13, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .local v14, "iccid":Ljava/lang/String;
    .local v15, "count":I
    :goto_4
    if-lez v15, :cond_8

    .line 2607
    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2609
    goto :goto_5

    .line 2608
    :catch_1
    move-exception v0

    .line 2612
    :cond_8
    :goto_5
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v12

    .line 2613
    if-nez v12, :cond_9

    .line 2614
    const-string v0, "Cannot get SubscriptionManager"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    add-int/lit8 v15, v15, 0x1

    .line 2616
    goto :goto_6

    .line 2619
    :cond_9
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v12, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 2620
    .end local v13    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .local v0, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_a

    .line 2621
    const-string v13, "Cannot get mySubInfo"

    invoke-static {v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    add-int/lit8 v15, v15, 0x1

    .line 2623
    move-object v13, v0

    goto :goto_6

    .line 2626
    :cond_a
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    .line 2627
    .end local v14    # "iccid":Ljava/lang/String;
    .local v13, "iccid":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move-object v14, v13

    move-object v13, v0

    .line 2629
    .end local v0    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .local v13, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v14    # "iccid":Ljava/lang/String;
    :goto_6
    const-string v0, ""

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v10, 0x32

    if-eqz v0, :cond_c

    if-lt v15, v10, :cond_b

    goto :goto_7

    :cond_b
    const-wide/16 v10, 0xc8

    goto :goto_4

    .line 2631
    :cond_c
    :goto_7
    const-string v0, "N/A"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    if-lt v15, v10, :cond_d

    goto :goto_8

    .line 2635
    :cond_d
    const-string v0, "SIM state READY"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2632
    :cond_e
    :goto_8
    const-string v0, "SIM state ABSENT"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    const/4 v8, -0x1

    .line 2639
    .end local v12    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v13    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .end local v14    # "iccid":Ljava/lang/String;
    .end local v15    # "count":I
    :cond_f
    :goto_9
    invoke-static {v2, v8, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParametersWithSim(II[Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 2640
    goto/16 :goto_e

    .line 2790
    .end local v7    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    .end local v8    # "major_sim_id":I
    .end local v9    # "ImsCount":I
    :sswitch_a
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_GET_SENSOR_INFO"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .line 2793
    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    if-nez v0, :cond_10

    .line 2794
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    :cond_10
    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParametersOnly([Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 2798
    goto/16 :goto_e

    .line 2802
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :sswitch_b
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RESTART_CAMERA"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    const-string v0, "don\'t restart camera anymore"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    goto/16 :goto_e

    .line 2670
    :sswitch_c
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_UPLINK_STATE_CHANGE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    iput v3, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    .line 2673
    packed-switch v3, :pswitch_data_0

    .line 2710
    goto/16 :goto_e

    .line 2703
    :pswitch_0
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2704
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecordingAndPreview()V

    .line 2706
    :cond_11
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->clearPauseMode()V

    .line 2707
    goto/16 :goto_e

    .line 2694
    :pswitch_1
    invoke-virtual {v5, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetPauseMode(I)V

    .line 2697
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasPauseMode()Z

    move-result v0

    if-nez v0, :cond_30

    .line 2698
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->startRecording()V

    goto/16 :goto_e

    .line 2686
    :pswitch_2
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasPauseMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2687
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecording()V

    .line 2690
    :cond_12
    invoke-virtual {v5, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setPauseMode(I)V

    .line 2691
    goto/16 :goto_e

    .line 2683
    :pswitch_3
    goto/16 :goto_e

    .line 2675
    :pswitch_4
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2676
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecording()V

    .line 2677
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setRecordSurface(Landroid/view/Surface;)V

    .line 2679
    :cond_13
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->clearPauseMode()V

    .line 2680
    goto/16 :goto_e

    .line 2661
    :sswitch_d
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_LOCAL_BUFFER"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecording()V

    .line 2664
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    move-object/from16 v6, p7

    check-cast v6, Landroid/view/Surface;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setRecordSurface(Landroid/view/Surface;)V

    .line 2665
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->startRecording()V

    .line 2666
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->clearPauseMode()V

    .line 2667
    goto/16 :goto_e

    .line 2644
    :sswitch_e
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_GET_CAP"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v0, :cond_14

    .line 2648
    invoke-static {}, Lcom/mediatek/ims/internal/VTDummySource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .restart local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    goto :goto_a

    .line 2650
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :cond_14
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .line 2652
    .restart local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :goto_a
    if-nez v0, :cond_15

    .line 2653
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    :cond_15
    invoke-static {v2, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParameters(I[Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 2657
    goto/16 :goto_e

    .line 2716
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :sswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postEventFromNative : msg = SESSION_EVENT_DEFAULT_LOCAL_SIZE, W="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", H="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 2718
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 2719
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 2720
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 2721
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/internal/VTSource;->setPauseImageSize(II)V

    .line 2722
    goto/16 :goto_e

    .line 2782
    :sswitch_10
    const-string v0, "postEventFromNative : msg = EVENT_DATA_PATH_CHANGED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-nez v0, :cond_30

    .line 2785
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_e

    .line 2286
    :sswitch_11
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECV_ENHANCE_SESSION_IND"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    if-nez v3, :cond_16

    .line 2289
    const-string v0, "SESSION_INDICATION_CANCEL"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    invoke-virtual {v5, v12}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2292
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_c

    .line 2294
    :cond_16
    if-ne v14, v3, :cond_19

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SESSION_INDICATION_EARLY_MEDIA, early media="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    if-nez v4, :cond_17

    .line 2298
    iput-boolean v12, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringEarlyMedia:Z

    goto :goto_b

    .line 2299
    :cond_17
    if-ne v4, v14, :cond_18

    .line 2300
    iput-boolean v14, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringEarlyMedia:Z

    .line 2305
    :cond_18
    :goto_b
    return-void

    .line 2308
    :cond_19
    :goto_c
    const-string v0, "postEventFromNative, change cancel request to response for GMS dialer"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v6, p5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    .line 2310
    .local v0, "IndicationProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v5, v11, v0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 2315
    goto/16 :goto_e

    .line 2539
    .end local v0    # "IndicationProfile":Landroid/telecom/VideoProfile;
    :sswitch_12
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_BAD_DATA_BITRATE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->needNotifyBadBitRate()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2541
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-nez v0, :cond_30

    .line 2542
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_e

    .line 2545
    :cond_1a
    const-string v0, "handle BAD_DATA_BITRATE in FW"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    iget v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    const-string v8, "mtk_key_vt_downgrade_in_bad_bitrate"

    invoke-virtual {v0, v8, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getBooleanFromCarrierConfig(Ljava/lang/String;I)Z

    move-result v0

    .line 2550
    .local v0, "isNeedDowngrade":Z
    if-eqz v0, :cond_1b

    .line 2551
    const-string v7, "downgrade if bad bitrate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->setModificationCause(I)V

    .line 2553
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleBadBitrateProcess()V

    .line 2557
    .end local v0    # "isNeedDowngrade":Z
    :cond_1b
    goto/16 :goto_e

    .line 2489
    :sswitch_13
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_DATA_USAGE_CHANGED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    goto/16 :goto_e

    .line 2457
    :sswitch_14
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_LOCAL_SIZE_CHANGED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    iget-boolean v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mInPauseImage:Z

    if-ne v0, v14, :cond_1c

    .line 2460
    const-string v0, "setPauseImageSize in pause image mode only, don\'t change preview size"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/internal/VTSource;->setPauseImageSize(II)V

    .line 2462
    goto/16 :goto_e

    .line 2465
    :cond_1c
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    if-ne v0, v3, :cond_1d

    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    if-ne v0, v4, :cond_1d

    .line 2466
    const-string v0, "local size no change => Do not notify!"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    goto/16 :goto_e

    .line 2470
    :cond_1d
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 2471
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 2472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update preview size, w="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", h="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    iget-boolean v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    if-nez v0, :cond_1e

    .line 2475
    const-string v0, "not connected, only update preview size, not reconfig camera session"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    goto/16 :goto_e

    .line 2480
    :cond_1e
    iget-boolean v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    if-ne v14, v0, :cond_1f

    .line 2481
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->onRequestCameraCapabilities()V

    goto/16 :goto_e

    .line 2483
    :cond_1f
    const-string v0, "Not request yet, just only update default w/h"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    goto/16 :goto_e

    .line 2452
    :sswitch_15
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_PEER_SIZE_CHANGED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    invoke-virtual {v5, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->changePeerDimensions(II)V

    .line 2454
    goto/16 :goto_e

    .line 2446
    :sswitch_16
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_HANDLE_CALL_SESSION_EVT"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2449
    goto/16 :goto_e

    .line 2318
    :sswitch_17
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    iget v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v0, v8, :cond_20

    .line 2321
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP (call end)"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    return-void

    .line 2325
    :cond_20
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v8, p6

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    .line 2326
    .local v0, "responseProfile":Landroid/telecom/VideoProfile;
    const/4 v8, 0x2

    .line 2329
    .local v8, "state":I
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v9

    sget-object v10, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getUpgradeCancelFlag()I

    move-result v10

    if-ne v9, v10, :cond_21

    .line 2331
    const/16 v6, 0xc8

    .line 2333
    .end local v8    # "state":I
    .local v6, "state":I
    packed-switch v3, :pswitch_data_1

    .line 2346
    :pswitch_5
    const/16 v6, 0xc8

    .line 2348
    goto/16 :goto_d

    .line 2342
    :pswitch_6
    const/16 v6, 0xca

    .line 2344
    goto/16 :goto_d

    .line 2338
    :pswitch_7
    const/16 v6, 0xc9

    .line 2340
    goto/16 :goto_d

    .line 2335
    :pswitch_8
    const/4 v6, 0x1

    .line 2336
    goto/16 :goto_d

    .line 2353
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :cond_21
    packed-switch v3, :pswitch_data_2

    .line 2432
    :pswitch_9
    const/4 v6, 0x2

    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_d

    .line 2427
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_a
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2428
    return-void

    .line 2415
    :pswitch_b
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringNotAppDowngrade()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 2416
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2417
    return-void

    .line 2420
    :cond_22
    const/4 v6, 0x5

    .line 2422
    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_d

    .line 2410
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_c
    const/4 v6, 0x4

    .line 2411
    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_d

    .line 2407
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_d
    const/4 v6, 0x3

    .line 2408
    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_d

    .line 2404
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_e
    const/4 v6, 0x1

    .line 2405
    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_d

    .line 2386
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_f
    iget-boolean v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringEarlyMedia:Z

    if-eqz v7, :cond_23

    .line 2387
    const-string v7, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP (during early media)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    const/4 v6, 0x1

    .line 2390
    .end local v8    # "state":I
    .restart local v6    # "state":I
    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v8, p5

    check-cast v8, Ljava/lang/String;

    .line 2392
    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v9, p5

    check-cast v9, Ljava/lang/String;

    .line 2393
    invoke-virtual {v8, v9}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v8

    .line 2390
    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 2394
    return-void

    .line 2398
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :cond_23
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2399
    return-void

    .line 2356
    :pswitch_10
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v9

    invoke-static {v9}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 2357
    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v5, v9, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 2359
    new-instance v9, Landroid/telecom/VideoProfile;

    invoke-direct {v9, v12, v13}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2360
    .local v9, "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2361
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2363
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] [reSendLastSessionModify] by have MA CRASH:"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    return-void

    .line 2365
    .end local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_24
    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v9

    if-eqz v9, :cond_25

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 2366
    invoke-virtual {v5, v9, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-nez v9, :cond_25

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 2367
    invoke-virtual {v5, v9, v13}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 2370
    :cond_25
    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    if-ne v9, v14, :cond_26

    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isViWifiOn(I)Z

    move-result v9

    if-nez v9, :cond_27

    .line 2371
    :cond_26
    new-instance v9, Landroid/telecom/VideoProfile;

    invoke-direct {v9, v12, v13}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2372
    .restart local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2373
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2375
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] [reSendLastSessionModify] not viwifi call, downgrade by state:"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    return-void

    .line 2381
    .end local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_27
    const/4 v6, 0x1

    .line 2382
    .end local v8    # "state":I
    .restart local v6    # "state":I
    nop

    .line 2437
    :goto_d
    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v8, p5

    check-cast v8, Ljava/lang/String;

    .line 2439
    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v9, p6

    check-cast v9, Ljava/lang/String;

    .line 2440
    invoke-virtual {v8, v9}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v8

    .line 2437
    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 2442
    goto/16 :goto_e

    .line 2205
    .end local v0    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v6    # "state":I
    :sswitch_18
    const-string v8, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_REQ"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    new-instance v8, Landroid/telecom/VideoProfile;

    invoke-direct {v8, v0, v13}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object v0, v8

    .line 2209
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v9, p5

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v8

    .line 2211
    .local v8, "requestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v8}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v9

    invoke-static {v9}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 2212
    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v5, v9, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 2214
    new-instance v9, Landroid/telecom/VideoProfile;

    invoke-direct {v9, v12, v13}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2215
    .restart local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2217
    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2218
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] [onSendSessionModifyResponse] Reject it by have MA CRASH:"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    return-void

    .line 2221
    .end local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_28
    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v11, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v9, v11}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v9

    if-eqz v9, :cond_29

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 2222
    invoke-virtual {v5, v9, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-nez v9, :cond_29

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 2223
    invoke-virtual {v5, v9, v13}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 2226
    :cond_29
    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    if-ne v9, v14, :cond_2a

    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v11, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v9, v11}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isViWifiOn(I)Z

    move-result v9

    if-nez v9, :cond_2b

    .line 2227
    :cond_2a
    new-instance v9, Landroid/telecom/VideoProfile;

    invoke-direct {v9, v12, v13}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2228
    .restart local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2230
    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2231
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] [onSendSessionModifyResponse] Reject it by state:"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    return-void

    .line 2237
    .end local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_2b
    invoke-virtual {v5, v12, v0, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v9

    .line 2239
    .local v9, "decision":I
    if-ne v14, v9, :cond_2c

    .line 2241
    invoke-virtual {v5, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2242
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_e

    .line 2244
    :cond_2c
    if-nez v9, :cond_2f

    .line 2246
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 2249
    invoke-virtual {v8}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 2251
    const-string v7, "Do onSendSessionModifyResponse directly for not upgrade case"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    invoke-virtual {v5, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2254
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2255
    invoke-virtual {v8}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 2256
    const/16 v6, 0xfb9

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_e

    .line 2260
    :cond_2d
    invoke-virtual {v5, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2261
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 2264
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP08()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 2265
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x4e20

    invoke-virtual {v6, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_e

    .line 2268
    :cond_2e
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP07()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 2269
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x2ee0

    invoke-virtual {v6, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_e

    .line 2277
    :cond_2f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] [onSendSessionModifyResponse] should not in this case"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    invoke-virtual {v5, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2279
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2282
    goto/16 :goto_e

    .line 2199
    .end local v0    # "currentProfile":Landroid/telecom/VideoProfile;
    .end local v8    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v9    # "decision":I
    :sswitch_19
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_LOCAL_BW_READY_IND"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2202
    goto/16 :goto_e

    .line 2193
    :sswitch_1a
    const-string v0, "postEventFromNative : msg = MSG_PEER_CAMERA_CLOSE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2196
    goto/16 :goto_e

    .line 2187
    :sswitch_1b
    const-string v0, "postEventFromNative : msg = MSG_PEER_CAMERA_OPEN"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2190
    goto :goto_e

    .line 2181
    :sswitch_1c
    const-string v0, "postEventFromNative : msg = MSG_START_COUNTER"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2184
    goto :goto_e

    .line 2164
    :sswitch_1d
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_CALL_END / SESSION_EVENT_CALL_ABNORMAL_END"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 2170
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 2171
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 2173
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2175
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2177
    iput v8, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 2178
    goto :goto_e

    .line 2156
    :sswitch_1e
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2160
    goto :goto_e

    .line 2149
    :sswitch_1f
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2153
    goto :goto_e

    .line 2142
    :sswitch_20
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2146
    goto :goto_e

    .line 2135
    :sswitch_21
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2139
    goto :goto_e

    .line 2129
    :sswitch_22
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2132
    goto :goto_e

    .line 2123
    :sswitch_23
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_SNAPSHOT_DONE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2126
    goto :goto_e

    .line 2117
    :sswitch_24
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECEIVE_FIRSTFRAME"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2120
    nop

    .line 2814
    :cond_30
    :goto_e
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_24
        0x3ea -> :sswitch_23
        0x3eb -> :sswitch_22
        0x3ec -> :sswitch_21
        0x3ed -> :sswitch_20
        0x3ee -> :sswitch_1f
        0x3ef -> :sswitch_1e
        0x3f0 -> :sswitch_1d
        0x3f1 -> :sswitch_1d
        0x3f2 -> :sswitch_1c
        0x3f3 -> :sswitch_1b
        0x3f4 -> :sswitch_1a
        0x3f5 -> :sswitch_19
        0xfa1 -> :sswitch_18
        0xfa2 -> :sswitch_17
        0xfa3 -> :sswitch_16
        0xfa4 -> :sswitch_15
        0xfa5 -> :sswitch_14
        0xfa6 -> :sswitch_13
        0xfa8 -> :sswitch_12
        0xfaa -> :sswitch_11
        0xfab -> :sswitch_10
        0xfac -> :sswitch_10
        0xfad -> :sswitch_f
        0xfae -> :sswitch_e
        0xfaf -> :sswitch_d
        0xfb0 -> :sswitch_c
        0xfb1 -> :sswitch_b
        0xfb2 -> :sswitch_a
        0xfb3 -> :sswitch_9
        0xfb4 -> :sswitch_8
        0xfb8 -> :sswitch_7
        0x1f41 -> :sswitch_6
        0x1f42 -> :sswitch_5
        0x1f43 -> :sswitch_4
        0x1f44 -> :sswitch_3
        0x1f45 -> :sswitch_2
        0x1f46 -> :sswitch_1
        0x1f47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_9
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method protected static updateDefaultId()V
    .locals 2

    .line 790
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    sget v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordContain(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 791
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordPopId()I

    move-result v0

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 793
    return-void

    .line 795
    :cond_0
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 797
    :cond_1
    return-void
.end method


# virtual methods
.method public addVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 1985
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1986
    return-void
.end method

.method public clearPauseMode()V
    .locals 2

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPauseMod mPauseMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void
.end method

.method public doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I
    .locals 6
    .param p1, "new_action"    # I
    .param p2, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1731
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ImsVT"

    if-nez p1, :cond_7

    .line 1733
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1735
    const-string v0, "doSessionModifyDecision : new_action : from APP, reject due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    return v1

    .line 1739
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1741
    const-string v0, "doSessionModifyDecision : new_action : from APP, reject due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    return v1

    .line 1745
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1747
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1749
    const-string v0, "doSessionModifyDecision : new_action : from APP, reject due to during data off and not downgrade"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    return v1

    .line 1754
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1756
    const/4 v2, 0x0

    .line 1758
    .local v2, "isCancelUpgrade":Z
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getUpgradeCancelFlag()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 1760
    const-string v4, "doSessionModifyDecision : new_action : from APP, isCancelUpgrade is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const/4 v2, 0x1

    .line 1764
    :cond_3
    const-string v4, "doSessionModifyDecision : new_action : from APP, reject due to during App action"

    if-eqz v2, :cond_5

    .line 1766
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1767
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    return v1

    .line 1771
    :cond_4
    const-string v1, "doSessionModifyDecision : new_action : from APP, send cancel request"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    return v0

    .line 1778
    :cond_5
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    return v1

    .line 1783
    .end local v2    # "isCancelUpgrade":Z
    :cond_6
    const-string v0, "doSessionModifyDecision : new_action : from APP, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    return v2

    .line 1787
    :cond_7
    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v1, p1, :cond_d

    .line 1789
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1791
    const-string v0, "doSessionModifyDecision : new_action : Data off, skip due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    return v5

    .line 1795
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1797
    const-string v0, "doSessionModifyDecision : new_action : Data off, skip due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    return v5

    .line 1801
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1803
    const-string v0, "doSessionModifyDecision : new_action : Data off, reject due to data off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    return v5

    .line 1807
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1809
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1811
    const-string v0, "doSessionModifyDecision : new_action : Data off, wait for App action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    return v2

    .line 1815
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1817
    const-string v0, "doSessionModifyDecision : new_action : Data off, reject previous due to data off downgrade"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    return v4

    .line 1823
    :cond_c
    const-string v0, "doSessionModifyDecision : new_action : Data off, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    return v2

    .line 1827
    :cond_d
    if-ne v4, p1, :cond_13

    .line 1829
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1831
    const-string v0, "doSessionModifyDecision : new_action : Roaming, skip due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    return v5

    .line 1835
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1837
    const-string v0, "doSessionModifyDecision : new_action : Roaming, skip due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    return v5

    .line 1841
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1843
    const-string v0, "doSessionModifyDecision : new_action : Roaming, skip due to during data off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    return v5

    .line 1847
    :cond_10
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1849
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1851
    const-string v0, "doSessionModifyDecision : new_action : Roaming, wait for App action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    return v2

    .line 1855
    :cond_11
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1857
    const-string v0, "doSessionModifyDecision : new_action : Roaming, reject previous due to roaming downgrade"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    return v4

    .line 1863
    :cond_12
    const-string v0, "doSessionModifyDecision : new_action : Roaming, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    return v2

    .line 1867
    :cond_13
    if-ne v5, p1, :cond_19

    .line 1869
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1871
    const-string v0, "doSessionModifyDecision : new_action : MA crash, skip due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    return v5

    .line 1875
    :cond_14
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1877
    const-string v0, "doSessionModifyDecision : new_action : MA crash, skip due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    return v5

    .line 1881
    :cond_15
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1883
    const-string v0, "doSessionModifyDecision : new_action : MA crash, skip due to during data off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    return v5

    .line 1887
    :cond_16
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1889
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1891
    const-string v0, "doSessionModifyDecision : new_action : MA crash, wait for App action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return v2

    .line 1895
    :cond_17
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1897
    const-string v0, "doSessionModifyDecision : new_action : MA crash, reject previous due to MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    return v4

    .line 1903
    :cond_18
    const-string v0, "doSessionModifyDecision : new_action : MA crash, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    return v2

    .line 1907
    :cond_19
    if-ne v0, p1, :cond_1f

    .line 1909
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1911
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, skip due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    return v5

    .line 1915
    :cond_1a
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1917
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, skip due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    return v5

    .line 1921
    :cond_1b
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1923
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, skip due to data off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    return v5

    .line 1927
    :cond_1c
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1929
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1931
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, wait for App action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    return v2

    .line 1935
    :cond_1d
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1937
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, reject previous due to data off downgrade"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    return v4

    .line 1943
    :cond_1e
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    return v2

    .line 1949
    :cond_1f
    const-string v0, "doSessionModifyDecision : new_action : wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    return v2
.end method

.method public getDataOff()Z
    .locals 1

    .line 639
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    return v0
.end method

.method public getDuringSessionRemoteRequest()Z
    .locals 1

    .line 617
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    return v0
.end method

.method public getDuringSessionRequest()Z
    .locals 1

    .line 605
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    return v0
.end method

.method public getId()I
    .locals 1

    .line 536
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    return v0
.end method

.method public getIsAudioCall()Z
    .locals 1

    .line 661
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    return v0
.end method

.method public getMaCrash()Z
    .locals 1

    .line 628
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    return v0
.end method

.method public getModificationCause()I
    .locals 1

    .line 2818
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mModificationCause:I

    return v0
.end method

.method public getRoaming()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    return v0
.end method

.method protected getSessionModifyAction(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 2048
    const/4 v0, -0x1

    .line 2052
    .local v0, "result":I
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2053
    const/4 v0, 0x1

    goto :goto_0

    .line 2054
    :cond_0
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2055
    const/4 v0, 0x0

    .line 2057
    :cond_1
    :goto_0
    return v0
.end method

.method public getSimId()I
    .locals 1

    .line 547
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    return v0
.end method

.method public getSource()Lcom/mediatek/ims/internal/VTSource;
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    if-eqz v0, :cond_0

    .line 771
    return-object v0

    .line 773
    :cond_0
    const-string v0, "ImsVT"

    const-string v1, "Get dummy vtsource"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 551
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    return v0
.end method

.method public handleBadBitrateProcess()V
    .locals 9

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [handleBadBitrateProcess] start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [handleBadBitrateProcess] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 723
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v3, Landroid/telecom/VideoProfile;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 725
    .local v3, "reqestProfile":Landroid/telecom/VideoProfile;
    const/4 v6, 0x4

    invoke-virtual {p0, v6, v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v6

    .line 727
    .local v6, "decision":I
    if-ne v5, v6, :cond_1

    .line 730
    new-instance v7, Landroid/telecom/VideoProfile;

    invoke-direct {v7, v4, v5}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object v5, v7

    .line 732
    .local v5, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 733
    invoke-virtual {v8, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v8

    .line 732
    invoke-static {v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 734
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 736
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 737
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v7, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 739
    .end local v5    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v4, v6, :cond_2

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] [handleBadBitrateProcess] skip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    :cond_2
    if-nez v6, :cond_3

    .line 745
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 747
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 748
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 751
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [handleBadBitrateProcess] Finish"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return-void
.end method

.method public handleMaErrorProcess()V
    .locals 10

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [handleMaErrorProcess] start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [handleMaErrorProcess] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void

    .line 674
    :cond_0
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 675
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v5, Landroid/telecom/VideoProfile;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 677
    .local v5, "reqestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0, v3, v0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v7

    .line 679
    .local v7, "decision":I
    const/4 v8, 0x1

    if-ne v8, v7, :cond_1

    .line 681
    const-string v3, "[handleMaErrorProcess] : should not in this case"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 683
    :cond_1
    if-ne v4, v7, :cond_2

    .line 686
    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v6, v4}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 688
    .local v3, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 689
    invoke-virtual {v9, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v9

    .line 688
    invoke-static {v4, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 690
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 692
    invoke-virtual {p0, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 693
    iput-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 694
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v6, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 696
    .end local v3    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_2
    if-ne v3, v7, :cond_3

    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] [sendSessionModifyRequestByImsInternal] skip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 700
    :cond_3
    if-nez v7, :cond_4

    .line 702
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 704
    invoke-virtual {p0, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 705
    iput-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 706
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v4, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 709
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [handleMaErrorProcess] Finish"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method

.method public hasPauseMode()Z
    .locals 1

    .line 593
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPauseMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 589
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasState(II)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "vtp_state"    # I

    .line 560
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isDuringNotAppDowngrade()Z
    .locals 1

    .line 2038
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2039
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2040
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2043
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 2041
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isDuringSessionModify()Z
    .locals 1

    .line 2030
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2033
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2031
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public notifyResume()V
    .locals 0

    .line 1697
    return-void
.end method

.method public notifyVideoPauseStateChange()V
    .locals 7

    .line 1994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [notifyVideoPauseStateChange] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const/4 v0, 0x0

    .line 1998
    .local v0, "isVideoStatePause":Z
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-nez v3, :cond_0

    .line 1999
    const/4 v0, 0x0

    goto :goto_0

    .line 2000
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v3, :cond_1

    .line 2001
    const/4 v0, 0x1

    .line 2004
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 2005
    .local v4, "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    if-eqz v4, :cond_2

    .line 2006
    invoke-interface {v4, v0}, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;->onReceivePauseState(Z)V

    .line 2007
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [notifyVideoPauseStateChange] isVideoStatePause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    .end local v4    # "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    :cond_2
    goto :goto_1

    .line 2011
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [notifyVideoPauseStateChange] Finish"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    return-void
.end method

.method public notifyWifiUsageChange(J)V
    .locals 4
    .param p1, "usage"    # J

    .line 2017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [notifyWifiUsageChange] Start, usage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 2020
    .local v3, "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    if-eqz v3, :cond_0

    .line 2021
    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;->onReceiveWiFiUsage(J)V

    .line 2023
    .end local v3    # "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    :cond_0
    goto :goto_0

    .line 2025
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [notifyWifiUsageChange] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    return-void
.end method

.method public onError()V
    .locals 3

    .line 1957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onError] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 1960
    const/16 v0, 0x1f43

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onError] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    return-void
.end method

.method public onOpenFail()V
    .locals 3

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onOpenFail] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onOpenFail] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    return-void
.end method

.method public onOpenSuccess()V
    .locals 3

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onOpenSuccess] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onOpenSuccess] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    return-void
.end method

.method public onReceiveCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .line 934
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 935
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 936
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 937
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 2

    .line 884
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 885
    return-void

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 888
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 877
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 878
    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 881
    return-void
.end method

.method public onResetWrapper()V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x2c0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 919
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 857
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 858
    return-void

    .line 860
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 861
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 862
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 863
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 864
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 867
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 868
    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x2c4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 872
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 874
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 822
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 823
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 826
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .line 843
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 844
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 847
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 836
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 837
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 840
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 891
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 892
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 895
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 829
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 830
    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 833
    return-void
.end method

.method public onSetUIMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 898
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2bd

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 899
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 902
    :cond_0
    return-void
.end method

.method public onSetZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .line 850
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 851
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 854
    return-void
.end method

.method public onSwitchFeature(IZ)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "on"    # Z

    .line 905
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 906
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 907
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 908
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2be

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 909
    return-void
.end method

.method public onSwitchRoaming(Z)V
    .locals 3
    .param p1, "isRoaming"    # Z

    .line 912
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 913
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 914
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2bf

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 915
    return-void
.end method

.method public onUpdateCallRat(I)V
    .locals 3
    .param p1, "rat"    # I

    .line 928
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 929
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 930
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 931
    return-void
.end method

.method public onUpdateProfile(I)V
    .locals 3
    .param p1, "state"    # I

    .line 922
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 923
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 924
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 925
    return-void
.end method

.method public quitThread()V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 767
    return-void
.end method

.method protected reSendLastSessionModify()V
    .locals 3

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [reSendLastSessionModify] Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2067
    goto :goto_0

    .line 2066
    :catch_0
    move-exception v0

    .line 2069
    :goto_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 2070
    return-void
.end method

.method public receiveCallSessionEventInternal(I)V
    .locals 5
    .param p1, "event"    # I

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [receiveCallSessionEventInternal] Start, event="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1674
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyResume()V

    .line 1675
    goto :goto_0

    .line 1678
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v3, v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v3, v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    if-eq v0, v3, :cond_1

    .line 1680
    :cond_0
    const-string v0, "mCallConnected, and preview size changed, notify camera cap with new size"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    if-ne v4, v0, :cond_1

    .line 1682
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->onRequestCameraCapabilities()V

    .line 1685
    :cond_1
    iput-boolean v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    .line 1686
    nop

    .line 1692
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [receiveCallSessionEventInternal] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x84 -> :sswitch_0
    .end sparse-switch
.end method

.method public receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1312
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1314
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1315
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    .line 1316
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 1319
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1320
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 1321
    .local v0, "responseState":I
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 1322
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1323
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    goto :goto_0

    .line 1325
    :cond_2
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    .line 1327
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1330
    .end local v0    # "responseState":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1331
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    .line 1332
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1335
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1336
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 1340
    :cond_5
    if-ne p1, v2, :cond_7

    .line 1341
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1342
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_1

    .line 1344
    :cond_6
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    .line 1347
    :cond_7
    :goto_1
    return-void
.end method

.method public rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1351
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1352
    return-void
.end method

.method public removeVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 1989
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1990
    return-void
.end method

.method public requestCallDataUsageInternal()V
    .locals 3

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onRequestCallDataUsage] Start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1413
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1414
    return-void

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->requestCallDataUsage()Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    move-result-object v0

    .line 1419
    .local v0, "usage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    if-eqz v0, :cond_1

    .line 1421
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyWifiUsageChange(J)V

    .line 1423
    :cond_1
    return-void
.end method

.method public requestCameraCapabilitiesInternal()V
    .locals 9

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onRequestCameraCapabilities] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1360
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1361
    return-void

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1365
    const-string v0, "onRequestCameraCapabilities: not set camera yet"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return-void

    .line 1369
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1370
    .local v0, "zoom_max":F
    const/4 v3, 0x0

    .line 1372
    .local v3, "zoom_support":Z
    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v4}, Lcom/mediatek/ims/internal/VTSource;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 1373
    .local v4, "camera_cs":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v4, :cond_2

    .line 1374
    const-string v5, "onRequestCameraCapabilities: camera_cs null! Use default value."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1376
    :cond_2
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1378
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v5

    const/4 v6, 0x1

    if-lez v5, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    move v3, v5

    .line 1380
    iget-boolean v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    if-nez v5, :cond_4

    .line 1381
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iput v7, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 1382
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iput v7, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    goto :goto_2

    .line 1384
    :cond_4
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v5, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v5, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    if-eq v5, v7, :cond_6

    .line 1386
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] preview size changed, need update preview surface"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/VTSource;->setForceUpdateSurface(Z)V

    .line 1389
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iput v7, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 1390
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iput v7, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 1393
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] [onRequestCameraCapabilities] Width: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Height: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " zoom_support: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " zoom_max: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    new-instance v5, Landroid/telecom/VideoProfile$CameraCapabilities;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iget-object v8, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v8, v8, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-direct {v5, v7, v8, v3, v0}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    .line 1400
    .local v5, "camCap":Landroid/telecom/VideoProfile$CameraCapabilities;
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 1402
    iput-boolean v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 1404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onRequestCameraCapabilities] Finish"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    return-void
.end method

.method public resetModificationCause()V
    .locals 1

    .line 2825
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mModificationCause:I

    .line 2826
    return-void
.end method

.method public resetPauseMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetPauseMode old mPauseMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    not-int v2, p1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPauseMode new mPauseMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void
.end method

.method public resetState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetState old mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    not-int v2, p1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState new mState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void
.end method

.method public resetWrapperInternal()V
    .locals 4

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onResetWrapper] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1645
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1646
    return-void

    .line 1649
    :cond_0
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 1650
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setUIModeInternal(IZ)V

    .line 1653
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onResetWrapper] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    return-void
.end method

.method protected sendFgBgSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;IZ)V
    .locals 0
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "mode"    # I
    .param p4, "needNotify"    # Z

    .line 1224
    invoke-virtual {p0, p3, p4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setUIModeInternal(IZ)V

    .line 1225
    return-void
.end method

.method public sendRejectUpgradeResponseInternal()V
    .locals 3

    .line 2082
    const-string v0, "ImsVT"

    const-string v1, "auto reject the video upgrade request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2085
    .local v0, "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2086
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendSessionModifyResponseInternal(Landroid/telecom/VideoProfile;)V

    .line 2087
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v2, v1, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 2091
    return-void
.end method

.method public sendSessionModifyRequestByImsInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 11
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [sendSessionModifyRequestByImsInternal] Start, fromProfile:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toProfile:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1229
    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [sendSessionModifyRequestByImsInternal] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    return-void

    .line 1237
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 1238
    .local v0, "newState":I
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getRealRequest(I)I

    move-result v3

    .line 1240
    .local v3, "realNewState":I
    new-instance v4, Landroid/telecom/VideoProfile;

    .line 1242
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v5

    invoke-direct {v4, v3, v5}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1244
    .local v4, "newToProfile":Landroid/telecom/VideoProfile;
    const/4 v5, 0x1

    invoke-virtual {p0, v5, p1, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v6

    .line 1246
    .local v6, "decision":I
    const/4 v7, 0x2

    if-ne v7, v6, :cond_1

    .line 1248
    new-instance v8, Landroid/telecom/VideoProfile;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v7}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object v7, v8

    .line 1250
    .local v7, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v8, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v10, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v10, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 1251
    invoke-virtual {p0, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1253
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1254
    iput-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1255
    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v8, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1257
    .end local v7    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    if-ne v7, v6, :cond_2

    .line 1259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] [sendSessionModifyRequestByImsInternal] skip"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1261
    :cond_2
    if-nez v6, :cond_3

    .line 1263
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1265
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1266
    iput-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1267
    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v7, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 1271
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] [sendSessionModifyRequestByImsInternal] should not in this case"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSendSessionModifyRequest] Finish"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return-void
.end method

.method public sendSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 8
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1133
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->isImsFwkRequest(I)Z

    move-result v0

    const-string v1, "[ID="

    const-string v2, "ImsVT"

    if-eqz v0, :cond_0

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSendSessionModifyRequest] requst from IMS FWK, swith handle function"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendSessionModifyRequestByImsInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1138
    return-void

    .line 1141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSendSessionModifyRequest] Start, fromProfile:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", toProfile:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1146
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_1

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSendSessionModifyRequest] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    return-void

    .line 1151
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSessionModifyAction(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v0

    .line 1152
    .local v0, "mode":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    .line 1153
    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendFgBgSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;IZ)V

    .line 1154
    return-void

    .line 1157
    :cond_2
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eqz v3, :cond_6

    .line 1158
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {p0, v3, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1161
    invoke-virtual {p0, v6, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSendSessionModifyRequest] Reject it by have MA CRASH:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-void

    .line 1168
    :cond_3
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v3, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1169
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1170
    invoke-virtual {p0, v3, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1173
    :cond_4
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    if-ne v3, v4, :cond_5

    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v3, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isViWifiOn(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1174
    :cond_5
    invoke-virtual {p0, v6, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSendSessionModifyRequest] Reject it by state:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    return-void

    .line 1184
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v3

    .line 1186
    .local v3, "decision":I
    if-ne v4, v3, :cond_7

    .line 1188
    invoke-virtual {p0, v6, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 1193
    :cond_7
    if-ne v5, v3, :cond_8

    .line 1195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [onSendSessionModifyRequest] send request immediately"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 1197
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1198
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5, p2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 1200
    :cond_8
    if-nez v3, :cond_9

    .line 1202
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1204
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 1205
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1206
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5, p2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 1210
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] [onSendSessionModifyRequest] should not in this case"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-virtual {p0, v6, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1219
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSendSessionModifyRequest] Finish"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    return-void
.end method

.method public sendSessionModifyResponseInternal(Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyResponse] Start, responseProfile:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1280
    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1285
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSendSessionModifyResponse] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    return-void

    .line 1290
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1291
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v4, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v4, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 1292
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1293
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_0

    .line 1295
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_0

    .line 1302
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] [onSendSessionModifyResponse] Already response, skip it"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :goto_0
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSendSessionModifyResponse] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    return-void
.end method

.method public setCameraInternal(Ljava/lang/String;)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetCamera] id : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 945
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 946
    return-void

    .line 950
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetCamera] UI mode is destroying"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    return-void

    .line 955
    :cond_1
    const/4 v0, 0x0

    .line 957
    .local v0, "count":I
    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 958
    iput-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 961
    :cond_2
    iget-boolean v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInPauseImage:Z

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 962
    iput-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInPauseImage:Z

    .line 963
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 964
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] exit pause image mode when set camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_3
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 968
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] [onSetCamera] onSetCamera, not set camera when in BG, only save id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 971
    :cond_4
    if-eqz p1, :cond_9

    .line 975
    :goto_0
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasPauseMode(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 977
    const/16 v3, 0xa

    if-ge v0, v3, :cond_5

    .line 978
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] [onSetCamera] onSetCamera, Call hold or held, wait and retry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-wide/16 v3, 0xc8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    goto :goto_1

    .line 1006
    :catch_0
    move-exception v3

    .line 1008
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 983
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetCamera] onSetCamera, Call hold or held, ignore setCamera"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/16 v1, 0x1f46

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 985
    return-void

    .line 988
    :cond_6
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    if-eqz v3, :cond_7

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    :cond_7
    if-lez v0, :cond_8

    .line 990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetCamera] onSetCamera, recording stopped"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    return-void

    .line 995
    :cond_8
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->updateCameraUsage(I)V

    .line 998
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v3, p1}, Lcom/mediatek/ims/internal/VTSource;->open(Ljava/lang/String;)V

    .line 999
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/VTSource;->showMe()V

    .line 1000
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    .line 1001
    goto :goto_2

    .line 1012
    :cond_9
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/VTSource;->hideMe()V

    .line 1013
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1016
    :goto_2
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    .line 1018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetCamera] Finish"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return-void
.end method

.method public setDataOff(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 633
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataOff : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void
.end method

.method public setDeviceOrientationInternal(I)V
    .locals 6
    .param p1, "rotation"    # I

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDeviceOrientation] Start, rotation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetDeviceOrientation] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return-void

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1099
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSetDeviceOrientation] device orientation change from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    .line 1105
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1107
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    const/16 v4, 0x1f4

    .line 1108
    const-string v5, "persist.vendor.vt.rotate_delay"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    .line 1107
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1111
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetDeviceOrientation] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return-void
.end method

.method public setDisplaySurfaceInternal(Landroid/view/Surface;)V
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDisplaySurface] Start, surface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1055
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetDisplaySurface] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalDisplaySurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetDisplaySurface] mOriginalDisplaySurface and surface is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return-void

    .line 1066
    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1067
    invoke-virtual {v0}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "oriSurfaceToken":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1069
    .local v3, "newSurfaceToken":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] [onSetDisplaySurface] oriSurfaceToken[1]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", newSurfaceToken[1]:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    aget-object v4, v3, v5

    if-eqz v4, :cond_2

    aget-object v4, v0, v5

    if-eqz v4, :cond_2

    aget-object v4, v3, v5

    aget-object v5, v0, v5

    .line 1073
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1074
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetDisplaySurface] surface not changed and no need to update, ignore!"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    return-void

    .line 1080
    .end local v0    # "oriSurfaceToken":[Ljava/lang/String;
    .end local v3    # "newSurfaceToken":[Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalDisplaySurface:Landroid/view/Surface;

    .line 1082
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetDisplaySurface(ILandroid/view/Surface;)I

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetDisplaySurface] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    return-void
.end method

.method public setDuringSessionRemoteRequest(Z)V
    .locals 4
    .param p1, "b"    # Z

    .line 610
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    .line 612
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuringSessionRemoteRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    monitor-exit v0

    .line 614
    return-void

    .line 613
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDuringSessionRequest(Z)V
    .locals 4
    .param p1, "b"    # Z

    .line 598
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    .line 600
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuringSessionRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    monitor-exit v0

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setId id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 528
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setId(I)V

    .line 530
    sget v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 531
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 533
    :cond_0
    return-void
.end method

.method public setIsAudioCall(Z)V
    .locals 2
    .param p1, "result"    # Z

    .line 655
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsAudioCall : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void
.end method

.method public setMaCrash(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 622
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaCrash : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method

.method public setModificationCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .line 2822
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mModificationCause:I

    .line 2823
    return-void
.end method

.method public setPauseImageInternal(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetPauseImage] Start, uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1431
    if-nez p1, :cond_0

    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetPauseImage] uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    return-void

    .line 1436
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_1

    .line 1437
    return-void

    .line 1440
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] camera not closed, return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    return-void

    .line 1445
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInPauseImage:Z

    .line 1447
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1448
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setPauseImage(Landroid/net/Uri;)V

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetPauseImage] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    return-void
.end method

.method public setPauseMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 573
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPauseMode mPauseMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void
.end method

.method public setPreviewSurfaceInternal(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetPreviewSurface] Start, surface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1028
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetPreviewSurface] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalPreviewSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetPreviewSurface] mOriginalPreviewSurface and surface is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    return-void

    .line 1039
    :cond_1
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalPreviewSurface:Landroid/view/Surface;

    .line 1041
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setPreviewSurface(Landroid/view/Surface;)V

    .line 1043
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetPreviewSurface(ILandroid/view/Surface;)I

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetPreviewSurface] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-void
.end method

.method public setRoaming(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 644
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRoaming : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void
.end method

.method public setSimId(I)V
    .locals 2
    .param p1, "simid"    # I

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimId mSimId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 543
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setSimId(I)V

    .line 544
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 555
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void
.end method

.method public setUIModeInternal(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "needNotify"    # Z

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetUIMode] Start, mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetUIMode] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return-void

    .line 1463
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1538
    :sswitch_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    if-ne v4, v0, :cond_1

    .line 1539
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->requestCallDataUsageInternal()V

    .line 1542
    :cond_1
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1543
    iput-boolean v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 1544
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nFinalization(I)I

    .line 1546
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->quitThread()V

    .line 1547
    goto/16 :goto_1

    .line 1506
    :sswitch_1
    if-eq v0, v3, :cond_2

    .line 1507
    iput v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1509
    iput-boolean v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInPauseImage:Z

    .line 1512
    :cond_2
    iput-boolean v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    .line 1513
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProvider$3;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/internal/ImsVTProvider$3;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1526
    .local v0, "resetModeRecoverThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1528
    if-eqz p2, :cond_7

    .line 1529
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    goto/16 :goto_1

    .line 1487
    .end local v0    # "resetModeRecoverThread":Ljava/lang/Thread;
    :sswitch_2
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    if-eqz v0, :cond_3

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSetUIMode] reset mode (voice call) should not recv BG, skip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    goto :goto_1

    .line 1492
    :cond_3
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1493
    if-eqz p2, :cond_4

    .line 1494
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    .line 1498
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->hideMe()V

    .line 1499
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1501
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1502
    goto :goto_1

    .line 1465
    :sswitch_3
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1466
    if-eqz p2, :cond_5

    .line 1467
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    .line 1470
    :cond_5
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1472
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->updateCameraUsage(I)V

    .line 1475
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/internal/VTSource;->open(Ljava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->showMe()V

    .line 1477
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    goto :goto_0

    .line 1479
    :cond_6
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->hideMe()V

    .line 1480
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1483
    :goto_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1484
    nop

    .line 1553
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetUIMode] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setZoomInternal(F)V
    .locals 4
    .param p1, "value"    # F

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetZoom] Start, value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1121
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1122
    return-void

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setZoom(F)V

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSetZoom] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    return-void
.end method

.method public switchFeatureInternal(IZ)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "on"    # Z

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSwitchFeature] Start, feature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1562
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1563
    return-void

    .line 1566
    :cond_0
    if-eqz p2, :cond_1

    .line 1567
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x1

    invoke-static {v0, p1, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSwitchFeature(III)I

    .line 1568
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    goto :goto_0

    .line 1571
    :cond_1
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSwitchFeature(III)I

    .line 1574
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSwitchFeature] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    return-void
.end method

.method public switchRoamingInternal(Z)V
    .locals 8
    .param p1, "isRoaming"    # Z

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSwitchRoaming] Start, phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1584
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 1586
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    goto :goto_0

    .line 1590
    :cond_0
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v4, 0x10000

    if-ne v3, v4, :cond_1

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSwitchRoaming] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    return-void

    .line 1596
    :cond_1
    new-instance v3, Landroid/telecom/VideoProfile;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1597
    .local v3, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v5, Landroid/telecom/VideoProfile;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1599
    .local v5, "reqestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0, v0, v3, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v6

    .line 1601
    .local v6, "decision":I
    const/4 v7, 0x1

    if-ne v7, v6, :cond_2

    .line 1603
    const-string v0, "onSwitchRoaming() : should not in this case"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    return-void

    .line 1606
    :cond_2
    if-ne v0, v6, :cond_3

    .line 1608
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1613
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1614
    iput-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1615
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v1, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1617
    return-void

    .line 1619
    :cond_3
    if-ne v4, v6, :cond_4

    .line 1621
    return-void

    .line 1623
    :cond_4
    if-nez v6, :cond_5

    .line 1625
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1627
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1628
    iput-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1629
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v4, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1631
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1635
    .end local v3    # "currentProfile":Landroid/telecom/VideoProfile;
    .end local v5    # "reqestProfile":Landroid/telecom/VideoProfile;
    .end local v6    # "decision":I
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [onSwitchRoaming] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    return-void
.end method

.method public updateCallRatInternal(I)V
    .locals 3
    .param p1, "callRat"    # I

    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [updateCallRatInternal] Start, callRat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [updateCallRatInternal] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    return-void
.end method

.method public updateProfileInternal(I)V
    .locals 4
    .param p1, "state"    # I

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [updateCurrentProfile] Start, state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v3, 0x2

    invoke-direct {v0, p1, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1662
    .local v0, "newVideoprofile":Landroid/telecom/VideoProfile;
    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 1664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [updateCurrentProfile] Finish"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    return-void
.end method

.method public waitInitComplete()V
    .locals 2

    .line 779
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    .line 781
    :try_start_0
    const-string v0, "ImsVT"

    const-string v1, "Wait for initialization complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 783
    :catch_0
    move-exception v0

    .line 784
    :goto_1
    goto :goto_0

    .line 786
    :cond_0
    return-void
.end method

.method public waitSessionOperationComplete()V
    .locals 2

    .line 756
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 763
    :cond_0
    return-void

    .line 758
    :cond_1
    :goto_1
    :try_start_0
    const-string v0, "ImsVT"

    const-string v1, "Wait for Session operation complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 760
    :catch_0
    move-exception v0

    .line 761
    :goto_2
    goto :goto_0
.end method
