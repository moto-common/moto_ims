.class public final Lcom/mediatek/ims/ril/ImsRILAdapter;
.super Lcom/mediatek/ims/ril/ImsBaseCommands;
.source "ImsRILAdapter.java"

# interfaces
.implements Lcom/mediatek/ims/ril/ImsCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;,
        Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;
    }
.end annotation


# static fields
.field static final AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

.field static final AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_AIDL_PROXY_DEAD:I = 0x9

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_MTK_AIDL_PROXY_DEAD:I = 0xa

.field static final EVENT_MTK_RADIO_PROXY_DEAD:I = 0x7

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_TRIGGER_AOSP_AIDL_PENDING_URC:I = 0xb

.field static final EVENT_TRIGGER_MTK_AIDL_PENDING_URC:I = 0xc

.field static final EVENT_TRIGGER_TO_FIRE_PENDING_URC:I = 0x8

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final IMSRIL_LOGD:Z = true

.field static final IMSRIL_LOGV:Z = false

.field static final IMSRIL_LOG_TAG:Ljava/lang/String; = "IMS_RILA"

.field static final IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final IMS_RILA_LOGD:Z = true

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0x3e8

.field static final MAX_SERVICE_IDX:I = 0x4

.field static final MIN_SERVICE_IDX:I = 0x0

.field static final MODEM_SERVICE:I = 0x3

.field static final MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final MTK_IMS_SERVICE:I = 0x1

.field public static final MTK_MAX_SERVICE_IDX:I = 0x3

.field public static final MTK_MIN_SERVICE_IDX:I = 0x0

.field public static final MTK_MODEM_SERVICE:I = 0x3

.field static final MTK_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_2_5:Lcom/android/internal/telephony/HalVersion;

.field static final MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

.field public static final MTK_RADIO_SERVICE:I = 0x0

.field public static final MTK_VOICE_SERVICE:I = 0x2

.field static final NETWORK_SERVICE:I = 0x4

.field static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field static final RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

.field public static final RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field static final RADIO_SERVICE:I = 0x0

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "IMSRIL_ACK_WL"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static final SIM_SERVICE:I = 0x2

.field static final VOICE_SERVICE:I = 0x1

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field mContext:Landroid/content/Context;

.field private final mDeathRecipients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

.field mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

.field mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

.field mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

.field mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

.field protected mIsCellularSupported:Z

.field mIsMobileNetworkSupported:Z

.field mLastNITZTimeInfo:[Ljava/lang/Object;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field public mModemIndication:Lcom/mediatek/ims/ril/ModemIndication;

.field public mModemResponse:Lcom/mediatek/ims/ril/ModemResponse;

.field private final mMtkDeathRecipients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mMtkRadioExImsIndication:Lcom/mediatek/ims/ril/MtkRadioExImsIndication;

.field private mMtkRadioExImsResponse:Lcom/mediatek/ims/ril/MtkRadioExImsResponse;

.field private mMtkRadioExModemIndication:Lcom/mediatek/ims/ril/MtkRadioExModemIndication;

.field private mMtkRadioExModemResponse:Lcom/mediatek/ims/ril/MtkRadioExModemResponse;

.field private mMtkRadioExVoiceIndication:Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;

.field private mMtkRadioExVoiceResponse:Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;

.field volatile mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

.field final mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

.field private mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

.field private final mMtkServiceCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field public mNetworkIndication:Lcom/mediatek/ims/ril/NetworkIndication;

.field public mNetworkResponse:Lcom/mediatek/ims/ril/NetworkResponse;

.field final mPhoneId:Ljava/lang/Integer;

.field private mRILDefaultWorkSource:Landroid/os/WorkSource;

.field mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

.field volatile mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

.field private mRadioVersion:Lcom/android/internal/telephony/HalVersion;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

.field private final mServiceCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceProxies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/RadioServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceProxiesMtk:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mSimIndication:Lcom/mediatek/ims/ril/SimIndication;

.field private mSimResponse:Lcom/mediatek/ims/ril/SimResponse;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVoiceIndication:Lcom/mediatek/ims/ril/VoiceIndication;

.field private mVoiceResponse:Lcom/mediatek/ims/ril/VoiceResponse;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 361
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 372
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 375
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    .line 378
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 381
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    .line 384
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    .line 387
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    .line 390
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v6, 0x5

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 393
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v7, 0x6

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 396
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 405
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 408
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    .line 411
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    .line 414
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    .line 417
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

    .line 420
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v3, v6}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_5:Lcom/android/internal/telephony/HalVersion;

    .line 423
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    .line 535
    const-string v0, "slot1"

    const-string v1, "slot2"

    const-string v2, "slot3"

    const-string v3, "slot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    .line 537
    const-string v0, "imsSlot1"

    const-string v1, "imsSlot2"

    const-string v2, "imsSlot3"

    const-string v3, "imsSlot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    .line 541
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 544
    const-string v0, "imsAospSlot1"

    const-string v1, "imsAospSlot2"

    const-string v2, "imsAospSlot3"

    const-string v3, "imsAospSlot4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # I

    .line 1408
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {p0 .. p2}, Lcom/mediatek/ims/ril/ImsBaseCommands;-><init>(Landroid/content/Context;I)V

    .line 345
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 358
    const/4 v4, 0x0

    iput v4, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    .line 359
    iput v4, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    .line 360
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    .line 367
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 399
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 402
    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 432
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 439
    new-instance v0, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 447
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    .line 448
    iput-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    .line 449
    iput-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 450
    iput-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 468
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    .line 469
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    .line 470
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 472
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    .line 487
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    .line 489
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    .line 492
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 493
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ims-RIL: init phone = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1413
    iput-object v2, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mContext:Landroid/content/Context;

    .line 1414
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1416
    const-string v0, "connectivity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 1418
    .local v8, "cm":Landroid/net/ConnectivityManager;
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    .line 1420
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 1422
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v9

    :goto_1
    iput-boolean v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsCellularSupported:Z

    .line 1425
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->isRadioVersion2_0()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1426
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->isMtkRadioExVersion4_0()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :cond_3
    goto :goto_2

    .line 1427
    :catch_0
    move-exception v0

    .line 1434
    :goto_2
    new-instance v0, Lcom/mediatek/ims/ril/RadioResponseImpl;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/RadioResponseImpl;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    .line 1435
    new-instance v0, Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/RadioIndicationImpl;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    .line 1436
    new-instance v0, Lcom/mediatek/ims/ril/ModemResponse;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ModemResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mModemResponse:Lcom/mediatek/ims/ril/ModemResponse;

    .line 1437
    new-instance v0, Lcom/mediatek/ims/ril/ModemIndication;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ModemIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mModemIndication:Lcom/mediatek/ims/ril/ModemIndication;

    .line 1438
    new-instance v0, Lcom/mediatek/ims/ril/NetworkResponse;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/NetworkResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNetworkResponse:Lcom/mediatek/ims/ril/NetworkResponse;

    .line 1439
    new-instance v0, Lcom/mediatek/ims/ril/NetworkIndication;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/NetworkIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNetworkIndication:Lcom/mediatek/ims/ril/NetworkIndication;

    .line 1440
    new-instance v0, Lcom/mediatek/ims/ril/SimResponse;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/SimResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSimResponse:Lcom/mediatek/ims/ril/SimResponse;

    .line 1441
    new-instance v0, Lcom/mediatek/ims/ril/SimIndication;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/SimIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSimIndication:Lcom/mediatek/ims/ril/SimIndication;

    .line 1442
    new-instance v0, Lcom/mediatek/ims/ril/VoiceResponse;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/VoiceResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVoiceResponse:Lcom/mediatek/ims/ril/VoiceResponse;

    .line 1443
    new-instance v0, Lcom/mediatek/ims/ril/VoiceIndication;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/VoiceIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVoiceIndication:Lcom/mediatek/ims/ril/VoiceIndication;

    .line 1445
    new-instance v0, Lcom/mediatek/ims/ril/ImsRadioResponse;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/ImsRadioResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    .line 1446
    new-instance v0, Lcom/mediatek/ims/ril/ImsRadioIndication;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/ImsRadioIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    .line 1447
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExModemResponse:Lcom/mediatek/ims/ril/MtkRadioExModemResponse;

    .line 1448
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExModemIndication;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExModemIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExModemIndication:Lcom/mediatek/ims/ril/MtkRadioExModemIndication;

    .line 1449
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExVoiceResponse:Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;

    .line 1450
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExVoiceIndication:Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;

    .line 1451
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExImsResponse:Lcom/mediatek/ims/ril/MtkRadioExImsResponse;

    .line 1452
    new-instance v0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExImsIndication:Lcom/mediatek/ims/ril/MtkRadioExImsIndication;

    .line 1454
    new-instance v0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 1455
    new-instance v0, Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    .line 1456
    new-instance v0, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    .line 1458
    const/4 v0, 0x0

    .local v0, "service":I
    :goto_3
    const/4 v11, 0x4

    if-gt v0, v11, :cond_5

    .line 1459
    if-eqz v0, :cond_4

    .line 1460
    iget-object v11, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    new-instance v12, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    invoke-direct {v12, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    invoke-virtual {v11, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1463
    :cond_4
    iget-object v11, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    new-instance v12, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v12, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v11, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1458
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1467
    .end local v0    # "service":I
    :cond_5
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v12, Lcom/mediatek/ims/ril/RadioModemProxy;

    invoke-direct {v12}, Lcom/mediatek/ims/ril/RadioModemProxy;-><init>()V

    const/4 v13, 0x3

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1468
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v12, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    invoke-direct {v12}, Lcom/mediatek/ims/ril/RadioNetworkProxy;-><init>()V

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1469
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v12, Lcom/mediatek/ims/ril/RadioSimProxy;

    invoke-direct {v12}, Lcom/mediatek/ims/ril/RadioSimProxy;-><init>()V

    const/4 v14, 0x2

    invoke-virtual {v0, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1470
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v12, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-direct {v12}, Lcom/mediatek/ims/ril/RadioVoiceProxy;-><init>()V

    invoke-virtual {v0, v9, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1472
    const/4 v0, 0x0

    .restart local v0    # "service":I
    :goto_4
    if-gt v0, v13, :cond_7

    .line 1473
    if-eqz v0, :cond_6

    .line 1474
    iget-object v12, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    new-instance v15, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;

    invoke-direct {v15, v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    invoke-virtual {v12, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1476
    :cond_6
    iget-object v12, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    new-instance v15, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v15, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v12, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1472
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1480
    .end local v0    # "service":I
    :cond_7
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    new-instance v6, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-direct {v6}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;-><init>()V

    invoke-virtual {v0, v13, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1482
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    new-instance v6, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    invoke-direct {v6}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;-><init>()V

    invoke-virtual {v0, v14, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1483
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    new-instance v6, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-direct {v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;-><init>()V

    invoke-virtual {v0, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1485
    const-string v0, "power"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1486
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v6, "IMS_RILA"

    invoke-virtual {v0, v9, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1487
    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1488
    const-string v6, "IMSRIL_ACK_WL"

    invoke-virtual {v0, v9, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1489
    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1490
    const v6, 0xea60

    const-string v7, "ro.ril.wake_lock_timeout"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockTimeout:I

    .line 1492
    const/16 v6, 0xc8

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLockTimeout:I

    .line 1494
    iput v4, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 1495
    new-instance v6, Landroid/os/WorkSource;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1496
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v7, v12}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1500
    const/4 v6, 0x0

    .local v6, "service":I
    :goto_5
    const-wide/16 v14, 0x3e8

    const-string v7, "Ims-RIL:["

    if-gt v6, v11, :cond_b

    .line 1501
    if-nez v6, :cond_9

    .line 1502
    invoke-direct {v1, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v7

    .line 1504
    .local v7, "proxy":Landroid/hardware/radio/V1_0/IRadio;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ims-RIL: proxy = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v7, :cond_8

    move v14, v9

    goto :goto_6

    :cond_8
    move v14, v4

    :goto_6
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1506
    .end local v7    # "proxy":Landroid/hardware/radio/V1_0/IRadio;
    goto :goto_7

    .line 1509
    :cond_9
    invoke-virtual {v1, v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v12

    .line 1511
    .local v12, "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ims-RIL: serviceProxy.isAidl = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v12}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isAidl()Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1513
    iget-object v9, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v11, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v12}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1515
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "], send EVENT_TRIGGER_AOSP_AIDL_PENDING_URC"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1516
    iget-object v7, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v9, 0xb

    .line 1517
    invoke-virtual {v7, v9, v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 1516
    invoke-virtual {v7, v9, v14, v15}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1500
    .end local v12    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    :cond_a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x4

    goto/16 :goto_5

    .line 1524
    .end local v6    # "service":I
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "service":I
    :goto_8
    if-gt v6, v13, :cond_f

    .line 1525
    if-nez v6, :cond_d

    .line 1526
    invoke-direct {v1, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v9

    .line 1528
    .local v9, "mtkRadioProxy":Landroid/hidl/base/V1_0/IBase;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mtk-Ims-RIL: mtkRadioProxy = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v9, :cond_c

    const/4 v12, 0x1

    goto :goto_9

    :cond_c
    move v12, v4

    :goto_9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1530
    .end local v9    # "mtkRadioProxy":Landroid/hidl/base/V1_0/IBase;
    goto :goto_a

    .line 1533
    :cond_d
    invoke-virtual {v1, v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v9

    .line 1535
    .local v9, "mtkServiceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mtk-Ims-RIL: mtkServiceProxy.isAidl = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isAidl()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1537
    iget-object v11, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v12, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v9}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1539
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], send EVENT_TRIGGER_MTK_AIDL_PENDING_URC "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1540
    iget-object v11, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v12, 0xc

    .line 1541
    invoke-virtual {v11, v12, v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 1540
    invoke-virtual {v11, v12, v14, v15}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1524
    .end local v9    # "mtkServiceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :cond_e
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 1548
    .end local v6    # "service":I
    :cond_f
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 323
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Lcom/mediatek/ims/ril/RILRequest;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 323
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 323
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetMtkProxyAndRequestList(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/Message;

    .line 323
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/Message;

    .line 323
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Lcom/android/internal/telephony/HalVersion;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 323
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method

.method static synthetic access$1400(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 323
    invoke-static {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->mtkServiceToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 323
    invoke-static {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 323
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ril/ImsRILAdapter;Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 323
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 323
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p1, "x1"    # I

    .line 323
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetProxyAndRequestList(I)V

    return-void
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 323
    invoke-static {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->serviceToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/ril/ImsRILAdapter;)Lcom/android/internal/telephony/HalVersion;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 323
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 323
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    return-object v0
.end method

.method private acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "wakeLockType"    # I

    .line 4686
    monitor-enter p1

    .line 4687
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4688
    const-string v0, "IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to aquire wakelock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4689
    monitor-exit p1

    return-void

    .line 4692
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 4728
    const-string v0, "IMS_RILA"

    goto/16 :goto_2

    .line 4718
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4719
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4720
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    .line 4722
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4723
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 4724
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4725
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 4726
    goto :goto_1

    .line 4725
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_2
    throw v1

    .line 4694
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4695
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4696
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 4697
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    .line 4699
    iget-object v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 4700
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4701
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_1

    .line 4702
    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_0

    .line 4704
    :cond_1
    iget-object v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4706
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4709
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 4712
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4713
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 4714
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4715
    nop

    .end local v1    # "clientId":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4716
    nop

    .line 4731
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 4732
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4733
    return-void

    .line 4715
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local p2    # "wakeLockType":I
    :try_start_6
    throw v1

    .line 4728
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .restart local p2    # "wakeLockType":I
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    monitor-exit p1

    return-void

    .line 4732
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addRequest(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 1551
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 1552
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1553
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    .line 1554
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1555
    monitor-exit v0

    .line 1556
    return-void

    .line 1555
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addToRilHistogram(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 9
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 4835
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4836
    .local v0, "endTime":J
    iget-wide v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 4838
    .local v2, "totalTime":I
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v3

    .line 4839
    :try_start_0
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    .line 4840
    .local v4, "entry":Landroid/telephony/TelephonyHistogram;
    if-nez v4, :cond_0

    .line 4842
    new-instance v5, Landroid/telephony/TelephonyHistogram;

    const/4 v6, 0x1

    iget v7, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    move-object v4, v5

    .line 4844
    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    iget v6, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4846
    :cond_0
    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 4847
    .end local v4    # "entry":Landroid/telephony/TelephonyHistogram;
    monitor-exit v3

    .line 4848
    return-void

    .line 4847
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private clearWakeLock(I)Z
    .locals 6
    .param p1, "wakeLockType"    # I

    .line 4774
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 4775
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 4776
    :try_start_0
    iget v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    .line 4777
    :cond_0
    const-string v3, "IMS_RILA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTE: mWakeLockCount is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "at time of clearing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    iput v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 4780
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4781
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 4782
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4783
    monitor-exit v2

    return v0

    .line 4784
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4786
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 4787
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    .line 4788
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4789
    monitor-exit v2

    return v0

    .line 4790
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public static convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 1583
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V
    .locals 8
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 4736
    monitor-enter p1

    .line 4737
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    packed-switch v0, :pswitch_data_0

    .line 4767
    const-string v0, "IMS_RILA"

    goto :goto_2

    .line 4763
    :pswitch_0
    goto :goto_3

    .line 4739
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4740
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    iget v4, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 4742
    iget v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 4740
    :goto_0
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 4743
    iget-object v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 4744
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_2

    .line 4746
    iget-object v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 4747
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 4748
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 4750
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4753
    :cond_2
    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    if-le v2, v7, :cond_3

    .line 4754
    sub-int/2addr v2, v7

    iput v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    goto :goto_1

    .line 4756
    :cond_3
    iput v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    .line 4757
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4759
    .end local v1    # "clientId":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    .line 4760
    goto :goto_3

    .line 4759
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_2
    throw v1

    .line 4765
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :pswitch_2
    goto :goto_3

    .line 4767
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4769
    :goto_3
    const/4 v0, -0x1

    iput v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 4770
    monitor-exit p1

    .line 4771
    return-void

    .line 4770
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private emergencyDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "callprofile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p5, "result"    # Landroid/os/Message;

    .line 2954
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2955
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2956
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2957
    const/16 v1, 0x827

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 2962
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2966
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2967
    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2966
    move-object v1, v0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->emergencyDial(ILjava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2971
    goto :goto_0

    .line 2969
    :catch_0
    move-exception v1

    .line 2970
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "emergencyDial"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2973
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_1
    :goto_0
    return-void
.end method

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;
    .locals 3
    .param p1, "serial"    # I

    .line 4823
    const/4 v0, 0x0

    .line 4824
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4825
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/RILRequest;

    move-object v0, v2

    .line 4826
    if-eqz v0, :cond_0

    .line 4827
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4829
    :cond_0
    monitor-exit v1

    .line 4831
    return-object v0

    .line 4829
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getDeafultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 0
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 4486
    if-nez p1, :cond_0

    .line 4487
    iget-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 4490
    :cond_0
    return-object p1
.end method

.method private getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;
    .locals 7
    .param p1, "result"    # Landroid/os/Message;

    .line 5467
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 5469
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    if-nez v0, :cond_1

    .line 5471
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 5472
    return-object v1

    .line 5475
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v0, :cond_2

    .line 5476
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    return-object v0

    .line 5479
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 5480
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_6

    .line 5489
    :cond_3
    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5492
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 5491
    invoke-static {v3, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5496
    goto :goto_0

    .line 5493
    :catch_0
    move-exception v3

    .line 5494
    .local v3, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtkRadioProxy getServiceV3_0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5498
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    const-string v4, "getMtkRadioProxy mMtkRadioVersion = "

    if-eqz v3, :cond_5

    .line 5500
    :try_start_1
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5501
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5502
    invoke-static {v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5505
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v3, :cond_4

    .line 5506
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    .line 5508
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 5507
    invoke-interface {v3, v4, v5, v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 5509
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponse:Lcom/mediatek/ims/ril/ImsRadioResponse;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndication:Lcom/mediatek/ims/ril/ImsRadioIndication;

    .line 5510
    invoke-interface {v3, v4, v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V3_0/IImsRadioIndication;)V

    goto :goto_1

    .line 5512
    :cond_4
    const-string v3, "getMtkRadioProxy setResponseFunctionsMtkV3_0: error, castFrom failed."

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 5514
    :catch_1
    move-exception v3

    .line 5515
    .restart local v3    # "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtkRadioProxy setResponseFunctionsMtkV3_0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5517
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto/16 :goto_5

    .line 5520
    :cond_5
    :try_start_2
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5523
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v3, v5

    .line 5522
    invoke-static {v3, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5527
    goto :goto_2

    .line 5524
    :catch_2
    move-exception v3

    .line 5525
    .restart local v3    # "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5526
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMtkRadioProxy getServiceV2_0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5528
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v3, :cond_b

    .line 5529
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    if-nez v3, :cond_6

    .line 5530
    new-instance v3, Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, p0, v5}, Lcom/mediatek/ims/ril/ImsRadioResponseV2;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    .line 5532
    :cond_6
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    if-nez v3, :cond_7

    .line 5533
    new-instance v3, Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, p0, v5}, Lcom/mediatek/ims/ril/ImsRadioIndicationV2;-><init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    .line 5536
    :cond_7
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    invoke-static {v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 5538
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5539
    invoke-static {v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5541
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 5542
    :cond_8
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    invoke-static {v3}, Lvendor/mediatek/hardware/mtkradioex/V2_1/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_1/IMtkRadioEx;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 5544
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5545
    invoke-static {v3}, Lvendor/mediatek/hardware/mtkradioex/V2_1/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_1/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5547
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 5549
    :cond_9
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5551
    invoke-static {v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->castFrom(Landroid/os/IHwInterface;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5552
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5554
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5555
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v3, :cond_a

    .line 5556
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    .line 5558
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 5557
    invoke-interface {v3, v4, v5, v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 5559
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioResponseV2:Lcom/mediatek/ims/ril/ImsRadioResponseV2;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRadioIndicationV2:Lcom/mediatek/ims/ril/ImsRadioIndicationV2;

    .line 5560
    invoke-interface {v3, v4, v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;)V

    goto :goto_4

    .line 5562
    :cond_a
    const-string v3, "getMtkRadioProxy setResponseFunctionsV2: error, castFrom failed."

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5567
    :goto_4
    goto :goto_5

    .line 5564
    :catch_3
    move-exception v3

    .line 5565
    .restart local v3    # "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    .line 5566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtkRadioProxy setResponseFunctionsV2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5571
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_5
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-nez v3, :cond_d

    .line 5572
    if-eqz p1, :cond_c

    .line 5573
    const/4 v3, 0x1

    .line 5574
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 5573
    invoke-static {p1, v1, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5575
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5579
    :cond_c
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 5580
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    .line 5582
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 5581
    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 5580
    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5586
    :cond_d
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    return-object v0

    .line 5483
    :cond_e
    :goto_6
    const-string v0, "getMtkRadioProxy service died, we try again later"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5484
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 5485
    return-object v1
.end method

.method private getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;
    .locals 9
    .param p1, "result"    # Landroid/os/Message;

    .line 1280
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1281
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsMobileNetworkSupported:Z

    if-nez v0, :cond_1

    .line 1283
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 1284
    return-object v1

    .line 1287
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v0, :cond_2

    .line 1288
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0

    .line 1291
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_3

    .line 1305
    const-string v0, "getRadioProxy service died, we try again later"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1306
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 1307
    return-object v1

    .line 1308
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioProxy, phone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not valid or is disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1316
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleProxyNotExist(Landroid/os/Message;)V

    .line 1317
    return-object v1

    .line 1322
    :cond_4
    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1323
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    .line 1322
    invoke-static {v4, v3}, Landroid/hardware/radio/V1_0/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1324
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    goto :goto_0

    .line 1383
    :catch_0
    move-exception v4

    goto/16 :goto_4

    .line 1325
    :catch_1
    move-exception v4

    .line 1326
    .local v4, "e":Ljava/util/NoSuchElementException;
    :try_start_1
    const-string v5, "getRadioProxy: NoSuchElementException "

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1329
    .end local v4    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v4, :cond_a

    .line 1330
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1331
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1332
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_1

    .line 1333
    :cond_5
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1334
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1335
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_1

    .line 1336
    :cond_6
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1337
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1338
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_1

    .line 1339
    :cond_7
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1340
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1341
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_1

    .line 1342
    :cond_8
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1343
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v4}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1344
    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1346
    :cond_9
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioProxy: mRadioVersion "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1349
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioProxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1350
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v4, :cond_e

    .line 1351
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 1352
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v6

    .line 1351
    invoke-interface {v4, v5, v6, v7}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1353
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-interface {v4, v5, v6}, Landroid/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 1354
    const-string v4, "setResponseFunctionsIms"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1356
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    if-eqz v4, :cond_f

    .line 1357
    monitor-enter v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1359
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queue size  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1360
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    sub-int/2addr v5, v0

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_b

    .line 1361
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 1360
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1363
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queue size  after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1364
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 1365
    const-string v6, "reset pending switch request"

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1367
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1368
    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v6

    .line 1369
    .local v6, "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v7, v6, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 1370
    .local v7, "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v8, v7, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_c

    .line 1371
    iget-object v8, v7, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1372
    iget-object v8, v7, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1375
    :cond_c
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->resetSendChldRequest()V

    .line 1376
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1378
    .end local v5    # "i":I
    .end local v6    # "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v7    # "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    :cond_d
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .end local p1    # "result":Landroid/os/Message;
    :try_start_3
    throw v5

    .line 1381
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    .restart local p1    # "result":Landroid/os/Message;
    :cond_e
    const-string v4, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1386
    :cond_f
    :goto_3
    goto :goto_5

    .line 1384
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1388
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_5
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v4, :cond_11

    .line 1389
    if-eqz p1, :cond_10

    .line 1390
    nop

    .line 1391
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1390
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1392
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1395
    :cond_10
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 1396
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 1398
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1397
    invoke-virtual {v0, v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 1396
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1402
    :cond_11
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0
.end method

.method private static getResponseForTimedOutRILRequest(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;
    .locals 9
    .param p0, "rr"    # Lcom/mediatek/ims/ril/RILRequest;

    .line 812
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 814
    :cond_0
    const/4 v0, 0x0

    .line 815
    .local v0, "timeoutResponse":Ljava/lang/Object;
    iget v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 817
    :pswitch_0
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 818
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v2

    new-array v7, v2, [I

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    move-object v0, v1

    .line 821
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x87
        :pswitch_0
    .end packed-switch
.end method

.method public static getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 556
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 557
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 558
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 559
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 560
    .local v3, "entry":Landroid/telephony/TelephonyHistogram;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    nop

    .end local v3    # "entry":Landroid/telephony/TelephonyHistogram;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 563
    return-object v1

    .line 562
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 4494
    if-eqz p1, :cond_0

    .line 4495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4498
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 4022
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 4023
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    .line 4025
    .local v1, "queueSize":I
    if-lez v1, :cond_5

    .line 4026
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->get()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 4027
    .local v2, "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 4028
    .local v3, "rr2":Lcom/mediatek/ims/ril/RILRequest;
    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v5, 0x31

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    .line 4030
    const-string v4, "DTMF queue isn\'t 0, first request is START, send stop dtmf and pending switch"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4032
    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 4033
    const/4 v5, 0x2

    .local v5, "j":I
    goto :goto_0

    .line 4036
    .end local v5    # "j":I
    :cond_0
    const/4 v5, 0x1

    .line 4038
    .restart local v5    # "j":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queue size  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4039
    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_1
    if-lt v7, v5, :cond_1

    .line 4040
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 4039
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 4042
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queue size  after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v9}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4043
    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v8

    if-ne v8, v4, :cond_3

    .line 4045
    const-string v8, "add dummy stop dtmf request"

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4046
    const/16 v8, 0x32

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v8, v6, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 4049
    .local v8, "rr3":Lcom/mediatek/ims/ril/RILRequest;
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    .line 4050
    .local v4, "myParam":[Ljava/lang/Object;
    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v9, v8, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v9

    .line 4052
    .local v9, "dqrr3":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v10}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->stop()V

    .line 4053
    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v10, v9}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4054
    .end local v4    # "myParam":[Ljava/lang/Object;
    .end local v8    # "rr3":Lcom/mediatek/ims/ril/RILRequest;
    .end local v9    # "dqrr3":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_3

    .line 4059
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_2
    const-string v4, "DTMF queue isn\'t 0, first request is STOP, penging switch"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4060
    const/4 v5, 0x1

    .line 4061
    .restart local v5    # "j":I
    add-int/lit8 v4, v1, -0x1

    move v7, v4

    .restart local v7    # "i":I
    :goto_2
    if-lt v7, v5, :cond_3

    .line 4062
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(I)V

    .line 4061
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 4068
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 4069
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 4070
    .local v4, "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v8, v4, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 4071
    .local v8, "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v9, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v9, :cond_4

    .line 4072
    iget-object v9, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v9, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4073
    iget-object v6, v8, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 4077
    .end local v4    # "pendingDqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v8    # "pendingRequest":Lcom/mediatek/ims/ril/RILRequest;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 4078
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4079
    .end local v2    # "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    goto :goto_4

    .line 4080
    .end local v5    # "j":I
    .end local v7    # "i":I
    :cond_5
    const-string v2, "DTMF queue is 0, send switch Immediately"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4081
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setSendChldRequest()V

    .line 4082
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 4083
    .local v2, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4085
    .end local v1    # "queueSize":I
    .end local v2    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :goto_4
    monitor-exit v0

    .line 4086
    return-void

    .line 4085
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "service"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1573
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetMtkProxyAndRequestList(I)V

    .line 1574
    return-void
.end method

.method private handleProxyNotExist(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 5459
    if-eqz p1, :cond_0

    .line 5460
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5461
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 5460
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5462
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5464
    :cond_0
    return-void
.end method

.method private handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "service"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1567
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->resetProxyAndRequestList(I)V

    .line 1568
    return-void
.end method

.method private internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToAdd"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3934
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3936
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3937
    const/16 v1, 0x82a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3941
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3942
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " confCallId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3943
    invoke-static {p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callIdToAdd ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3941
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3948
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x1

    move-object v1, v0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->controlImsConferenceCallMember(IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3952
    goto :goto_0

    .line 3950
    :catch_0
    move-exception v1

    .line 3951
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "addImsConferenceCallMember"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3954
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method private internalImsEct(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3994
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3995
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3997
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3998
    const/16 v1, 0x823

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4002
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4006
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->imsEctCommand(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4009
    goto :goto_0

    .line 4007
    :catch_0
    move-exception v2

    .line 4008
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "imsEctCommand"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4011
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private internalRemoveConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToRemove"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3965
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3967
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3968
    const/16 v1, 0x82b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3972
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3973
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " confCallId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3974
    invoke-static {p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callIdToRemove ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3972
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3979
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    move-object v1, v0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->controlImsConferenceCallMember(IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3983
    goto :goto_0

    .line 3981
    :catch_0
    move-exception v1

    .line 3982
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "removeImsConferenceCallMember"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3985
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method private isMtkRadioExVersion4_0()Z
    .locals 9

    .line 926
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->DESCRIPTOR:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->DESCRIPTOR:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->DESCRIPTOR:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 931
    .local v0, "serviceNames":[Ljava/lang/String;
    array-length v1, v0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 932
    .local v5, "serviceName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 933
    return v3

    .line 931
    .end local v5    # "serviceName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 936
    :cond_1
    return v2
.end method

.method private isRadioVersion2_0()Z
    .locals 9

    .line 911
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/hardware/radio/modem/IRadioModem;->DESCRIPTOR:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/radio/sim/IRadioSim;->DESCRIPTOR:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/radio/voice/IRadioVoice;->DESCRIPTOR:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 917
    .local v0, "serviceNames":[Ljava/lang/String;
    array-length v1, v0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 918
    .local v5, "serviceName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 919
    return v3

    .line 917
    .end local v5    # "serviceName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 922
    :cond_1
    return v2
.end method

.method private static mtkServiceToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "service"    # I

    .line 5988
    packed-switch p0, :pswitch_data_0

    .line 6006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6000
    :pswitch_0
    const-string v0, "MTK_MODEM"

    return-object v0

    .line 6002
    :pswitch_1
    const-string v0, "MTK_VOICE"

    return-object v0

    .line 6004
    :pswitch_2
    const-string v0, "MTK_IMS_SERVICE"

    return-object v0

    .line 5990
    :pswitch_3
    const-string v0, "MTK_RADIO"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;
    .locals 1
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 1559
    invoke-static {p1, p2, p3}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 1560
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->addRequest(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 1561
    return-object v0
.end method

.method private processResponseDoneInternal(Lcom/mediatek/ims/ril/RILRequest;IILjava/lang/Object;)V
    .locals 7
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "rilError"    # I
    .param p3, "responseType"    # I
    .param p4, "ret"    # Ljava/lang/Object;

    .line 4367
    const-string v0, "< "

    if-nez p2, :cond_0

    .line 4376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4377
    invoke-static {v1, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4376
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 4383
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4386
    invoke-virtual {p1, p2, p4}, Lcom/mediatek/ims/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 4388
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v5, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    move v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    .line 4391
    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0x34

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    const/16 v1, 0x48

    if-ne v0, v1, :cond_2

    .line 4395
    :cond_1
    const-string v0, "clear mIsSendChldRequest"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4396
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->resetSendChldRequest()V

    .line 4399
    :cond_2
    if-nez p3, :cond_3

    .line 4400
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4402
    :cond_3
    invoke-virtual {p1}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4403
    return-void
.end method

.method private processResponseInternal(IIIIZ)Lcom/mediatek/ims/ril/RILRequest;
    .locals 4
    .param p1, "service"    # I
    .param p2, "serial"    # I
    .param p3, "error"    # I
    .param p4, "type"    # I
    .param p5, "isProprietary"    # Z

    .line 4270
    const/4 v0, 0x0

    .line 4272
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 4273
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4274
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/RILRequest;

    move-object v0, v2

    .line 4275
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4276
    if-nez v0, :cond_0

    .line 4277
    const-string v1, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected solicited ack response! sn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4279
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ack from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->serviceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4282
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4281
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4285
    :goto_0
    return-object v0

    .line 4275
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4288
    :cond_1
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 4289
    if-nez v0, :cond_2

    .line 4290
    const-string v1, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: Unexpected response! serial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    const/4 v1, 0x0

    return-object v1

    .line 4296
    :cond_2
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->addToRilHistogram(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4298
    const/4 v1, 0x2

    if-ne p4, v1, :cond_4

    .line 4299
    if-eqz p5, :cond_3

    .line 4300
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendMtkAck(I)V

    goto :goto_1

    .line 4302
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendAck(I)V

    .line 4305
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response received from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->serviceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4306
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Sending ack to ril.cpp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4305
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4316
    :cond_4
    iget v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 4318
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(IZ)V

    .line 4323
    :goto_2
    nop

    .line 4328
    return-object v0

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .line 5062
    sparse-switch p0, :sswitch_data_0

    .line 5192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5162
    :sswitch_0
    const-string v0, "RIL_REQUEST_SET_BARRING_SEPCIFIC_CALL"

    return-object v0

    .line 5160
    :sswitch_1
    const-string v0, "RIL_REQUEST_GET_BARRING_SEPCIFIC_CALL"

    return-object v0

    .line 5190
    :sswitch_2
    const-string v0, "RIL_REQUEST_VIDEO_RINGTONE_EVENT"

    return-object v0

    .line 5188
    :sswitch_3
    const-string v0, "RIL_REQUEST_SET_CALL_ADDITIONAL_INFO"

    return-object v0

    .line 5087
    :sswitch_4
    const-string v0, "ECC_REDIAL_APPROVE"

    return-object v0

    .line 5185
    :sswitch_5
    const-string v0, "RIL_REQUEST_TOGGLE_RTT_AUDIO_INDICATION"

    return-object v0

    .line 5183
    :sswitch_6
    const-string v0, "RIL_REQUEST_QUERY_SSAC_STATUS"

    return-object v0

    .line 5181
    :sswitch_7
    const-string v0, "RIL_REQUEST_SET_IMS_CALL_MODE"

    return-object v0

    .line 5179
    :sswitch_8
    const-string v0, "RIL_REQUEST_SIP_HEADER_REPORT"

    return-object v0

    .line 5177
    :sswitch_9
    const-string v0, "RIL_REQUEST_SET_SIP_HEADER"

    return-object v0

    .line 5074
    :sswitch_a
    const-string v0, "HANGUP_WITH_REASON"

    return-object v0

    .line 5174
    :sswitch_b
    const-string v0, "RIL_REQUEST_QUERY_VOPS_STATUS"

    return-object v0

    .line 5173
    :sswitch_c
    const-string v0, "RIL_REQUEST_RTT_MODIFY_REQUST_RESPONSE"

    return-object v0

    .line 5171
    :sswitch_d
    const-string v0, "RIL_REQUEST_SEND_RTT_TEXT"

    return-object v0

    .line 5169
    :sswitch_e
    const-string v0, "RIL_REQUEST_SEND_RTT_MODIFY_REQUEST"

    return-object v0

    .line 5167
    :sswitch_f
    const-string v0, "RIL_REQUEST_SET_RTT_MODE"

    return-object v0

    .line 5134
    :sswitch_10
    const-string v0, "CDMA_SMS_ACKNOWLEDGE_EX"

    return-object v0

    .line 5133
    :sswitch_11
    const-string v0, "RIL_REQUEST_SMS_ACKNOWLEDGE_EX"

    return-object v0

    .line 5158
    :sswitch_12
    const-string v0, "SETUP_XCAP_USER_AGENT_STRING"

    return-object v0

    .line 5164
    :sswitch_13
    const-string v0, "RIL_REQUEST_SET_RCS_UA_ENABLE"

    return-object v0

    .line 5157
    :sswitch_14
    const-string v0, "RIL_REQUEST_RESET_SUPP_SERV"

    return-object v0

    .line 5156
    :sswitch_15
    const-string v0, "RIL_REQUEST_GET_XCAP_STATUS"

    return-object v0

    .line 5100
    :sswitch_16
    const-string v0, "IMS_CONFIG_GET_RESOURCE_CAP"

    return-object v0

    .line 5098
    :sswitch_17
    const-string v0, "IMS_CONFIG_GET_PROVISION"

    return-object v0

    .line 5096
    :sswitch_18
    const-string v0, "IMS_CONFIG_SET_PROVISION"

    return-object v0

    .line 5094
    :sswitch_19
    const-string v0, "IMS_CONFIG_GET_FEATURE"

    return-object v0

    .line 5092
    :sswitch_1a
    const-string v0, "IMS_CONFIG_SET_FEATURE"

    return-object v0

    .line 5104
    :sswitch_1b
    const-string v0, "RIL_REQUEST_SET_IMS_BEARER_NOTIFICATION"

    return-object v0

    .line 5132
    :sswitch_1c
    const-string v0, "RIL_REQUEST_IMS_SEND_SMS_EX"

    return-object v0

    .line 5130
    :sswitch_1d
    const-string v0, "ImsRILConstants.RIL_REQUEST_SET_MD_IMSCFG"

    return-object v0

    .line 5155
    :sswitch_1e
    const-string v0, "RIL_REQUEST_RUN_GBA"

    return-object v0

    .line 5154
    :sswitch_1f
    const-string v0, "SET_CALL_FORWARD_IN_TIME_SLOT"

    return-object v0

    .line 5153
    :sswitch_20
    const-string v0, "QUERY_CALL_FORWARD_IN_TIME_SLOT"

    return-object v0

    .line 5151
    :sswitch_21
    const-string v0, "SET_COLR"

    return-object v0

    .line 5149
    :sswitch_22
    const-string v0, "SET_COLP"

    return-object v0

    .line 5129
    :sswitch_23
    const-string v0, "RIL_REQUEST_SET_VOICE_DOMAIN_PREFERENCE"

    return-object v0

    .line 5150
    :sswitch_24
    const-string v0, "GET_COLR"

    return-object v0

    .line 5148
    :sswitch_25
    const-string v0, "GET_COLP"

    return-object v0

    .line 5147
    :sswitch_26
    const-string v0, "SET_CLIP"

    return-object v0

    .line 5118
    :sswitch_27
    const-string v0, "IMS_VT_DIAL"

    return-object v0

    .line 5117
    :sswitch_28
    const-string v0, "IMS_DIAL"

    return-object v0

    .line 5115
    :sswitch_29
    const-string v0, "SET_IMS_REGISTRATION_REPORT"

    return-object v0

    .line 5116
    :sswitch_2a
    const-string v0, "PULL_CALL"

    return-object v0

    .line 5113
    :sswitch_2b
    const-string v0, "SET_WFC_PROFILE"

    return-object v0

    .line 5112
    :sswitch_2c
    const-string v0, "CANCEL_USSI"

    return-object v0

    .line 5111
    :sswitch_2d
    const-string v0, "SEND_USSI"

    return-object v0

    .line 5110
    :sswitch_2e
    const-string v0, "VT_DIAL_WITH_SIP_URI"

    return-object v0

    .line 5125
    :sswitch_2f
    const-string v0, "RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 5123
    :sswitch_30
    const-string v0, "RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 5121
    :sswitch_31
    const-string v0, "RIL_REQUEST_CONFERENCE_DIAL"

    return-object v0

    .line 5120
    :sswitch_32
    const-string v0, "ImsRILConstants.RIL_REQUEST_SET_IMS_RTP_REPORT"

    return-object v0

    .line 5119
    :sswitch_33
    const-string v0, "IMS_EMERGENCY_DIAL"

    return-object v0

    .line 5108
    :sswitch_34
    const-string v0, "RESUME_CALL"

    return-object v0

    .line 5107
    :sswitch_35
    const-string v0, "HOLD_CALL"

    return-object v0

    .line 5106
    :sswitch_36
    const-string v0, "IMS_ECT"

    return-object v0

    .line 5105
    :sswitch_37
    const-string v0, "IMS_DEREG_NOTIFICATION"

    return-object v0

    .line 5102
    :sswitch_38
    const-string v0, "IMS_BEARER_STATE_CONFIRM"

    return-object v0

    .line 5090
    :sswitch_39
    const-string v0, "SET_PROVISION_VALUE"

    return-object v0

    .line 5089
    :sswitch_3a
    const-string v0, "GET_PROVISION_VALUE"

    return-object v0

    .line 5088
    :sswitch_3b
    const-string v0, "SET_IMSCFG"

    return-object v0

    .line 5086
    :sswitch_3c
    const-string v0, "VIDEO_CALL_ACCEPT"

    return-object v0

    .line 5085
    :sswitch_3d
    const-string v0, "SET_VIWIFI_ENABLE"

    return-object v0

    .line 5084
    :sswitch_3e
    const-string v0, "SET_VILTE_ENABLE"

    return-object v0

    .line 5083
    :sswitch_3f
    const-string v0, "SET_WFC_ENABLE"

    return-object v0

    .line 5082
    :sswitch_40
    const-string v0, "SET_VOLTE_ENABLE"

    return-object v0

    .line 5081
    :sswitch_41
    const-string v0, "SET_IMS_ENABLE"

    return-object v0

    .line 5109
    :sswitch_42
    const-string v0, "SET_ECC_LIST"

    return-object v0

    .line 5075
    :sswitch_43
    const-string v0, "HANGUP_ALL"

    return-object v0

    .line 5127
    :sswitch_44
    const-string v0, "RIL_REQUEST_SET_CALL_INDICATION"

    return-object v0

    .line 5072
    :sswitch_45
    const-string v0, "GET_ACTIVITY_INFO"

    return-object v0

    .line 5078
    :sswitch_46
    const-string v0, "SHUTDOWN"

    return-object v0

    .line 5070
    :sswitch_47
    const-string v0, "EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 5071
    :sswitch_48
    const-string v0, "EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 5146
    :sswitch_49
    const-string v0, "QUERY_CLIP"

    return-object v0

    .line 5077
    :sswitch_4a
    const-string v0, "SET_MUTE"

    return-object v0

    .line 5068
    :sswitch_4b
    const-string v0, "DTMF_STOP"

    return-object v0

    .line 5067
    :sswitch_4c
    const-string v0, "DTMF_START"

    return-object v0

    .line 5145
    :sswitch_4d
    const-string v0, "CHANGE_BARRING_PASSWORD"

    return-object v0

    .line 5144
    :sswitch_4e
    const-string v0, "SET_FACILITY_LOCK"

    return-object v0

    .line 5143
    :sswitch_4f
    const-string v0, "QUERY_FACILITY_LOCK"

    return-object v0

    .line 5063
    :sswitch_50
    const-string v0, "ANSWER"

    return-object v0

    .line 5142
    :sswitch_51
    const-string v0, "SET_CALL_WAITING"

    return-object v0

    .line 5141
    :sswitch_52
    const-string v0, "QUERY_CALL_WAITING"

    return-object v0

    .line 5138
    :sswitch_53
    const-string v0, "SET_CALL_FORWARD"

    return-object v0

    .line 5137
    :sswitch_54
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 5140
    :sswitch_55
    const-string v0, "SET_CLIR"

    return-object v0

    .line 5139
    :sswitch_56
    const-string v0, "GET_CLIR"

    return-object v0

    .line 5066
    :sswitch_57
    const-string v0, "DTMF"

    return-object v0

    .line 5076
    :sswitch_58
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 5064
    :sswitch_59
    const-string v0, "CONFERENCE"

    return-object v0

    .line 5080
    :sswitch_5a
    const-string v0, "SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 5073
    :sswitch_5b
    const-string v0, "HANGUP"

    return-object v0

    .line 5065
    :sswitch_5c
    const-string v0, "DIAL"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5c
        0xc -> :sswitch_5b
        0xf -> :sswitch_5a
        0x10 -> :sswitch_59
        0x12 -> :sswitch_58
        0x18 -> :sswitch_57
        0x1f -> :sswitch_56
        0x20 -> :sswitch_55
        0x21 -> :sswitch_54
        0x22 -> :sswitch_53
        0x23 -> :sswitch_52
        0x24 -> :sswitch_51
        0x28 -> :sswitch_50
        0x2a -> :sswitch_4f
        0x2b -> :sswitch_4e
        0x2c -> :sswitch_4d
        0x31 -> :sswitch_4c
        0x32 -> :sswitch_4b
        0x35 -> :sswitch_4a
        0x37 -> :sswitch_49
        0x48 -> :sswitch_48
        0x63 -> :sswitch_47
        0x81 -> :sswitch_46
        0x87 -> :sswitch_45
        0x7e0 -> :sswitch_44
        0x7e3 -> :sswitch_43
        0x7ee -> :sswitch_42
        0x815 -> :sswitch_41
        0x816 -> :sswitch_40
        0x817 -> :sswitch_3f
        0x818 -> :sswitch_3e
        0x819 -> :sswitch_3d
        0x81c -> :sswitch_3c
        0x81d -> :sswitch_3b
        0x81e -> :sswitch_3a
        0x81f -> :sswitch_39
        0x820 -> :sswitch_38
        0x822 -> :sswitch_37
        0x823 -> :sswitch_36
        0x824 -> :sswitch_35
        0x825 -> :sswitch_34
        0x827 -> :sswitch_33
        0x828 -> :sswitch_32
        0x829 -> :sswitch_31
        0x82a -> :sswitch_30
        0x82b -> :sswitch_2f
        0x82c -> :sswitch_2e
        0x82d -> :sswitch_2d
        0x82e -> :sswitch_2c
        0x82f -> :sswitch_2b
        0x830 -> :sswitch_2a
        0x831 -> :sswitch_29
        0x832 -> :sswitch_28
        0x833 -> :sswitch_27
        0x837 -> :sswitch_26
        0x838 -> :sswitch_25
        0x839 -> :sswitch_24
        0x84a -> :sswitch_23
        0x84b -> :sswitch_22
        0x84c -> :sswitch_21
        0x84d -> :sswitch_20
        0x84e -> :sswitch_1f
        0x84f -> :sswitch_1e
        0x850 -> :sswitch_1d
        0x855 -> :sswitch_1c
        0x857 -> :sswitch_1b
        0x858 -> :sswitch_1a
        0x859 -> :sswitch_19
        0x85a -> :sswitch_18
        0x85b -> :sswitch_17
        0x85d -> :sswitch_16
        0x873 -> :sswitch_15
        0x874 -> :sswitch_14
        0x876 -> :sswitch_13
        0x877 -> :sswitch_12
        0x87a -> :sswitch_11
        0x87c -> :sswitch_10
        0x87e -> :sswitch_f
        0x87f -> :sswitch_e
        0x880 -> :sswitch_d
        0x881 -> :sswitch_c
        0x882 -> :sswitch_b
        0x883 -> :sswitch_a
        0x884 -> :sswitch_9
        0x885 -> :sswitch_8
        0x886 -> :sswitch_7
        0x887 -> :sswitch_6
        0x888 -> :sswitch_5
        0x889 -> :sswitch_4
        0x88a -> :sswitch_3
        0x88b -> :sswitch_2
        0x88c -> :sswitch_1
        0x88d -> :sswitch_0
    .end sparse-switch
.end method

.method private resetMtkProxyAndRequestList(I)V
    .locals 5
    .param p1, "service"    # I

    .line 5408
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    .line 5410
    if-nez v0, :cond_0

    .line 5411
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    goto :goto_1

    .line 5413
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 5409
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 5417
    :cond_2
    if-nez p1, :cond_3

    .line 5418
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    goto :goto_2

    .line 5420
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 5424
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetMtkProxyAndRequestList, service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRadioVersionMtk: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5428
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 5430
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(IZ)V

    .line 5432
    invoke-static {}, Lcom/mediatek/ims/ril/RILRequest;->resetSerial()V

    .line 5434
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearRequestList(IZ)V

    .line 5439
    if-nez p1, :cond_5

    .line 5440
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5441
    .local v0, "mtkProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_4

    .line 5443
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->notifyImsServiceReady()V

    goto :goto_3

    .line 5445
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v2, 0x8

    .line 5446
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5445
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5448
    .end local v0    # "mtkProxy":Landroid/hidl/base/V1_0/IBase;
    :goto_3
    goto :goto_4

    .line 5449
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    .line 5450
    .local v0, "serviceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5451
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v3, 0xc

    .line 5452
    invoke-virtual {v1, v3, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    .line 5451
    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5456
    .end local v0    # "serviceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :cond_6
    :goto_4
    return-void
.end method

.method private declared-synchronized resetProxyAndRequestList(I)V
    .locals 5
    .param p1, "service"    # I

    monitor-enter p0

    .line 941
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 942
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-gt v0, v2, :cond_1

    .line 943
    if-nez v0, :cond_0

    .line 944
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    goto :goto_1

    .line 946
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ril/RadioServiceProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 942
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 950
    :cond_2
    if-nez p1, :cond_3

    .line 951
    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    goto :goto_2

    .line 953
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioServiceProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 958
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 962
    const/4 v0, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(IZ)V

    .line 964
    invoke-static {}, Lcom/mediatek/ims/ril/RILRequest;->resetSerial()V

    .line 966
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearRequestList(IZ)V

    .line 971
    if-nez p1, :cond_4

    .line 972
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    goto :goto_3

    .line 974
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v1

    .line 975
    .local v1, "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 976
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v3, 0xb

    .line 977
    invoke-virtual {v2, v3, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    .line 976
    invoke-virtual {v2, v0, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    .end local v1    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    .line 940
    .end local p1    # "service":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # I

    .line 4974
    sparse-switch p0, :sswitch_data_0

    .line 5057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown response>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5011
    :sswitch_0
    const-string v0, "RIL_UNSOL_IMS_REG_FLAG_IND"

    return-object v0

    .line 5054
    :sswitch_1
    const-string v0, "RIL_UNSOL_VIDEO_RINGTONE_EVENT_IND"

    return-object v0

    .line 5036
    :sswitch_2
    const-string v0, "RIL_UNSOL_IMS_DIALOG_INDICATION"

    return-object v0

    .line 5056
    :sswitch_3
    const-string v0, "RIL_UNSOL_CALL_RAT_INDICATION"

    return-object v0

    .line 5050
    :sswitch_4
    const-string v0, "RIL_UNSOL_CALL_ADDITIONAL_INFO"

    return-object v0

    .line 5052
    :sswitch_5
    const-string v0, "RIL_UNSOL_SIP_HEADER"

    return-object v0

    .line 5048
    :sswitch_6
    const-string v0, "RIL_UNSOL_VOPS_INDICATION"

    return-object v0

    .line 5046
    :sswitch_7
    const-string v0, "RIL_UNSOL_AUDIO_INDICATION"

    return-object v0

    .line 5044
    :sswitch_8
    const-string v0, "RIL_UNSOL_RTT_MODIFY_REQUEST_RECEIVE"

    return-object v0

    .line 5042
    :sswitch_9
    const-string v0, "RIL_UNSOL_RTT_CAPABILITY_INDICATION"

    return-object v0

    .line 5040
    :sswitch_a
    const-string v0, "RIL_UNSOL_RTT_TEXT_RECEIVE"

    return-object v0

    .line 5038
    :sswitch_b
    const-string v0, "RIL_UNSOL_RTT_MODIFY_RESPONSE"

    return-object v0

    .line 5030
    :sswitch_c
    const-string v0, "RIL_UNSOL_NO_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 5028
    :sswitch_d
    const-string v0, "UNSOL_CDMA_NEW_SMS_EX"

    return-object v0

    .line 5026
    :sswitch_e
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_SMS_EX"

    return-object v0

    .line 5024
    :sswitch_f
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT_EX"

    return-object v0

    .line 5014
    :sswitch_10
    const-string v0, "RIL_UNSOL_IMS_DATA_INFO_NOTIFY"

    return-object v0

    .line 4996
    :sswitch_11
    const-string v0, "ImsRILConstants.RIL_UNSOL_ON_VOLTE_SUBSCRIPTION"

    return-object v0

    .line 5022
    :sswitch_12
    const-string v0, "IMS_CONFIG_LOADED"

    return-object v0

    .line 5018
    :sswitch_13
    const-string v0, "IMS_CONFIG_CHANGED"

    return-object v0

    .line 5020
    :sswitch_14
    const-string v0, "IMS_FEATURE_CHANGED"

    return-object v0

    .line 5016
    :sswitch_15
    const-string v0, "DYNAMIC_IMS_SWITCH_COMPLETE"

    return-object v0

    .line 5034
    :sswitch_16
    const-string v0, "RIL_UNSOL_LTE_MESSAGE_WAITING_INDICATION"

    return-object v0

    .line 5032
    :sswitch_17
    const-string v0, "RIL_UNSOL_IMS_CONFERENCE_INFO_INDICATION"

    return-object v0

    .line 5008
    :sswitch_18
    const-string v0, "IMS_DEREG_DONE"

    return-object v0

    .line 5013
    :sswitch_19
    const-string v0, "RIL_UNSOL_IMS_BEARER_INIT"

    return-object v0

    .line 5012
    :sswitch_1a
    const-string v0, "IMS_BEARER_STATE_NOTIFY"

    return-object v0

    .line 5010
    :sswitch_1b
    const-string v0, "VOLTE_SETTING"

    return-object v0

    .line 5009
    :sswitch_1c
    const-string v0, "ECT_INDICATION"

    return-object v0

    .line 5007
    :sswitch_1d
    const-string v0, "IMS_DISABLE_START"

    return-object v0

    .line 5006
    :sswitch_1e
    const-string v0, "IMS_ENABLE_START"

    return-object v0

    .line 5005
    :sswitch_1f
    const-string v0, "IMS_DISABLE_DONE"

    return-object v0

    .line 5004
    :sswitch_20
    const-string v0, "IMS_ENABLE_DONE"

    return-object v0

    .line 5002
    :sswitch_21
    const-string v0, "IMS_REGISTRATION_INFO"

    return-object v0

    .line 5000
    :sswitch_22
    const-string v0, "IMS_EVENT_PACKAGE_INDICATION"

    return-object v0

    .line 4994
    :sswitch_23
    const-string v0, "ON_XUI"

    return-object v0

    .line 4993
    :sswitch_24
    const-string v0, "UNSOL_IMS_RTP_INFO"

    return-object v0

    .line 4992
    :sswitch_25
    const-string v0, "GET_PROVISION_DONE"

    return-object v0

    .line 4991
    :sswitch_26
    const-string v0, "ON_USSI"

    return-object v0

    .line 4990
    :sswitch_27
    const-string v0, "VIDEO_CAPABILITY_INDICATOR"

    return-object v0

    .line 4988
    :sswitch_28
    const-string v0, "CALLMOD_CHANGE_INDICATOR"

    return-object v0

    .line 4986
    :sswitch_29
    const-string v0, "SIP_CALL_PROGRESS_INDICATOR"

    return-object v0

    .line 4984
    :sswitch_2a
    const-string v0, "ECONF_RESULT_INDICATION"

    return-object v0

    .line 4980
    :sswitch_2b
    const-string v0, "CALL_INFO_INDICATION"

    return-object v0

    .line 5003
    :sswitch_2c
    const-string v0, "SPEECH_CODEC_INFO"

    return-object v0

    .line 4983
    :sswitch_2d
    const-string v0, "CIPHER_INDICATION"

    return-object v0

    .line 4982
    :sswitch_2e
    const-string v0, "INCOMING_CALL_INDICATION"

    return-object v0

    .line 4979
    :sswitch_2f
    const-string v0, "RIL_UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4977
    :sswitch_30
    const-string v0, "RIL_UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 4998
    :sswitch_31
    const-string v0, "RIL_UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 4975
    :sswitch_32
    const-string v0, "RADIO_STATE_CHANGED"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_32
        0x3f3 -> :sswitch_31
        0x400 -> :sswitch_30
        0x409 -> :sswitch_2f
        0xbc7 -> :sswitch_2e
        0xbd0 -> :sswitch_2d
        0xbd3 -> :sswitch_2c
        0xbd7 -> :sswitch_2b
        0xbd8 -> :sswitch_2a
        0xbd9 -> :sswitch_29
        0xbda -> :sswitch_28
        0xbdb -> :sswitch_27
        0xbdc -> :sswitch_26
        0xbdd -> :sswitch_25
        0xbde -> :sswitch_24
        0xbdf -> :sswitch_23
        0xbe0 -> :sswitch_22
        0xbe1 -> :sswitch_21
        0xbe2 -> :sswitch_20
        0xbe3 -> :sswitch_1f
        0xbe4 -> :sswitch_1e
        0xbe5 -> :sswitch_1d
        0xbe6 -> :sswitch_1c
        0xbe7 -> :sswitch_1b
        0xbe9 -> :sswitch_1a
        0xbeb -> :sswitch_19
        0xbec -> :sswitch_18
        0xc11 -> :sswitch_17
        0xc12 -> :sswitch_16
        0xc13 -> :sswitch_15
        0xc14 -> :sswitch_14
        0xc15 -> :sswitch_13
        0xc16 -> :sswitch_12
        0xc26 -> :sswitch_11
        0xc27 -> :sswitch_10
        0xc28 -> :sswitch_f
        0xc29 -> :sswitch_e
        0xc2c -> :sswitch_d
        0xc2d -> :sswitch_c
        0xc2e -> :sswitch_b
        0xc2f -> :sswitch_a
        0xc30 -> :sswitch_9
        0xc31 -> :sswitch_8
        0xc32 -> :sswitch_7
        0xc33 -> :sswitch_6
        0xc34 -> :sswitch_5
        0xc36 -> :sswitch_4
        0xc38 -> :sswitch_3
        0xc39 -> :sswitch_2
        0xc3a -> :sswitch_1
        0xc3b -> :sswitch_0
    .end sparse-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .line 5197
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 5202
    :cond_0
    instance-of v0, p1, [I

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v0, :cond_2

    .line 5203
    move-object v0, p1

    check-cast v0, [I

    .line 5204
    .local v0, "intArray":[I
    array-length v4, v0

    .line 5205
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 5206
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_1

    .line 5207
    const/4 v5, 0x0

    .line 5208
    .local v5, "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5209
    :goto_0
    if-ge v6, v4, :cond_1

    .line 5210
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_0

    .line 5213
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5215
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 5216
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 5217
    .local v0, "strings":[Ljava/lang/String;
    array-length v4, v0

    .line 5218
    .restart local v4    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 5219
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_3

    .line 5220
    const/4 v5, 0x0

    .line 5221
    .restart local v5    # "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5222
    :goto_1
    if-ge v6, v4, :cond_3

    .line 5223
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_1

    .line 5226
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5227
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5228
    .local v0, "s":Ljava/lang/String;
    goto :goto_2

    .line 5229
    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5231
    .restart local v0    # "s":Ljava/lang/String;
    :goto_2
    return-object v0
.end method

.method private sendAck(I)V
    .locals 6
    .param p1, "service"    # I

    .line 4411
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x320

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 4413
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 4414
    const-string v1, "sendAck: "

    const-string v3, "sendAck"

    const-string v4, "IMS_RILA"

    if-nez p1, :cond_1

    .line 4415
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v2

    .line 4416
    .local v2, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v2, :cond_0

    .line 4418
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4422
    :goto_0
    goto :goto_1

    .line 4419
    :catch_0
    move-exception v4

    .line 4420
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-direct {p0, v5, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 4424
    :cond_0
    const-string v1, "Error trying to send ack, radioProxy = null"

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4426
    .end local v2    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    :goto_1
    goto :goto_3

    .line 4427
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v2

    .line 4428
    .local v2, "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4430
    :try_start_1
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RadioServiceProxy;->responseAcknowledgement()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4434
    :goto_2
    goto :goto_3

    .line 4431
    :catch_1
    move-exception v4

    .line 4432
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 4436
    :cond_2
    const-string v1, "Error trying to send ack, serviceProxy is empty"

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4439
    .end local v2    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    :goto_3
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4440
    return-void
.end method

.method private sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V
    .locals 11
    .param p1, "dqrr"    # Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    .line 4092
    iget-object v0, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 4093
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const-class v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 4094
    .local v1, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v2

    const-string v3, "] request: "

    const-string v4, "get RadioProxy null. (["

    const-string v5, ")"

    if-eqz v2, :cond_0

    .line 4095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4096
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4095
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 4097
    return-void

    .line 4100
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "> "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " (by DtmfQueueRR)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4103
    const/4 v2, 0x0

    .line 4104
    .local v2, "params":[Ljava/lang/Object;
    const/4 v6, 0x1

    :try_start_0
    iget v7, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, " params error. ("

    const-string v9, "request "

    const/4 v10, 0x0

    sparse-switch v7, :sswitch_data_0

    .line 4138
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4122
    :sswitch_0
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->explicitCallTransfer(I)V

    .line 4123
    goto/16 :goto_1

    .line 4112
    :sswitch_1
    iget-object v3, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    move-object v2, v3

    .line 4113
    array-length v3, v2

    if-eq v3, v6, :cond_1

    .line 4114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4115
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4114
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4117
    :cond_1
    aget-object v3, v2, v10

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4118
    .local v3, "gsmIndex":I
    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v4, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->separateConnection(II)V

    .line 4120
    .end local v3    # "gsmIndex":I
    goto/16 :goto_1

    .line 4135
    :sswitch_2
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->stopDtmf(I)V

    .line 4136
    goto/16 :goto_1

    .line 4125
    :sswitch_3
    iget-object v3, p1, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    move-object v2, v3

    .line 4126
    array-length v3, v2

    if-eq v3, v6, :cond_2

    .line 4127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4128
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4127
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_1

    .line 4130
    :cond_2
    aget-object v3, v2, v10

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 4131
    .local v3, "c":C
    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->startDtmf(ILjava/lang/String;)V

    .line 4133
    .end local v3    # "c":C
    goto :goto_1

    .line 4109
    :sswitch_4
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->conference(I)V

    .line 4110
    goto :goto_1

    .line 4106
    :sswitch_5
    iget v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->switchWaitingOrHoldingAndActive(I)V

    .line 4107
    goto :goto_1

    .line 4138
    :goto_0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4139
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4138
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4144
    .end local v2    # "params":[Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 4141
    :catch_0
    move-exception v2

    .line 4142
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DtmfQueueRR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4143
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4142
    invoke-direct {p0, v6, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4145
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x34 -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendMtkAck(I)V
    .locals 5
    .param p1, "service"    # I

    .line 4447
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x320

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 4449
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acquireWakeLock(Lcom/mediatek/ims/ril/RILRequest;I)V

    .line 4450
    const-string v1, "IMS_RILA"

    if-nez p1, :cond_2

    .line 4451
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v2

    .line 4452
    .local v2, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v2, :cond_1

    .line 4454
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4455
    move-object v1, v2

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 4456
    invoke-interface {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 4458
    :cond_0
    move-object v1, v2

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 4459
    invoke-interface {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->responseAcknowledgementMtk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4461
    :catch_0
    move-exception v1

    .line 4462
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "sendMtkAck"

    invoke-direct {p0, v3, v4, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMtkAck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 4464
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 4466
    :cond_1
    const-string v3, "Error trying to send MTK ack, MtkRadioProxy = null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4468
    .end local v2    # "radioProxy":Landroid/hidl/base/V1_0/IBase;
    :goto_1
    goto :goto_3

    .line 4469
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v2

    .line 4470
    .local v2, "serviceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4472
    :try_start_1
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->responseAcknowledgementMtk()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4476
    :goto_2
    goto :goto_3

    .line 4473
    :catch_1
    move-exception v1

    .line 4474
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "sendAck"

    invoke-direct {p0, p1, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 4478
    :cond_3
    const-string v3, "Error trying to send MTK ack, MtkRadioExServiceProxy is empty"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    .end local v2    # "serviceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :goto_3
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4483
    return-void
.end method

.method private static serviceToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "service"    # I

    .line 5967
    packed-switch p0, :pswitch_data_0

    .line 5983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5975
    :pswitch_0
    const-string v0, "NETWORK"

    return-object v0

    .line 5977
    :pswitch_1
    const-string v0, "MODEM"

    return-object v0

    .line 5979
    :pswitch_2
    const-string v0, "SIM"

    return-object v0

    .line 5981
    :pswitch_3
    const-string v0, "VOICE"

    return-object v0

    .line 5969
    :pswitch_4
    const-string v0, "RADIO"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->accept(Landroid/os/Message;)V

    .line 5281
    return-void
.end method

.method public accept(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 1662
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1663
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1664
    const/16 v1, 0x28

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1667
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1670
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->acceptCall(I)V

    .line 1671
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    goto :goto_0

    .line 1672
    :catch_0
    move-exception v2

    .line 1673
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "acceptCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1676
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acceptVideoCall(II)V
    .locals 1
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->acceptVideoCall(IILandroid/os/Message;)V

    .line 5398
    return-void
.end method

.method public acceptVideoCall(IILandroid/os/Message;)V
    .locals 5
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1688
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 1690
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1691
    const/16 v1, 0x81c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1695
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1696
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " videoMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1695
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1700
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->videoCallAccept(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1703
    goto :goto_0

    .line 1701
    :catch_0
    move-exception v2

    .line 1702
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "acceptCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1705
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSmsEx(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4562
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4563
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4564
    const/16 v1, 0x87c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4568
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4573
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->acknowledgeLastIncomingCdmaSmsEx(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4577
    goto :goto_0

    .line 4574
    :catch_0
    move-exception v2

    .line 4575
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4579
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 4541
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4542
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4543
    const/16 v1, 0x87a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4547
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4552
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->acknowledgeLastIncomingGsmSmsEx(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4556
    goto :goto_0

    .line 4553
    :catch_0
    move-exception v2

    .line 4554
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4558
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public approveEccRedial(IILandroid/os/Message;)V
    .locals 5
    .param p1, "approve"    # I
    .param p2, "callId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1717
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 1719
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1720
    const/16 v1, 0x889

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1723
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1724
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " approve = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1723
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1728
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->eccRedialApprove(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    goto :goto_0

    .line 1729
    :catch_0
    move-exception v2

    .line 1730
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "approveEccRedial"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1733
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public cancelPendingUssi(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3106
    const-string v0, "persist.vendor.ims.ussi.ap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3108
    const-string v0, "Wrap cancelPendingUssi"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3111
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3112
    return-void

    .line 3115
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3116
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3117
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3118
    const/16 v1, 0x82e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3122
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3123
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3122
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3127
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->cancelUssi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3130
    goto :goto_0

    .line 3128
    :catch_0
    move-exception v2

    .line 3129
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "cancelUssi"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3132
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public clearRequestList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 4801
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4802
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4803
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 4804
    const-string v2, "IMS_RILA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearRequestList  mWakeLockCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4809
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/RILRequest;

    .line 4810
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz p2, :cond_1

    .line 4811
    const-string v4, "IMS_RILA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4812
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4811
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4814
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/ims/ril/RILRequest;->onError(ILjava/lang/Object;)V

    .line 4815
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4816
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 4808
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4818
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 4819
    .end local v1    # "count":I
    monitor-exit v0

    .line 4820
    return-void

    .line 4819
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1878
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1879
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1880
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1883
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1886
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 1888
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .line 2987
    if-nez p1, :cond_0

    .line 2988
    const-string v0, "Participants MUST NOT be null in conferenceDial"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 2989
    return-void

    .line 2992
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2993
    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2995
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2996
    const/16 v1, 0x829

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3000
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3001
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clirMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVideoCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3000
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3006
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->conferenceDial(I[Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3010
    goto :goto_0

    .line 3007
    :catch_0
    move-exception v2

    .line 3008
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "IMS_RILA"

    const-string v4, "conferenceDial failed"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    const/4 v3, 0x1

    const-string v4, "conferenceDial"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3012
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public deregisterIms(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2030
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->deregisterImsWithCause(ILandroid/os/Message;)V

    .line 2031
    return-void
.end method

.method public deregisterImsWithCause(ILandroid/os/Message;)V
    .locals 5
    .param p1, "cause"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2042
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2043
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2044
    const/16 v1, 0x822

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2048
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2049
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2048
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2053
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2054
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2055
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->imsDeregNotification(II)V

    goto :goto_0

    .line 2057
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2058
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->imsDeregNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    :goto_0
    goto :goto_1

    .line 2060
    :catch_0
    move-exception v2

    .line 2061
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "imsDeregNotification"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2064
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2900
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 2901
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 2915
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "> "

    if-nez v0, :cond_1

    .line 2916
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2917
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2918
    const/16 v3, 0x832

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, p4, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 2923
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2926
    :try_start_0
    iget v2, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->dial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2929
    goto :goto_0

    .line 2927
    :catch_0
    move-exception v2

    .line 2928
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "dial"

    invoke-direct {p0, v1, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2931
    .end local v0    # "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    goto :goto_1

    .line 2933
    :cond_1
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2935
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2936
    const/16 v3, 0x826

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, p4, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v3

    .line 2941
    .restart local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2944
    :try_start_1
    iget v2, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->dialWithSipUri(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2947
    goto :goto_1

    .line 2945
    :catch_1
    move-exception v2

    .line 2946
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "dialWithSipUri"

    invoke-direct {p0, v1, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2950
    .end local v0    # "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_2
    :goto_1
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 1796
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1797
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1798
    const/16 v1, 0x48

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1802
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1805
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 1807
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public forceHangup(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5385
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->forceHangup(ILandroid/os/Message;)V

    .line 5386
    return-void
.end method

.method public forceHangup(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceHangup with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5391
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->forceHangup(ILandroid/os/Message;)V

    .line 5392
    return-void
.end method

.method public forceHangup(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3779
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3780
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3782
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3783
    const/16 v1, 0x7f2

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3786
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3791
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->forceReleaseCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3794
    goto :goto_0

    .line 3792
    :catch_0
    move-exception v2

    .line 3793
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "forceHangup"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3796
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getBarringCalls(ILandroid/os/Message;)V
    .locals 5
    .param p1, "serviceClass"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3652
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3653
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3655
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3656
    const/16 v1, 0x88c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3659
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3661
    const-string v2, "getBarringCalls does not support"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3664
    if-eqz p2, :cond_0

    .line 3665
    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 3667
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 3665
    invoke-static {p2, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3668
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3671
    :cond_0
    return-void

    .line 3675
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3676
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3675
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3681
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getBarringCalls(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3684
    goto :goto_0

    .line 3682
    :catch_0
    move-exception v2

    .line 3683
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getBarringCalls"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3686
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3302
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3303
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3304
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3306
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3308
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getClir(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3311
    goto :goto_0

    .line 3309
    :catch_0
    move-exception v2

    .line 3310
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getCLIR"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3313
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3433
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3434
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3435
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3436
    const/16 v1, 0x838

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3440
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3444
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->getColp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3447
    goto :goto_0

    .line 3445
    :catch_0
    move-exception v2

    .line 3446
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "getCOLP"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3449
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3384
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3385
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3386
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3387
    const/16 v1, 0x839

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3391
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3395
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->getColr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3398
    goto :goto_0

    .line 3396
    :catch_0
    move-exception v2

    .line 3397
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "getCOLR"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3400
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgFeatureValue(IILandroid/os/Message;)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2589
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2591
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2592
    const/16 v1, 0x859

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2597
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2598
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " featureId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", network="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2597
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2603
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getImsCfgFeatureValue(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2606
    goto :goto_0

    .line 2604
    :catch_0
    move-exception v2

    .line 2605
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getImsCfgFeatureValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2608
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgProvisionValue(ILandroid/os/Message;)V
    .locals 5
    .param p1, "configId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2652
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2654
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2655
    const/16 v1, 0x85b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2660
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2661
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " configId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2660
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2665
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getImsCfgProvisionValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2668
    goto :goto_0

    .line 2666
    :catch_0
    move-exception v2

    .line 2667
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getImsCfgProvisionValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2670
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsCfgResourceCapValue(ILandroid/os/Message;)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2679
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2681
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2682
    const/16 v1, 0x85d    # 3.0E-42f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2687
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2688
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " featureId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2687
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2692
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getImsCfgResourceCapValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2695
    goto :goto_0

    .line 2693
    :catch_0
    move-exception v2

    .line 2694
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getImsCfgResourceCapValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2697
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastCallFailCause(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5325
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    .line 5326
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2798
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2799
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2800
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2804
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2805
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2804
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2809
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getLastCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2812
    goto :goto_0

    .line 2810
    :catch_0
    move-exception v2

    .line 2811
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getLastCallFailCause"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2814
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getMtkHalVersion()Lcom/android/internal/telephony/HalVersion;
    .locals 1

    .line 5963
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method

.method public declared-synchronized getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    .locals 9
    .param p1, "service"    # I
    .param p2, "result"    # Landroid/os/Message;

    monitor-enter p0

    .line 5617
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMtkRadioExServiceProxy mPhoneId invalid, return empty RadioServiceProxy,, service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5620
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5623
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsCellularSupported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 5624
    const-string v0, "getMtkRadioExServiceProxy: Not calling getService(): wifi-only"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5625
    if-eqz p2, :cond_1

    .line 5626
    nop

    .line 5627
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 5626
    invoke-static {p2, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5628
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 5631
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5634
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxiesMtk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    .line 5635
    .local v0, "mtkServiceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    .line 5636
    monitor-exit p0

    return-object v0

    .line 5640
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_3
    const/4 v3, 0x0

    .line 5641
    .local v3, "isDeclared":Z
    const/4 v4, 0x0

    .line 5642
    .local v4, "binder":Landroid/os/IBinder;
    const/4 v5, 0x0

    .line 5643
    .local v5, "serviceName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    goto/16 :goto_0

    .line 5707
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :pswitch_0
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5708
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 5709
    invoke-static {v5}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    .line 5710
    if-eqz v3, :cond_4

    .line 5711
    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    move-object v4, v6

    .line 5712
    if-eqz v4, :cond_4

    .line 5713
    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5714
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMtkRadioProxy modem getMtkRadioExServiceProxy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5715
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5717
    invoke-static {v4}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    move-result-object v8

    .line 5715
    invoke-virtual {v6, v7, v8}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;)V

    goto/16 :goto_0

    .line 5722
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5724
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 5725
    invoke-static {v5}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    .line 5726
    if-eqz v3, :cond_4

    .line 5727
    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    move-object v4, v6

    .line 5728
    if-eqz v4, :cond_4

    .line 5729
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMtkRadioExServiceProxy, voice mMtkRadioVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5730
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5732
    invoke-static {v4}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    move-result-object v8

    .line 5730
    invoke-virtual {v6, v7, v8}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;)V

    goto :goto_0

    .line 5737
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 5738
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 5739
    invoke-static {v5}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    .line 5740
    if-eqz v3, :cond_4

    .line 5741
    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    move-object v4, v6

    .line 5742
    if-eqz v4, :cond_4

    .line 5743
    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5744
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMtkRadioExServiceProxy, ims mMtkRadioVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5745
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 5747
    invoke-static {v4}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    move-result-object v8

    .line 5745
    invoke-virtual {v6, v7, v8}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;)V

    .line 5753
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isAidl()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5754
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 5784
    :pswitch_3
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;

    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 5785
    invoke-virtual {v7}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    move-result-object v7

    invoke-interface {v7}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 5784
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 5786
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExModemResponse:Lcom/mediatek/ims/ril/MtkRadioExModemResponse;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExModemIndication:Lcom/mediatek/ims/ril/MtkRadioExModemIndication;

    .line 5787
    invoke-interface {v6, v7, v8}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->setResponseFunctionsMtkIms(Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse;Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication;)V

    .line 5789
    goto :goto_1

    .line 5791
    :pswitch_4
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;

    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 5792
    invoke-virtual {v7}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    move-result-object v7

    invoke-interface {v7}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 5791
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 5793
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExVoiceResponse:Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExVoiceIndication:Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;

    .line 5794
    invoke-interface {v6, v7, v8}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setResponseFunctionsMtkIms(Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse;Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;)V

    .line 5796
    goto :goto_1

    .line 5798
    :pswitch_5
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;

    move-object v7, v0

    check-cast v7, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5799
    invoke-virtual {v7}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    move-result-object v7

    invoke-interface {v7}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 5798
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkBinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 5800
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getAidl()Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExImsResponse:Lcom/mediatek/ims/ril/MtkRadioExImsResponse;

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioExImsIndication:Lcom/mediatek/ims/ril/MtkRadioExImsIndication;

    .line 5801
    invoke-interface {v6, v7, v8}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse;Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication;)V

    .line 5803
    :goto_1
    goto :goto_2

    .line 5805
    :cond_5
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5807
    const-string v6, "getMtkRadioExServiceProxy No AIDL, get HIDL instead."

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 5808
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-nez v6, :cond_6

    .line 5809
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    .line 5812
    :cond_6
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    if-eqz v6, :cond_7

    .line 5813
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioProxy:Landroid/hidl/base/V1_0/IBase;

    invoke-virtual {v0, v6, v7}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hidl/base/V1_0/IBase;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5818
    :cond_7
    monitor-exit p0

    return-object v0

    .line 5823
    .end local v3    # "isDeclared":Z
    .end local v4    # "binder":Landroid/os/IBinder;
    .end local v5    # "serviceName":Ljava/lang/String;
    :cond_8
    :goto_2
    goto :goto_3

    .line 5820
    :catch_0
    move-exception v3

    .line 5821
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 5822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtkRadioExServiceProxy getService/setResponseFunctionsIms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5825
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMtkRadioExServiceProxy: mtkServiceProxy is empty, mMtkRadioVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5828
    if-eqz p2, :cond_9

    .line 5829
    nop

    .line 5830
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 5829
    invoke-static {p2, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5831
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5835
    :cond_9
    monitor-exit p0

    return-object v0

    .line 5616
    .end local v0    # "mtkServiceProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    .end local p1    # "service":I
    .end local p2    # "result":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    .locals 1
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .line 5603
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    if-ne p1, v0, :cond_0

    .line 5604
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    return-object v0

    .line 5606
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    if-ne p1, v0, :cond_1

    .line 5607
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    return-object v0

    .line 5609
    :cond_1
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    if-ne p1, v0, :cond_2

    .line 5610
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    return-object v0

    .line 5612
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "provisionStr"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5287
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getProvisionValue(Ljava/lang/String;Landroid/os/Message;)V

    .line 5288
    return-void
.end method

.method public getProvisionValue(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "provisionStr"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2489
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2490
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2491
    const/16 v1, 0x81e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2495
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2496
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provisionStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2495
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2500
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2501
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2502
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getProvisionValue(ILjava/lang/String;)V

    goto :goto_0

    .line 2504
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2505
    invoke-interface {v2, v3, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getProvisionValue(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2509
    :goto_0
    goto :goto_1

    .line 2507
    :catch_0
    move-exception v2

    .line 2508
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "getProvisionValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2511
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;
    .locals 11
    .param p1, "service"    # I
    .param p2, "result"    # Landroid/os/Message;

    monitor-enter p0

    .line 1017
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioServiceProxy mPhoneId invalid, return empty RadioServiceProxy,, service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1023
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIsCellularSupported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1024
    const-string v0, "getRadioServiceProxy: Not calling getService(): wifi-only"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1025
    if-eqz p2, :cond_1

    .line 1026
    nop

    .line 1027
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1026
    invoke-static {p2, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1028
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioServiceProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1034
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioServiceProxy;

    .line 1036
    .local v0, "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 1037
    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v3, :cond_4

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioServiceProxy, HIDL version, service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    monitor-exit p0

    return-object v0

    .line 1044
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ril/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_0/IRadio;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1050
    :try_start_4
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 1051
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    .line 1050
    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1054
    goto :goto_0

    .line 1052
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :catch_0
    move-exception v1

    .line 1053
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadioServiceProxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1055
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1058
    :cond_4
    :try_start_6
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v3, :cond_5

    .line 1059
    monitor-exit p0

    return-object v0

    .line 1068
    .restart local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_5
    :try_start_7
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 1069
    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1070
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter;
    :cond_6
    const/4 v3, 0x0

    .line 1071
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v6, 0x0

    .line 1072
    .local v6, "isDeclared":Z
    const/4 v7, 0x0

    .line 1073
    .local v7, "serviceName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1105
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/hardware/radio/network/IRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1106
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1107
    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    .line 1108
    if-eqz v6, :cond_7

    .line 1109
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    move-object v3, v8

    .line 1110
    if-eqz v3, :cond_7

    .line 1111
    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRadioServiceProxy: nw mRadioVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1113
    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1115
    invoke-static {v3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v10

    .line 1113
    invoke-virtual {v8, v9, v10}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/network/IRadioNetwork;)V

    goto/16 :goto_1

    .line 1120
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/hardware/radio/modem/IRadioModem;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1121
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1122
    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    .line 1123
    if-eqz v6, :cond_7

    .line 1124
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    move-object v3, v8

    .line 1125
    if-eqz v3, :cond_7

    .line 1126
    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRadioServiceProxy: modem mRadioVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1128
    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/ril/RadioModemProxy;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1130
    invoke-static {v3}, Landroid/hardware/radio/modem/IRadioModem$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v10

    .line 1128
    invoke-virtual {v8, v9, v10}, Lcom/mediatek/ims/ril/RadioModemProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/modem/IRadioModem;)V

    goto/16 :goto_1

    .line 1135
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/hardware/radio/sim/IRadioSim;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1136
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1137
    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    .line 1138
    if-eqz v6, :cond_7

    .line 1139
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    move-object v3, v8

    .line 1140
    if-eqz v3, :cond_7

    .line 1141
    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRadioServiceProxy: sim mRadioVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1143
    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/ril/RadioSimProxy;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1145
    invoke-static {v3}, Landroid/hardware/radio/sim/IRadioSim$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v10

    .line 1143
    invoke-virtual {v8, v9, v10}, Lcom/mediatek/ims/ril/RadioSimProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/sim/IRadioSim;)V

    goto :goto_1

    .line 1150
    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/hardware/radio/voice/IRadioVoice;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/ims/ril/ImsRILAdapter;->AIDL_SERVICE_NAME_MTK_IMS:[Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1151
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1152
    invoke-static {v7}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    .line 1153
    if-eqz v6, :cond_7

    .line 1154
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    move-object v3, v8

    .line 1155
    if-eqz v3, :cond_7

    .line 1156
    iput-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRadioServiceProxy: voice mRadioVersion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1158
    move-object v8, v0

    check-cast v8, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    iget-object v9, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1160
    invoke-static {v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v10

    .line 1158
    invoke-virtual {v8, v9, v10}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/voice/IRadioVoice;)V

    .line 1167
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v6    # "isDeclared":Z
    .end local v7    # "serviceName":Ljava/lang/String;
    :cond_7
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_e

    .line 1169
    :try_start_8
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1170
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 1169
    invoke-static {v3, v5}, Landroid/hardware/radio/V1_0/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1171
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1174
    goto :goto_2

    .line 1172
    :catch_1
    move-exception v3

    .line 1173
    .local v3, "e":Ljava/util/NoSuchElementException;
    :try_start_9
    const-string v4, "getRadioServiceProxy: NoSuchElementException "

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1175
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :goto_2
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v3, :cond_e

    .line 1176
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_6/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_6/IRadio;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1177
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_6/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_6/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1178
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 1179
    :cond_8
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1180
    invoke-static {v3}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1181
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_5/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1182
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 1183
    :cond_9
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1184
    invoke-static {v3}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1185
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_4/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1186
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 1187
    :cond_a
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1188
    invoke-static {v3}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1189
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_3/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_3/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1190
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 1191
    :cond_b
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1192
    invoke-static {v3}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1193
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_2/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_2/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1194
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    goto :goto_3

    .line 1195
    :cond_c
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1196
    invoke-static {v3}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1197
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {v3}, Landroid/hardware/radio/V1_1/IRadio;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/radio/V1_1/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 1198
    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    .line 1200
    :cond_d
    :goto_3
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/ril/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_0/IRadio;)V

    .line 1201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioServiceProxy: mRadioVersion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogi(Ljava/lang/String;)V

    .line 1206
    :cond_e
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1207
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isAidl()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1208
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_4

    .line 1222
    :pswitch_4
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    .line 1223
    invoke-virtual {v4}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->getAidl()Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v4

    invoke-interface {v4}, Landroid/hardware/radio/network/IRadioNetwork;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1222
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1224
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->getAidl()Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNetworkResponse:Lcom/mediatek/ims/ril/NetworkResponse;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNetworkIndication:Lcom/mediatek/ims/ril/NetworkIndication;

    invoke-interface {v3, v4, v5}, Landroid/hardware/radio/network/IRadioNetwork;->setResponseFunctions(Landroid/hardware/radio/network/IRadioNetworkResponse;Landroid/hardware/radio/network/IRadioNetworkIndication;)V

    .line 1226
    goto :goto_4

    .line 1228
    :pswitch_5
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/mediatek/ims/ril/RadioModemProxy;

    .line 1229
    invoke-virtual {v4}, Lcom/mediatek/ims/ril/RadioModemProxy;->getAidl()Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v4

    invoke-interface {v4}, Landroid/hardware/radio/modem/IRadioModem;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1228
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1230
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioModemProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioModemProxy;->getAidl()Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mModemResponse:Lcom/mediatek/ims/ril/ModemResponse;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mModemIndication:Lcom/mediatek/ims/ril/ModemIndication;

    invoke-interface {v3, v4, v5}, Landroid/hardware/radio/modem/IRadioModem;->setResponseFunctions(Landroid/hardware/radio/modem/IRadioModemResponse;Landroid/hardware/radio/modem/IRadioModemIndication;)V

    .line 1232
    goto :goto_4

    .line 1234
    :pswitch_6
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/mediatek/ims/ril/RadioSimProxy;

    .line 1235
    invoke-virtual {v4}, Lcom/mediatek/ims/ril/RadioSimProxy;->getAidl()Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v4

    invoke-interface {v4}, Landroid/hardware/radio/sim/IRadioSim;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1234
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1236
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioSimProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioSimProxy;->getAidl()Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSimResponse:Lcom/mediatek/ims/ril/SimResponse;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSimIndication:Lcom/mediatek/ims/ril/SimIndication;

    invoke-interface {v3, v4, v5}, Landroid/hardware/radio/sim/IRadioSim;->setResponseFunctions(Landroid/hardware/radio/sim/IRadioSimResponse;Landroid/hardware/radio/sim/IRadioSimIndication;)V

    .line 1238
    goto :goto_4

    .line 1240
    :pswitch_7
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1241
    invoke-virtual {v4}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getAidl()Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v4

    invoke-interface {v4}, Landroid/hardware/radio/voice/IRadioVoice;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1240
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1242
    move-object v3, v0

    check-cast v3, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getAidl()Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVoiceResponse:Lcom/mediatek/ims/ril/VoiceResponse;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVoiceIndication:Lcom/mediatek/ims/ril/VoiceIndication;

    invoke-interface {v3, v4, v5}, Landroid/hardware/radio/voice/IRadioVoice;->setResponseFunctions(Landroid/hardware/radio/voice/IRadioVoiceResponse;Landroid/hardware/radio/voice/IRadioVoiceIndication;)V

    .line 1244
    :goto_4
    goto :goto_5

    .line 1247
    :cond_f
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1250
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioProxyDeathRecipient:Lcom/mediatek/ims/ril/ImsRILAdapter$RadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mServiceCookies:Landroid/util/SparseArray;

    .line 1251
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    .line 1250
    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1252
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioResponse:Lcom/mediatek/ims/ril/RadioResponseImpl;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioIndication:Lcom/mediatek/ims/ril/RadioIndicationImpl;

    invoke-interface {v3, v4, v5}, Landroid/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    goto :goto_5

    .line 1248
    :cond_10
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "getRadioServiceProxy shouldn\'t be HIDL with HAL 2.0"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    .end local p1    # "service":I
    .end local p2    # "result":Landroid/os/Message;
    throw v3

    .line 1257
    .restart local v0    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    .restart local p1    # "service":I
    .restart local p2    # "result":Landroid/os/Message;
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioServiceProxy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->serviceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->IMS_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 1258
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1257
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1264
    :goto_5
    goto :goto_6

    .line 1261
    :catch_2
    move-exception v3

    .line 1262
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_a
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 1263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioServiceProxy getService/setResponseFunctions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1266
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_6
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioServiceProxy: serviceProxy == null, mRadioVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1269
    if-eqz p2, :cond_12

    .line 1270
    nop

    .line 1271
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 1270
    invoke-static {p2, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1272
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1276
    :cond_12
    monitor-exit p0

    return-object v0

    .line 1016
    .end local v0    # "serviceProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    .end local p1    # "service":I
    .end local p2    # "result":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;
    .locals 1
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mediatek/ims/ril/RadioServiceProxy;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .line 996
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/mediatek/ims/ril/RadioNetworkProxy;

    if-ne p1, v0, :cond_0

    .line 997
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    return-object v0

    .line 999
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/RadioModemProxy;

    if-ne p1, v0, :cond_1

    .line 1000
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    return-object v0

    .line 1002
    :cond_1
    const-class v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    if-ne p1, v0, :cond_2

    .line 1003
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    return-object v0

    .line 1005
    :cond_2
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    if-ne p1, v0, :cond_3

    .line 1006
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    return-object v0

    .line 1008
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceDomainPreference(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2708
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2710
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2711
    const/16 v1, 0x849

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2715
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2719
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getVoiceDomainPreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2722
    goto :goto_0

    .line 2720
    :catch_0
    move-exception v2

    .line 2721
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getVoiceDomainPreference"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2724
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getXcapStatus(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3573
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3574
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3575
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3576
    const/16 v1, 0x873

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3580
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3581
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3580
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3585
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->getXcapStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3588
    goto :goto_0

    .line 3586
    :catch_0
    move-exception v2

    .line 3587
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "getXcapStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3590
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method handleDtmfQueueNext(I)V
    .locals 6
    .param p1, "serial"    # I

    .line 4153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmfQueueNext (serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4155
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 4156
    const/4 v1, 0x0

    .line 4157
    .local v1, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->access$1500(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4158
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 4159
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->access$1500(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    .line 4160
    .local v3, "adqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    iget v4, v4, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    if-ne v4, p1, :cond_0

    .line 4161
    move-object v1, v3

    .line 4162
    goto :goto_1

    .line 4157
    .end local v3    # "adqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4165
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 4166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from mDtmfQueue. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 4167
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4166
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    goto :goto_2

    .line 4169
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->remove(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove first item in dtmf queue done. (size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4175
    :goto_2
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 4176
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->get()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 4177
    .local v2, "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v3, v2, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/mediatek/ims/ril/RILRequest;

    .line 4179
    .local v3, "rr2":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4181
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4182
    .end local v2    # "dqrr2":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v3    # "rr2":Lcom/mediatek/ims/ril/RILRequest;
    goto :goto_3

    .line 4183
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4184
    const-string v2, "send pending switch request"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4185
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v2

    .line 4186
    .local v2, "pendingReq":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4187
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setSendChldRequest()V

    .line 4188
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 4191
    .end local v1    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    .end local v2    # "pendingReq":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_4
    :goto_3
    monitor-exit v0

    .line 4192
    return-void

    .line 4191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hangup(IILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1767
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 1768
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 1770
    .local v0, "mtkVoiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1772
    const/16 v1, 0x883

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1776
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1777
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1776
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1782
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->hangupWithReason(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1785
    goto :goto_0

    .line 1783
    :catch_0
    move-exception v2

    .line 1784
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "hangupWithReason"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1787
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangup(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1743
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1744
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1745
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1749
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1750
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1749
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1753
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->hangup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    goto :goto_0

    .line 1754
    :catch_0
    move-exception v2

    .line 1755
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "hangup"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1758
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupAllCall(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2822
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 2823
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 2825
    .local v0, "mtkVoiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2826
    const/16 v1, 0x7e3

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2830
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2831
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2830
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2835
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->hangupAll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2838
    goto :goto_0

    .line 2836
    :catch_0
    move-exception v2

    .line 2837
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "hangupAll"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2840
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hold(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1825
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 1827
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1828
    const/16 v1, 0x824

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1832
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1833
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1832
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1837
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->controlCall(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1840
    goto :goto_0

    .line 1838
    :catch_0
    move-exception v2

    .line 1839
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "holdCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1842
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2736
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 2737
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getParticipantCallId(Ljava/lang/String;)I

    move-result v0

    .line 2740
    .local v0, "participantCallId":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2742
    return-void
.end method

.method public inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "confCallId"    # I
    .param p2, "callInfo"    # Lcom/mediatek/ims/ImsCallInfo;
    .param p3, "response"    # Landroid/os/Message;

    .line 2772
    const-string v0, "IMS_RILA"

    if-nez p2, :cond_0

    .line 2773
    const-string v1, "Invite participants failed, call info is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    return-void

    .line 2776
    :cond_0
    iget-object v1, p2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 2778
    .local v1, "callId":Ljava/lang/String;
    const/4 v2, -0x1

    .line 2780
    .local v2, "id":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2785
    .end local v2    # "id":I
    .local v0, "id":I
    nop

    .line 2787
    iget-object v2, p2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalAddConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2788
    return-void

    .line 2781
    .end local v0    # "id":I
    .restart local v2    # "id":I
    :catch_0
    move-exception v3

    .line 2782
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invite participants failed: id is not integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    return-void
.end method

.method public merge(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5379
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->conference(Landroid/os/Message;)V

    .line 5380
    return-void
.end method

.method public notifyImsServiceReady()V
    .locals 6

    .line 5854
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v1

    .line 5855
    .local v1, "proxy":Landroid/hardware/radio/V1_0/IRadio;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5856
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 5858
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5859
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 5860
    invoke-interface {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->notifyImsServiceReady()V

    goto :goto_0

    .line 5862
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 5863
    invoke-interface {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->notifyImsServiceReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5865
    :catch_0
    move-exception v2

    .line 5866
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyImsServiceReady error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 5867
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 5868
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify fail, send EVENT_TRIGGER_TO_FIRE_PENDING_URC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5871
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 5872
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 5873
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    .line 5872
    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5876
    :cond_2
    :goto_1
    return-void
.end method

.method processIndication(II)V
    .locals 1
    .param p1, "service"    # I
    .param p2, "indicationType"    # I

    .line 4202
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4203
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendAck(I)V

    .line 4208
    :cond_0
    return-void
.end method

.method processMtkIndication(II)V
    .locals 1
    .param p1, "service"    # I
    .param p2, "indicationType"    # I

    .line 4216
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4217
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendMtkAck(I)V

    .line 4222
    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 4
    .param p1, "serial"    # I

    .line 4226
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4227
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RILRequest;

    .line 4228
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4229
    if-nez v1, :cond_0

    .line 4230
    const-string v0, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4234
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->decrementWakeLock(Lcom/mediatek/ims/ril/RILRequest;)V

    .line 4236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Ack < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4239
    :goto_0
    return-void

    .line 4228
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;
    .locals 6
    .param p1, "service"    # I
    .param p2, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p3, "isProprietary"    # Z

    .line 4264
    iget v2, p2, Landroid/hardware/radio/RadioResponseInfo;->serial:I

    iget v3, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    iget v4, p2, Landroid/hardware/radio/RadioResponseInfo;->type:I

    move-object v0, p0

    move v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseInternal(IIIIZ)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method public processResponse(ILandroid/hardware/radio/V1_0/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;
    .locals 6
    .param p1, "service"    # I
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "isProprietary"    # Z

    .line 4250
    iget v2, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    iget v3, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v4, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    move-object v0, p0

    move v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseInternal(IIIIZ)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method public processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 2
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 4354
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    iget v1, p2, Landroid/hardware/radio/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDoneInternal(Lcom/mediatek/ims/ril/RILRequest;IILjava/lang/Object;)V

    .line 4355
    return-void
.end method

.method public processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 2
    .param p1, "rr"    # Lcom/mediatek/ims/ril/RILRequest;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 4340
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget v1, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDoneInternal(Lcom/mediatek/ims/ril/RILRequest;IILjava/lang/Object;)V

    .line 4341
    return-void
.end method

.method public pullCall(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "isVideoCall"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 3851
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3852
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3854
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3855
    const/16 v1, 0x830

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3858
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVideoCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3864
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->pullCall(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3867
    goto :goto_0

    .line 3865
    :catch_0
    move-exception v2

    .line 3866
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "pullCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3869
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3340
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3341
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3342
    const/16 v1, 0x37

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3344
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3346
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getClip(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3349
    goto :goto_0

    .line 3347
    :catch_0
    move-exception v2

    .line 3348
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryCLIP"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3351
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3481
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3482
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3483
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3484
    const/16 v1, 0x84d

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3489
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cfreason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3494
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->queryCallForwardInTimeSlotStatus(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3498
    goto :goto_0

    .line 3495
    :catch_0
    move-exception v2

    .line 3496
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "queryCallForwardInTimeSlotStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3500
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 3238
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3239
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3240
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3243
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cfreason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3248
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getCallForwardStatus(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3251
    goto :goto_0

    .line 3249
    :catch_0
    move-exception v2

    .line 3250
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryCallForwardStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3253
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 5
    .param p1, "serviceClass"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3260
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3261
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3262
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3265
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3269
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->getCallWaiting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3272
    goto :goto_0

    .line 3270
    :catch_0
    move-exception v2

    .line 3271
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryCallWaiting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3274
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 3140
    const-string v4, "A0000000871002"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 3141
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .line 3149
    const-class v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    .line 3150
    .local v0, "simProxy":Lcom/mediatek/ims/ril/RadioSimProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3151
    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3154
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " facility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3159
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3160
    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3161
    invoke-static {p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3163
    invoke-static {p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3159
    move-object v1, v0

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/RadioSimProxy;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3166
    goto :goto_0

    .line 3164
    :catch_0
    move-exception v1

    .line 3165
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "getFacilityLockForApp"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3168
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 5879
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5881
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5882
    const/16 v1, 0x887

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5886
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->querySsacStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5889
    goto :goto_0

    .line 5887
    :catch_0
    move-exception v2

    .line 5888
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryVopsStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5891
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 5839
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5841
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5842
    const/16 v1, 0x882

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5846
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->queryVopsStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5849
    goto :goto_0

    .line 5847
    :catch_0
    move-exception v2

    .line 5848
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "queryVopsStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5851
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public reject(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5355
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(ILandroid/os/Message;)V

    .line 5356
    return-void
.end method

.method public reject(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " reject with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(IILandroid/os/Message;)V

    .line 5362
    return-void
.end method

.method public removeParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2754
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    .line 2755
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getParticipantCallId(Ljava/lang/String;)I

    move-result v0

    .line 2757
    .local v0, "participantCallId":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalRemoveConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2759
    return-void
.end method

.method public requestExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 3753
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3754
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3755
    const/16 v1, 0x63

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3759
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3760
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3759
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3764
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3767
    goto :goto_0

    .line 3765
    :catch_0
    move-exception v2

    .line 3766
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "exitEmergencyCallbackMode"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3769
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public resetSuppServ(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 3598
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3599
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3600
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3601
    const/16 v1, 0x874

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3605
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3606
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3605
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3610
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->resetSuppServ(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3613
    goto :goto_0

    .line 3611
    :catch_0
    move-exception v2

    .line 3612
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "resetSuppServ"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3615
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public responseBearerStateConfirm(IIII)V
    .locals 1
    .param p1, "phoneid"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5306
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseBearerStateConfirm(IIILandroid/os/Message;)V

    .line 5307
    return-void
.end method

.method public responseBearerStateConfirm(IIILandroid/os/Message;)V
    .locals 5
    .param p1, "aid"    # I
    .param p2, "action"    # I
    .param p3, "status"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 3807
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3809
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3810
    const/16 v1, 0x820

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3814
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->imsBearerStateConfirm(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3817
    goto :goto_0

    .line 3815
    :catch_0
    move-exception v2

    .line 3816
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "imsBearerStateConfirm"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3819
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public resume(ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1851
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 1853
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1854
    const/16 v1, 0x825

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1858
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1859
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1858
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1863
    const/4 v2, 0x1

    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->controlCall(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    goto :goto_0

    .line 1864
    :catch_0
    move-exception v3

    .line 1865
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "resumeCall"

    invoke-direct {p0, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1869
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 5240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5241
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5240
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5242
    return-void
.end method

.method riljLoge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 5245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5246
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5245
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5247
    return-void
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 5250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5251
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5250
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5252
    return-void
.end method

.method riljLogi(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 5235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5236
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5235
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    return-void
.end method

.method riljLogv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 5255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5256
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5255
    const-string v1, "IMS_RILA"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5257
    return-void
.end method

.method public runGbaAuthentication(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V
    .locals 8
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # Ljava/lang/String;
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 3543
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 3545
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3546
    const/16 v1, 0x84f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 3549
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3550
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nafFqdn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nafSecureProtocolId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forceRun = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " netId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3549
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3558
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3562
    goto :goto_0

    .line 3560
    :catch_0
    move-exception v1

    .line 3561
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x3

    const-string v3, "runGbaAuthentication"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3565
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 5
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1898
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1899
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1900
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1905
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1909
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->sendDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1912
    goto :goto_0

    .line 1910
    :catch_0
    move-exception v2

    .line 1911
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendDtmf"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1914
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendRttModifyRequest(IILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "newMode"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 4890
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4891
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4892
    const/16 v1, 0x87f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4896
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4897
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4896
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4902
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendRttModifyRequest(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4906
    goto :goto_0

    .line 4904
    :catch_0
    move-exception v2

    .line 4905
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendRttModifyRequest"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4909
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendRttText(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "length"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 4922
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4923
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4924
    const/16 v1, 0x880

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4928
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4929
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4928
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4936
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p3, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendRttText(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4940
    goto :goto_0

    .line 4938
    :catch_0
    move-exception v2

    .line 4939
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendRttText"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4942
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V
    .locals 21
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .param p7, "response"    # Landroid/os/Message;

    .line 4508
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    const-string v0, "3gpp"

    const-class v4, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {v1, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4509
    .local v4, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4510
    const/16 v5, 0x855

    iget-object v6, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v5, v3, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v12

    .line 4514
    .local v12, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4518
    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4519
    iget v6, v12, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v5, v4

    move-object/from16 v7, p4

    move/from16 v10, p5

    move/from16 v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendImsSmsEx(ILjava/lang/String;Ljava/lang/String;[BZI)V

    goto :goto_0

    .line 4521
    :cond_0
    const-string v5, "3gpp2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4522
    iget v6, v12, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v4

    move-object/from16 v9, p6

    move/from16 v10, p5

    move/from16 v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendImsSmsEx(ILjava/lang/String;Ljava/lang/String;[BZI)V

    .line 4527
    :goto_0
    iget-object v14, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget v5, v12, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v17, 0x3

    .line 4528
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4529
    move/from16 v18, v13

    goto :goto_1

    .line 4530
    :cond_1
    const/4 v0, 0x2

    move/from16 v18, v0

    :goto_1
    const-wide/16 v19, 0x0

    .line 4527
    move/from16 v16, v5

    invoke-virtual/range {v14 .. v20}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    .line 4535
    goto :goto_2

    .line 4524
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "> SMS format Error"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4525
    return-void

    .line 4533
    :catch_0
    move-exception v0

    .line 4534
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "sendSms"

    invoke-direct {v1, v13, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4537
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_3
    :goto_2
    return-void
.end method

.method public sendUSSI(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "ussiString"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3069
    const-string v0, "persist.vendor.ims.ussi.ap"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrap sendUSSI, ussiString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3074
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3075
    return-void

    .line 3078
    :cond_0
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3079
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3080
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3081
    const/16 v1, 0x82d

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3085
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3086
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ussiString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3085
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3091
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->sendUssi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3094
    goto :goto_0

    .line 3092
    :catch_0
    move-exception v2

    .line 3093
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendUssi"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3096
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public sendWfcProfileInfo(IILandroid/os/Message;)V
    .locals 0
    .param p1, "wfcPreference"    # I
    .param p2, "phoneid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5300
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendWfcProfileInfo(ILandroid/os/Message;)V

    .line 5301
    return-void
.end method

.method public sendWfcProfileInfo(ILandroid/os/Message;)V
    .locals 5
    .param p1, "wfcPreference"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2870
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2872
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2873
    const/16 v1, 0x82f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2877
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2878
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wfcPreference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2877
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2883
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setWfcProfile(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2886
    goto :goto_0

    .line 2884
    :catch_0
    move-exception v2

    .line 2885
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setWfcProfile"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2888
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setBarringCalls([Lcom/mediatek/ims/MtkImsBarringCall;Landroid/os/Message;)V
    .locals 5
    .param p1, "calls"    # [Lcom/mediatek/ims/MtkImsBarringCall;
    .param p2, "result"    # Landroid/os/Message;

    .line 3696
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3697
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3699
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3700
    const/16 v1, 0x88d

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3703
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 3705
    const-string v2, "setBarringCalls does not support"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3708
    if-eqz p2, :cond_0

    .line 3709
    nop

    .line 3711
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 3709
    invoke-static {p2, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3712
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3715
    :cond_0
    return-void

    .line 3718
    :cond_1
    if-nez p1, :cond_3

    .line 3720
    const-string v2, "setBarringCalls, calls is null"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 3723
    if-eqz p2, :cond_2

    .line 3724
    nop

    .line 3726
    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 3724
    invoke-static {p2, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3727
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3730
    :cond_2
    return-void

    .line 3734
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3735
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3734
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3739
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setBarringCalls(I[Lcom/mediatek/ims/MtkImsBarringCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3742
    goto :goto_0

    .line 3740
    :catch_0
    move-exception v2

    .line 3741
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setBarringCalls"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3744
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .locals 5
    .param p1, "clipEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3359
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3360
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3361
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3362
    const/16 v1, 0x837

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3366
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clipEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3371
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setClip(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3374
    goto :goto_0

    .line 3372
    :catch_0
    move-exception v2

    .line 3373
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "setCLIP"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3376
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 5
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3320
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3321
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3322
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3324
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clirMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3328
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setClir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3331
    goto :goto_0

    .line 3329
    :catch_0
    move-exception v2

    .line 3330
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setCLIR"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3333
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .locals 5
    .param p1, "colpEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3457
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3458
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3459
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3460
    const/16 v1, 0x84b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3464
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " colpEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3469
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setColp(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3472
    goto :goto_0

    .line 3470
    :catch_0
    move-exception v2

    .line 3471
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "setCOLP"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3474
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 5
    .param p1, "colrEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3408
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3409
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3410
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3411
    const/16 v1, 0x84c

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3415
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " colrEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3420
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setColr(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3423
    goto :goto_0

    .line 3421
    :catch_0
    move-exception v2

    .line 3422
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "setCOLR"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3425
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 5
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 5918
    .local p1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5919
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5921
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5922
    const/16 v1, 0x88a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5926
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5930
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setCallAdditionalInfo(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5933
    goto :goto_0

    .line 5931
    :catch_0
    move-exception v2

    .line 5932
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setCallAdditionalInfo"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5935
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 3213
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3214
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3215
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 3218
    .local v8, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cfReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeSeconds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3224
    :try_start_0
    iget v2, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setCallForward(IIIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3228
    goto :goto_0

    .line 3226
    :catch_0
    move-exception v1

    .line 3227
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "setCallForward"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3230
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 16
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "result"    # Landroid/os/Message;

    .line 3508
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3509
    invoke-virtual {v1, v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 3510
    .local v11, "voiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v11}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3511
    const/16 v0, 0x84e

    iget-object v3, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v12

    .line 3516
    .local v12, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v12, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " action = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " cfReason = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " serviceClass = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p3

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " timeSeconds = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3522
    :try_start_0
    iget v4, v12, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v3, v11

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setCallForwardInTimeSlot(IIIILjava/lang/String;I[J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3527
    goto :goto_0

    .line 3524
    :catch_0
    move-exception v0

    .line 3525
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "setCallForwardInTimeSlot"

    invoke-direct {v1, v3, v4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 3510
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    .line 3529
    :goto_0
    return-void
.end method

.method public setCallIndication(IIII)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I
    .param p4, "cause"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5403
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setCallIndication(IIIILandroid/os/Message;)V

    .line 5404
    return-void
.end method

.method public setCallIndication(IIIILandroid/os/Message;)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I
    .param p4, "cause"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2000
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 2001
    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;

    .line 2003
    .local v0, "mtkVoiceProxy":Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2004
    const/16 v1, 0x7e0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 2008
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2009
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seqNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2008
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2014
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->setCallIndication(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2017
    goto :goto_0

    .line 2015
    :catch_0
    move-exception v1

    .line 2016
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "setCallIndication"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2019
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3281
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 3282
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3283
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3286
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3290
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setCallWaiting(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3293
    goto :goto_0

    .line 3291
    :catch_0
    move-exception v2

    .line 3292
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setCallWaiting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3295
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 3176
    const-string v5, "A0000000871002"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 3177
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 3185
    const-class v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    invoke-virtual {p0, v0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioSimProxy;

    .line 3186
    .local v0, "simProxy":Lcom/mediatek/ims/ril/RadioSimProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3187
    const/16 v1, 0x2b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v8

    .line 3190
    .local v8, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " facility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lockstate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3195
    :try_start_0
    iget v2, v8, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 3196
    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3198
    invoke-static {p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3200
    invoke-static {p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3195
    move-object v1, v0

    move v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/ims/ril/RadioSimProxy;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3203
    goto :goto_0

    .line 3201
    :catch_0
    move-exception v1

    .line 3202
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "setFacilityLockForApp"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3205
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsBearerNotification(II)V
    .locals 1
    .param p1, "phoneid"    # I
    .param p2, "enable"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5312
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsBearerNotification(ILandroid/os/Message;)V

    .line 5313
    return-void
.end method

.method public setImsBearerNotification(ILandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3829
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3831
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3832
    const/16 v1, 0x857

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3836
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsBearerNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3839
    goto :goto_0

    .line 3837
    :catch_0
    move-exception v2

    .line 3838
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setImsBearerNotification"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3841
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCallMode(ILandroid/os/Message;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 4656
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4658
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4659
    const/16 v1, 0x886

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4663
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4668
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsCallMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4671
    goto :goto_0

    .line 4669
    :catch_0
    move-exception v2

    .line 4670
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setImsCallMode"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4673
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCfg([IILandroid/os/Message;)V
    .locals 0
    .param p1, "params"    # [I
    .param p2, "phoneid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5331
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsCfg([ILandroid/os/Message;)V

    .line 5332
    return-void
.end method

.method public setImsCfg([ILandroid/os/Message;)V
    .locals 16
    .param p1, "params"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .line 2074
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    aget v3, p1, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v0

    .line 2075
    .local v7, "volteEnable":Z
    :goto_0
    aget v3, p1, v4

    if-ne v3, v4, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v0

    .line 2076
    .local v8, "vilteEnable":Z
    :goto_1
    const/4 v3, 0x2

    aget v5, p1, v3

    if-ne v5, v4, :cond_2

    move v9, v4

    goto :goto_2

    :cond_2
    move v9, v0

    .line 2077
    .local v9, "vowifiEnable":Z
    :goto_2
    const/4 v5, 0x3

    aget v6, p1, v5

    if-ne v6, v4, :cond_3

    move v10, v4

    goto :goto_3

    :cond_3
    move v10, v0

    .line 2078
    .local v10, "viwifiEnable":Z
    :goto_3
    const/4 v6, 0x4

    aget v11, p1, v6

    if-ne v11, v4, :cond_4

    move v11, v4

    goto :goto_4

    :cond_4
    move v11, v0

    .line 2079
    .local v11, "smsEnable":Z
    :goto_4
    const/4 v13, 0x5

    aget v12, p1, v13

    if-ne v12, v4, :cond_5

    move v12, v4

    goto :goto_5

    :cond_5
    move v12, v0

    .line 2081
    .local v12, "eimsEnable":Z
    :goto_5
    const-class v14, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {v1, v14, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v14

    check-cast v14, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2083
    .local v14, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v14}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 2084
    const/16 v15, 0x81d

    iget-object v13, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v15, v2, v13}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v13

    .line 2088
    .local v13, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ">  "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v15, v13, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2089
    invoke-static {v15}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " volteEnable = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v0, p1, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " vilteEnable = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v6, p1, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " vowifiEnable = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " viwifiEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " smsEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x4

    aget v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " eimsEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x5

    aget v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2088
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2099
    :try_start_0
    iget v6, v13, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v5, v14

    invoke-virtual/range {v5 .. v12}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImscfg(IZZZZZZ)V

    .line 2106
    iget-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2107
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2108
    iget v0, v13, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/ril/RILRequest;

    .line 2109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v13, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2110
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " sent and removed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2109
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2115
    :cond_6
    goto :goto_6

    .line 2113
    :catch_0
    move-exception v0

    .line 2114
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "setImsCfg"

    invoke-direct {v1, v4, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2117
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_7
    :goto_6
    return-void
.end method

.method public setImsCfgFeatureValue(IIIILandroid/os/Message;)V
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "isLast"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2557
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2559
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2560
    const/16 v1, 0x858

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v7

    .line 2565
    .local v7, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2566
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " featureId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLast="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2565
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2573
    :try_start_0
    iget v2, v7, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsCfgFeatureValue(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2577
    goto :goto_0

    .line 2575
    :catch_0
    move-exception v1

    .line 2576
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "setImsCfgFeatureValue"

    invoke-direct {p0, v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2579
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    :goto_0
    return-void
.end method

.method public setImsCfgProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "configId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2618
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2620
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2621
    const/16 v1, 0x85a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2626
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const/16 v2, 0x3ea

    const-string v3, ", value="

    const-string v4, " configId = "

    const-string v5, ">  "

    if-ne p1, v2, :cond_0

    .line 2627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2628
    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2629
    const-string v3, "IMS_RILA"

    invoke-static {v3, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2627
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2631
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2632
    invoke-static {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2631
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2638
    :goto_0
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsCfgProvisionValue(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2641
    goto :goto_1

    .line 2639
    :catch_0
    move-exception v2

    .line 2640
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setImsCfgProvisionValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2643
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setImsRegistrationReport(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5337
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 5338
    return-void
.end method

.method public setImsRegistrationReport(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 3879
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3881
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3882
    const/16 v1, 0x831

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3886
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3890
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setImsRegistrationReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3893
    goto :goto_0

    .line 3891
    :catch_0
    move-exception v2

    .line 3892
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setImsRegistrationReport"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3895
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setModemImsCfg(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "keys"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 2127
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 2129
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2130
    const/16 v1, 0x850

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2134
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2135
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keys = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " values = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2134
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2142
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2145
    goto :goto_0

    .line 2143
    :catch_0
    move-exception v2

    .line 2144
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "sendModemImsCfg"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2147
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "enableMute"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1596
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1597
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1598
    const/16 v1, 0x35

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 1602
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 1603
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1602
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1608
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->setMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1611
    goto :goto_0

    .line 1609
    :catch_0
    move-exception v2

    .line 1610
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setMute"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 1613
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setProvisionValue(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "provisionStr"    # Ljava/lang/String;
    .param p3, "provisionValue"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5294
    invoke-virtual {p0, p2, p3, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setProvisionValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 5295
    return-void
.end method

.method public setProvisionValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "provisionStr"    # Ljava/lang/String;
    .param p2, "provisionValue"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2523
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2524
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2525
    const/16 v1, 0x81f

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2529
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2530
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provisionStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provisionValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2529
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2534
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2535
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2536
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2538
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2539
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2543
    :goto_0
    goto :goto_1

    .line 2541
    :catch_0
    move-exception v2

    .line 2542
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "setProvisionValue"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2545
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public setRttMode(ILandroid/os/Message;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 4953
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4954
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4955
    const/16 v1, 0x87e

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4959
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4960
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4959
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4965
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setRttMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4969
    goto :goto_0

    .line 4967
    :catch_0
    move-exception v2

    .line 4968
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setRttMode"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4971
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setRttModifyRequestResponse(IILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 4860
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4861
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4862
    const/16 v1, 0x881

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4866
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 4867
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4866
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4872
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->rttModifyRequestResponse(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4876
    goto :goto_0

    .line 4874
    :catch_0
    move-exception v2

    .line 4875
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "rttModifyRequestResponse"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4878
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSipHeader(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "total"    # I
    .param p2, "index"    # I
    .param p3, "headerCount"    # I
    .param p4, "headerValuePair"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .line 4594
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4596
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4597
    const/16 v1, 0x884

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4601
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4604
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4605
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4606
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4607
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4608
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4611
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setSipHeader(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4614
    goto :goto_0

    .line 4612
    :catch_0
    move-exception v3

    .line 4613
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    const-string v5, "setSipHeader"

    invoke-direct {p0, v4, v5, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4616
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSipHeaderReport(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "headerType"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 4626
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 4628
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4629
    const/16 v1, 0x885

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 4633
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " headerType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 4637
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4638
    .local v2, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4639
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4642
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, v2}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setSipHeaderReport(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4645
    goto :goto_0

    .line 4643
    :catch_0
    move-exception v3

    .line 4644
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    const-string v5, "setSipHeaderReport"

    invoke-direct {p0, v4, v5, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4647
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setVoiceDomainPreference(ILandroid/os/Message;)V
    .locals 5
    .param p1, "vdp"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3904
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3906
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3907
    const/16 v1, 0x84a

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3910
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vdp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3914
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setVoiceDomainPreference(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3917
    goto :goto_0

    .line 3915
    :catch_0
    move-exception v2

    .line 3916
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setVoiceDomainPreference"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3919
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setupXcapUserAgentString(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3624
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3625
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3626
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3627
    const/16 v1, 0x877

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3631
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 3632
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userAgent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3631
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3637
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->setupXcapUserAgentString(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3640
    goto :goto_0

    .line 3638
    :catch_0
    move-exception v2

    .line 3639
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "setupXcapUserAgentString"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3642
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;IZZLandroid/os/Message;)V
    .locals 7
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "clirMode"    # I
    .param p4, "isEmergency"    # Z
    .param p5, "isVideoCall"    # Z
    .param p6, "result"    # Landroid/os/Message;

    .line 1630
    if-eqz p5, :cond_0

    .line 1631
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 1632
    :cond_0
    if-eqz p4, :cond_1

    .line 1633
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->emergencyDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 1635
    :cond_1
    invoke-virtual {p0, p1, p3, p6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1637
    :goto_0
    return-void
.end method

.method public startConference([Ljava/lang/String;IZILandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "phoneid"    # I
    .param p5, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5319
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->startConference([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 5320
    return-void
.end method

.method public startConference([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .line 1653
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 1654
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 7
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1925
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 1926
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1927
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1928
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1929
    const-class v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1930
    .local v1, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1931
    const/16 v2, 0x31

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 1933
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->start()V

    .line 1934
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1935
    .local v4, "param":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v2, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v5

    .line 1937
    .local v5, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1938
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v6

    if-ne v6, v3, :cond_0

    .line 1939
    const-string v3, "send start dtmf"

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v2, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1943
    invoke-direct {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1946
    .end local v1    # "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v4    # "param":[Ljava/lang/Object;
    .end local v5    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 1947
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1948
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1947
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1951
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1952
    return-void

    .line 1951
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Message;

    .line 1963
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    monitor-enter v0

    .line 1964
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1965
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1966
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1967
    const-class v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 1968
    .local v1, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1969
    const/16 v2, 0x32

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p1, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v2

    .line 1971
    .local v2, "rr":Lcom/mediatek/ims/ril/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->stop()V

    .line 1972
    const/4 v3, 0x0

    .line 1973
    .local v3, "param":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->buildDtmfQueueRR(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;

    move-result-object v4

    .line 1975
    .local v4, "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->add(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1976
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1977
    const-string v5, "send stop dtmf"

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1979
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1980
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->sendDtmfQueueRR(Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;)V

    .line 1983
    .end local v1    # "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    .end local v2    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "param":[Ljava/lang/Object;
    .end local v4    # "dqrr":Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler$DtmfQueueRR;
    :cond_0
    goto :goto_0

    .line 1984
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;

    .line 1985
    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$DtmfQueueHandler;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1984
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1988
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1989
    return-void

    .line 1988
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public swap(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .line 2849
    const-class v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/RadioVoiceProxy;

    .line 2850
    .local v0, "voiceProxy":Lcom/mediatek/ims/ril/RadioVoiceProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2851
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2856
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2859
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/ril/RILRequest;[Ljava/lang/Object;)V

    .line 2861
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_0
    return-void
.end method

.method public terminate(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5367
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(ILandroid/os/Message;)V

    .line 5368
    return-void
.end method

.method public terminate(II)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->hangup(IILandroid/os/Message;)V

    .line 5374
    return-void
.end method

.method public toggleRttAudioIndication(IILandroid/os/Message;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "enable"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 5894
    invoke-direct {p0, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 5895
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 5896
    const/16 v1, 0x888

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5899
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5904
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5905
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5906
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->toggleRttAudioIndication(III)V

    goto :goto_0

    .line 5908
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 5909
    invoke-interface {v2, v3, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->toggleRttAudioIndication(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5913
    :goto_0
    goto :goto_1

    .line 5911
    :catch_0
    move-exception v2

    .line 5912
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "toggleRttAudioIndication"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5915
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOffIms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5343
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->turnOffIms(Landroid/os/Message;)V

    .line 5344
    return-void
.end method

.method public turnOffIms(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2187
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2188
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2189
    const/16 v1, 0x815

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2193
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2194
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2193
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2198
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2199
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2200
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsEnable(IZ)V

    goto :goto_0

    .line 2202
    :cond_0
    move-object v3, v0

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2203
    invoke-interface {v3, v4, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2207
    :goto_0
    goto :goto_1

    .line 2205
    :catch_0
    move-exception v3

    .line 2206
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "setImsEnable"

    invoke-direct {p0, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2210
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOffRcsUa(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2460
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2462
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2463
    const/16 v1, 0x876

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2467
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2468
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2467
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2472
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xe

    const/4 v4, 0x0

    .line 2474
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2472
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2477
    goto :goto_0

    .line 2475
    :catch_0
    move-exception v2

    .line 2476
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2479
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffVilte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2352
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2354
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2355
    const/16 v1, 0x818

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2359
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2360
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2359
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2364
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 2366
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2364
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2369
    goto :goto_0

    .line 2367
    :catch_0
    move-exception v2

    .line 2368
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2371
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffViwifi(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2406
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2408
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2409
    const/16 v1, 0x819

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2413
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2414
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2413
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2418
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 2420
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2418
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2423
    goto :goto_0

    .line 2421
    :catch_0
    move-exception v2

    .line 2422
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2425
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffVolte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2244
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2246
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2247
    const/16 v1, 0x816

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2251
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2252
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2251
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2256
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 2258
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2256
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2261
    goto :goto_0

    .line 2259
    :catch_0
    move-exception v2

    .line 2260
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2263
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffWfc(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2298
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2300
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2301
    const/16 v1, 0x817

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2305
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2306
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2305
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2310
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 2312
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2310
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2315
    goto :goto_0

    .line 2313
    :catch_0
    move-exception v2

    .line 2314
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2317
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnIms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneid"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5349
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->turnOnIms(Landroid/os/Message;)V

    .line 5350
    return-void
.end method

.method public turnOnIms(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2156
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioProxy(Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 2157
    .local v0, "radioProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_1

    .line 2158
    const/16 v1, 0x815

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2162
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2163
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2162
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2167
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMtkRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2168
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2169
    invoke-interface {v2, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsEnable(IZ)V

    goto :goto_0

    .line 2171
    :cond_0
    move-object v2, v0

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 2172
    invoke-interface {v2, v4, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2176
    :goto_0
    goto :goto_1

    .line 2174
    :catch_0
    move-exception v2

    .line 2175
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "setImsEnable"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2178
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public turnOnRcsUa(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2433
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2435
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2436
    const/16 v1, 0x876

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2440
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2441
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2440
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2445
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xe

    const/4 v4, 0x1

    .line 2447
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2445
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2450
    goto :goto_0

    .line 2448
    :catch_0
    move-exception v2

    .line 2449
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2452
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnVilte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2325
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2327
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2328
    const/16 v1, 0x818

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2332
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2333
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2332
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2337
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xc

    const/4 v4, 0x1

    .line 2339
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2337
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2342
    goto :goto_0

    .line 2340
    :catch_0
    move-exception v2

    .line 2341
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2344
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnViwifi(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2379
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2381
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2382
    const/16 v1, 0x819

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2386
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2387
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2386
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2391
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xd

    const/4 v4, 0x1

    .line 2393
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2391
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2396
    goto :goto_0

    .line 2394
    :catch_0
    move-exception v2

    .line 2395
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2398
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnVolte(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2217
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2219
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2220
    const/16 v1, 0x816

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2224
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2225
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2224
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2229
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0xb

    const/4 v4, 0x1

    .line 2231
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2229
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2234
    goto :goto_0

    .line 2232
    :catch_0
    move-exception v2

    .line 2233
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2236
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnWfc(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 2271
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;

    .line 2273
    .local v0, "mtkModemProxy":Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2274
    const/16 v1, 0x817

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 2278
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 2279
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch = ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2278
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2283
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    const/16 v3, 0x10

    const/4 v4, 0x1

    .line 2285
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2283
    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->setVendorSetting(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2288
    goto :goto_0

    .line 2286
    :catch_0
    move-exception v2

    .line 2287
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    const-string v4, "setVendorSetting"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 2290
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public unattendedCallTransfer(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1815
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->internalImsEct(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1816
    return-void
.end method

.method unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 5260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5261
    return-void
.end method

.method unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 5264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5265
    return-void
.end method

.method unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 5268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5269
    return-void
.end method

.method unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 5272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 5273
    return-void
.end method

.method public videoRingtoneEventRequest(Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 5
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 5938
    .local p1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5939
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 5941
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5942
    const/16 v1, 0x88b

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 5946
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 5950
    :try_start_0
    iget v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5953
    goto :goto_0

    .line 5951
    :catch_0
    move-exception v2

    .line 5952
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "videoRingtoneEventRequest"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5955
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "response"    # Landroid/os/Message;

    .line 3026
    const-class v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3027
    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;

    .line 3029
    .local v0, "imsProxy":Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
    invoke-virtual {v0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3030
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "> "

    if-nez v1, :cond_0

    .line 3031
    const/16 v1, 0x833

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3036
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3039
    :try_start_0
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, p1, p2, p3}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->vtDial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3042
    goto :goto_0

    .line 3040
    :catch_0
    move-exception v3

    .line 3041
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "vtDial"

    invoke-direct {p0, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3043
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 3044
    :cond_0
    const/16 v1, 0x82c

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 3049
    .restart local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 3052
    :try_start_1
    iget v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v0, v3, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->vtDialWithSipUri(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3055
    goto :goto_1

    .line 3053
    :catch_1
    move-exception v3

    .line 3054
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v4, "vtDialWithSipUri"

    invoke-direct {p0, v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleMtkRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 3058
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method
