.class public Lcom/mediatek/wfo/impl/WfcHandler;
.super Landroid/os/Handler;
.source "WfcHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;
    }
.end annotation


# static fields
.field private static final ACTION_OPERATOR_CONFIG_CHANGED:Ljava/lang/String; = "com.mediatek.common.carrierexpress.operator_config_changed"

.field private static final AID_SETTING_URI:Landroid/net/Uri;

.field private static final AID_SETTING_URI_STR:Ljava/lang/String; = "wfc_aid_value"

.field private static final BASE:I = 0x7d0

.field private static final CODE_WFC_DNS_RESOLVE_FQDN_ERROR:I = 0x411

.field private static final CODE_WFC_DNS_TIMEOUT_ERROR:I = 0x410

.field private static final CODE_WFC_EPDG_CON_OR_LOCAL_OR_NULL_PTR_ERROR:I = 0x439

.field private static final CODE_WFC_EPDG_IPSEC_SETUP_ERROR:I = 0x43a

.field private static final CODE_WFC_SERVER_CERT_INVALID_ERROR:I = 0x457

.field private static final CODE_WFC_SERVER_CERT_VALIDATION_ERROR:I = 0x44d

.field private static final EVENT_HANDLE_MODEM_POWER:I = 0x7d0

.field public static final EVENT_HANDLE_WFC_STATE_CHANGED:I = 0x839

.field private static final EVENT_HANDLE_WIFI_STATE_CHANGE:I = 0x7d3

.field private static final EVENT_INITIALIZE:I = 0x7d5

.field private static final EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0x7d6

.field private static final EVENT_NOTIFY_EPDG_SCREEN_STATE:I = 0x7d4

.field private static final EVENT_NOTIFY_WIFI_NO_INTERNET:I = 0x7d2

.field private static final EVENT_ON_ALLOW_WIFI_OFF:I = 0x89a

.field private static final EVENT_ON_LOCATION_TIMEOUT:I = 0x899

.field public static final EVENT_ON_PDN_ERROR:I = 0x835

.field public static final EVENT_ON_PDN_HANDOVER:I = 0x834

.field public static final EVENT_ON_ROVE_OUT:I = 0x836

.field public static final EVENT_ON_WFC_PDN_STATE_CHANGED:I = 0x837

.field public static final EVENT_ON_WIFI_PDN_OOS:I = 0x838

.field private static final EVENT_SET_WFC_EMERGENCY_ADDRESS_ID:I = 0x7d1

.field private static final EXTRA_POWER_ON_MODEM_KEY:Ljava/lang/String; = "mediatek:POWER_ON_MODEM"

.field private static final IMS_REG_ERROR_NOTIFICATION:Ljava/lang/String; = "com.android.imsconnection.DISCONNECTED"

.field private static final IMS_REG_ERROR_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.mediatek.permission.IMS_ERR_NOTIFICATION"

.field private static final INTENT_KEY_PROP_KEY:Ljava/lang/String; = "simPropKey"

.field private static final INVALID:I = -0x1

.field private static final MAX_VALID_SIM_COUNT:I = 0x4

.field private static final MTK_KEY_DISABLE_WFC_AFTER_AUTH_FAIL:Ljava/lang/String; = "mtk_carrier_disable_wfc_after_auth_fail_bool"

.field private static final NOT_REGISTERED:I = 0x2

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final RADIO_MANAGER_POWER_ON_MODEM:Ljava/lang/String; = "mediatek.intent.action.WFC_POWER_ON_MODEM"

.field private static final REGISTERED:I = 0x1

.field private static final REGISTERING:I = 0x3

.field private static final RESPONSE_NOTIFY_EPDG_SCREEN_STATE:I = 0x89b

.field private static final RESPONSE_SET_WFC_EMERGENCY_ADDRESS_ID:I = 0x898

.field private static final RETRY_TIMEOUT:I = 0xbb8

.field private static SUB_CAUSE_IKEV2_24:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WfcHandler"

.field private static final TELDBG:Z

.field private static final USR_BUILD:Z

.field private static final WFC_REQUEST_PARTIAL_SCAN:Ljava/lang/String; = "com.mediatek.intent.action.WFC_REQUEST_PARTIAL_SCAN"

.field private static final WFC_STATUS_CHANGED:Ljava/lang/String; = "com.mediatek.intent.action.WFC_STATUS_CHANGED"

.field private static WIFI_NO_INTERNET_ERROR_CODE:I

.field private static WIFI_NO_INTERNET_TIMEOUT:I

.field private static mInstance:Lcom/mediatek/wfo/impl/WfcHandler;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

.field private mHasWiFiDisabledPending:Z

.field private mIsWfcSettingsOn:[Z

.field private mIsWifiConnected:Z

.field private mIsWifiEnabled:Z

.field private mIsWifiL2Connected:Z

.field private mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/mediatek/wfo/IWifiOffloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

.field private mPartialScanCount:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenState:I

.field private mSimCount:I

.field private mWfcEccAid:Ljava/lang/String;

.field private mWfcState:[I

.field private mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

.field private mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

.field mWosExt:Lcom/mediatek/wfo/op/IWosExt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 102
    const-string v0, "wfc_aid_value"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->AID_SETTING_URI:Landroid/net/Uri;

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->mInstance:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 187
    const/16 v0, 0x439

    sput v0, Lcom/mediatek/wfo/impl/WfcHandler;->WIFI_NO_INTERNET_ERROR_CODE:I

    .line 188
    const/16 v0, 0x1f40

    sput v0, Lcom/mediatek/wfo/impl/WfcHandler;->WIFI_NO_INTERNET_TIMEOUT:I

    .line 199
    const/16 v0, 0x18

    sput v0, Lcom/mediatek/wfo/impl/WfcHandler;->SUB_CAUSE_IKEV2_24:I

    .line 203
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 204
    const-string v3, "userdebug"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mediatek/wfo/impl/WfcHandler;->USR_BUILD:Z

    .line 205
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/mediatek/wfo/impl/WfcHandler;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiHandler"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p3, "simCount"    # I
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 458
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiL2Connected:Z

    .line 138
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mHasWiFiDisabledPending:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    .line 157
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    .line 340
    new-instance v0, Lcom/mediatek/wfo/impl/WfcHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WfcHandler$1;-><init>(Lcom/mediatek/wfo/impl/WfcHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 917
    new-instance v0, Lcom/mediatek/wfo/impl/WfcHandler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler$2;-><init>(Lcom/mediatek/wfo/impl/WfcHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContentObserver:Landroid/database/ContentObserver;

    .line 989
    new-instance v0, Lcom/mediatek/wfo/impl/WfcHandler$3;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WfcHandler$3;-><init>(Lcom/mediatek/wfo/impl/WfcHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 459
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    .line 460
    iput-object p2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 461
    if-eqz p2, :cond_0

    .line 462
    invoke-virtual {p2, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWfcHandler(Lcom/mediatek/wfo/impl/WfcHandler;)V

    .line 464
    :cond_0
    const/4 v0, 0x4

    if-gt p3, v0, :cond_1

    move v0, p3

    :cond_1
    iput v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    .line 465
    iput-object p5, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 467
    new-array v1, v0, [Lcom/mediatek/wfo/DisconnectCause;

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

    .line 469
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcState:[I

    .line 471
    const/16 v0, 0x7d5

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 472
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 473
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wfo/impl/WfcHandler;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 97
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/wfo/impl/WfcHandler;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WfcHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/wfo/impl/WfcHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # Z

    .line 97
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiL2Connected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/wfo/impl/WfcHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # Z

    .line 97
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->checkIfShowNoInternetError(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/wfo/impl/WfcHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 97
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->updateWfcUISetting()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/wfo/impl/WfcHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 97
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mScreenState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/wfo/impl/WfcHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # I

    .line 97
    iput p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mScreenState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/wfo/impl/WfcHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # I

    .line 97
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyEPDGScreenState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/wfo/impl/WfcHandler;)[Lcom/mediatek/wfo/DisconnectCause;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 97
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/wfo/impl/WfcHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 97
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/wfo/impl/WfcHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 97
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mHasWiFiDisabledPending:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/wfo/impl/WfcHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # Z

    .line 97
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mHasWiFiDisabledPending:Z

    return p1
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .line 97
    sget-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->AID_SETTING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/wfo/impl/WfcHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 97
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/wfo/impl/WfcHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 97
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcEccAid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/wfo/impl/WfcHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcEccAid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/wfo/impl/WfcHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 97
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->handleModemPower()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/wfo/impl/WfcHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 97
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->createWosExt()V

    return-void
.end method

.method private checkIfShowNoInternetError(Z)V
    .locals 7
    .param p1, "showImmediately"    # Z

    .line 1140
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1141
    .local v0, "mainCapabilityPhoneId":I
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->getSubIdBySlot(I)I

    move-result v1

    .line 1143
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v2

    .line 1144
    .local v2, "isImsReg":Z
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v3

    .line 1146
    .local v3, "isWifiConnected":Z
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 1148
    return-void

    .line 1151
    :cond_0
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v4, v4, v0

    const/16 v5, 0x7d2

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiL2Connected:Z

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 1154
    if-eqz p1, :cond_1

    .line 1155
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    sget v5, Lcom/mediatek/wfo/impl/WfcHandler;->WIFI_NO_INTERNET_ERROR_CODE:I

    invoke-interface {v4, v5}, Lcom/mediatek/wfo/op/IWosExt;->showPDNErrorMessages(I)V

    .line 1156
    return-void

    .line 1159
    :cond_1
    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1160
    const-string v4, "checkIfShowNoInternetError(): start 8s timeout"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1161
    nop

    .line 1162
    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    sget v5, Lcom/mediatek/wfo/impl/WfcHandler;->WIFI_NO_INTERNET_TIMEOUT:I

    int-to-long v5, v5

    .line 1161
    invoke-virtual {p0, v4, v5, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1167
    :cond_2
    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1168
    const-string v4, "checkIfShowNoInternetError(): cancel 8s timeout"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->removeMessages(I)V

    .line 1172
    :cond_3
    :goto_0
    return-void
.end method

.method private checkInvalidSimIdx(ILjava/lang/String;)Z
    .locals 1
    .param p1, "simIdx"    # I
    .param p2, "dbgMsg"    # Ljava/lang/String;

    .line 855
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 859
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 856
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 857
    const/4 v0, 0x1

    return v0
.end method

.method private createWosExt()V
    .locals 3

    .line 1181
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    if-eqz v0, :cond_0

    .line 1182
    invoke-interface {v0}, Lcom/mediatek/wfo/op/IWosExt;->dispose()V

    .line 1183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/wfo/op/OpWosCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;

    move-result-object v0

    .line 1186
    .local v0, "wosFactory":Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;->makeWosExt(Landroid/content/Context;)Lcom/mediatek/wfo/op/IWosExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    .line 1187
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/mediatek/wfo/op/IWosExt;->initialize(Landroid/content/Context;)V

    .line 1188
    return-void
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 1273
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1275
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 1276
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1281
    :cond_0
    if-eqz v1, :cond_1

    .line 1282
    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .local v2, "ret":Z
    goto :goto_0

    .line 1285
    .end local v2    # "ret":Z
    :cond_1
    const-string v2, "getBooleanCarrierConfig: get from default config"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1286
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1289
    .restart local v2    # "ret":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanCarrierConfig sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1290
    return v2
.end method

.method private getCurrentAssociatedApCount()I
    .locals 12

    .line 1219
    const/4 v0, 0x0

    .line 1220
    .local v0, "count":I
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1222
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v2, "WfcHandler"

    if-eqz v1, :cond_5

    .line 1224
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 1226
    .local v3, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 1227
    .local v4, "wifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 1230
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 1231
    .local v5, "appInfo":Landroid/net/wifi/ScanResult;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 1232
    .local v7, "configuredAP":Landroid/net/wifi/WifiConfiguration;
    const-string v8, ""

    .line 1233
    .local v8, "strTrimmed":Ljava/lang/String;
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 1234
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v10, "\""

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1236
    :cond_0
    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1238
    add-int/lit8 v0, v0, 0x1

    .line 1240
    .end local v7    # "configuredAP":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "strTrimmed":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 1241
    .end local v5    # "appInfo":Landroid/net/wifi/ScanResult;
    :cond_2
    goto :goto_0

    :cond_3
    goto :goto_2

    .line 1243
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentAssociatedApCount() scanResults = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", wifiConfigList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    .end local v3    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v4    # "wifiConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_2
    goto :goto_3

    .line 1247
    :cond_5
    const-string v3, "getCurrentAssociatedApCount() wifiManager null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentAssociatedApCount(): count= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1251
    return v0
.end method

.method public static getInstance()Lcom/mediatek/wfo/impl/WfcHandler;
    .locals 1

    .line 442
    sget-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->mInstance:Lcom/mediatek/wfo/impl/WfcHandler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)Lcom/mediatek/wfo/impl/WfcHandler;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiHandler"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p2, "simCount"    # I
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 448
    sget-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->mInstance:Lcom/mediatek/wfo/impl/WfcHandler;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/mediatek/wfo/impl/WfcHandler;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/wfo/impl/WfcHandler;-><init>(Landroid/content/Context;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V

    sput-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->mInstance:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 451
    :cond_0
    sget-object v0, Lcom/mediatek/wfo/impl/WfcHandler;->mInstance:Lcom/mediatek/wfo/impl/WfcHandler;

    return-object v0
.end method

.method private getMainCapabilityPhoneId()I
    .locals 3

    .line 1120
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 1121
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1122
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCapabilityPhoneId error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WfcHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const/4 v0, -0x1

    .line 1125
    :cond_1
    return v0
.end method

.method private getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 2

    .line 1129
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1131
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1132
    const/4 v1, 0x0

    return-object v1

    .line 1134
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getSubIdBySlot(I)I
    .locals 2
    .param p1, "slot"    # I

    .line 1175
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1176
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    :goto_0
    return v1
.end method

.method private handleModemPower()V
    .locals 2

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleModemPower() mIsWifiEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWfcSettingsOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->isWfcSettingsEnabledAny()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 881
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->isWfcSettingsEnabledAny()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyPowerOnModem(Z)V

    goto :goto_0

    .line 884
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyPowerOnModem(Z)V

    .line 886
    :goto_0
    return-void
.end method

.method private handleRetry(ILandroid/os/AsyncResult;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "result"    # Landroid/os/AsyncResult;

    .line 285
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    return-void

    .line 289
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 290
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 292
    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 478
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    .line 481
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->updateWfcUISetting()Z

    .line 483
    const/16 v0, 0x7d3

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->createWosExt()V

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiConnected:Z

    .line 488
    iput v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mPartialScanCount:I

    .line 490
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->registerForBroadcast()V

    .line 491
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->registerIndication()V

    .line 494
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->registerForWfcAidObserver()V

    .line 495
    return-void
.end method

.method private isWfcSettingsEnabledAny()Z
    .locals 3

    .line 906
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfcSettingsEnabledAny: found Wfc settings enabled on SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 910
    const/4 v1, 0x1

    return v1

    .line 906
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 913
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 295
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 332
    const-string v0, "UNKNOWN"

    return-object v0

    .line 324
    :sswitch_0
    const-string v0, "RESPONSE_NOTIFY_EPDG_SCREEN_STATE"

    return-object v0

    .line 322
    :sswitch_1
    const-string v0, "EVENT_ON_ALLOW_WIFI_OFF"

    return-object v0

    .line 318
    :sswitch_2
    const-string v0, "EVENT_ON_LOCATION_TIMEOUT"

    return-object v0

    .line 314
    :sswitch_3
    const-string v0, "RESPONSE_SET_WFC_EMERGENCY_ADDRESS_ID"

    return-object v0

    .line 326
    :sswitch_4
    const-string v0, "EVENT_HANDLE_WFC_STATE_CHANGED"

    return-object v0

    .line 316
    :sswitch_5
    const-string v0, "EVENT_ON_WIFI_PDN_OOS"

    return-object v0

    .line 312
    :sswitch_6
    const-string v0, "EVENT_ON_WFC_PDN_STATE_CHANGED"

    return-object v0

    .line 310
    :sswitch_7
    const-string v0, "EVENT_ON_ROVE_OUT"

    return-object v0

    .line 308
    :sswitch_8
    const-string v0, "EVENT_ON_PDN_ERROR"

    return-object v0

    .line 306
    :sswitch_9
    const-string v0, "EVENT_ON_PDN_HANDOVER"

    return-object v0

    .line 330
    :sswitch_a
    const-string v0, "EVENT_MULTI_SIM_CONFIG_CHANGED"

    return-object v0

    .line 328
    :sswitch_b
    const-string v0, "EVENT_INITIALIZE"

    return-object v0

    .line 302
    :sswitch_c
    const-string v0, "EVENT_NOTIFY_EPDG_SCREEN_STATE"

    return-object v0

    .line 320
    :sswitch_d
    const-string v0, "EVENT_HANDLE_WIFI_STATE_CHANGE"

    return-object v0

    .line 304
    :sswitch_e
    const-string v0, "EVENT_NOTIFY_WIFI_NO_INTERNET"

    return-object v0

    .line 300
    :sswitch_f
    const-string v0, "EVENT_SET_WFC_EMERGENCY_ADDRESS_ID"

    return-object v0

    .line 298
    :sswitch_10
    const-string v0, "EVENT_HANDLE_MODEM_POWER"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_10
        0x7d1 -> :sswitch_f
        0x7d2 -> :sswitch_e
        0x7d3 -> :sswitch_d
        0x7d4 -> :sswitch_c
        0x7d5 -> :sswitch_b
        0x7d6 -> :sswitch_a
        0x834 -> :sswitch_9
        0x835 -> :sswitch_8
        0x836 -> :sswitch_7
        0x837 -> :sswitch_6
        0x838 -> :sswitch_5
        0x839 -> :sswitch_4
        0x898 -> :sswitch_3
        0x899 -> :sswitch_2
        0x89a -> :sswitch_1
        0x89b -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyEPDGScreenState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEPDGScreenState(), state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1057
    const/16 v0, 0x89b

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1058
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->notifyEPDGScreenState(ILandroid/os/Message;)V

    .line 1059
    return-void
.end method

.method private notifyLocationTimeout()V
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    if-eqz v0, :cond_0

    .line 1203
    invoke-interface {v0}, Lcom/mediatek/wfo/op/IWosExt;->showLocationTimeoutMessage()V

    goto :goto_0

    .line 1205
    :cond_0
    const-string v0, "WfcHandler"

    const-string v1, "notifyLocationTimeout: mWosExt null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :goto_0
    return-void
.end method

.method private notifyOnAllowWifiOff()V
    .locals 3

    .line 424
    const-string v0, "notifyOnAllowWifiOff"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 426
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 427
    add-int/lit8 v0, v0, -0x1

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v1}, Lcom/mediatek/wfo/IWifiOffloadListener;->onAllowWifiOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "onHandover: IllegalStateException occurs!"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 430
    :catch_1
    move-exception v1

    .line 433
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "onHandover: RemoteException occurs!"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 436
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 439
    return-void
.end method

.method private notifyOnHandover(III)V
    .locals 3
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandover simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1064
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1065
    add-int/lit8 v0, v0, -0x1

    .line 1067
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/wfo/IWifiOffloadListener;->onHandover(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1072
    :catch_0
    move-exception v1

    .line 1073
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "onHandover: IllegalStateException occurs!"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 1068
    :catch_1
    move-exception v1

    .line 1071
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "onHandover: RemoteException occurs!"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1074
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1076
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1077
    return-void
.end method

.method private notifyOnRoveOut(IZI)V
    .locals 3
    .param p1, "simIdx"    # I
    .param p2, "roveOut"    # Z
    .param p3, "rssi"    # I

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRoveOut simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " roveOut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1082
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1083
    add-int/lit8 v0, v0, -0x1

    .line 1085
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/wfo/IWifiOffloadListener;->onRoveOut(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1086
    :catch_0
    move-exception v1

    .line 1087
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "onRoveOut: RemoteException occurs!"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1088
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1090
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1091
    return-void
.end method

.method private notifyOnWifiPdnOOS(Ljava/lang/String;III)V
    .locals 3
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "callId"    # I
    .param p3, "oosState"    # I
    .param p4, "simId"    # I

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWifiPdnOOS apn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " oosState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " simId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1098
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1099
    add-int/lit8 v0, v0, -0x1

    .line 1101
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v1, p4, p3}, Lcom/mediatek/wfo/IWifiOffloadListener;->onWifiPdnOOSStateChanged(II)V

    .line 1102
    const-string v1, "onWifiPdnOOSStateChanged"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1103
    :catch_0
    move-exception v1

    .line 1104
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "onRoveOut: RemoteException occurs!"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1105
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1107
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1108
    return-void
.end method

.method private notifyPowerOnModem(Z)V
    .locals 2
    .param p1, "isModemOn"    # Z

    .line 889
    const-string v0, "ro.vendor.mtk_flight_mode_power_off_md"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    const-string v0, "modem always on, no need to control it!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 891
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 895
    const-string v0, "context is null, can\'t control modem!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 896
    return-void

    .line 899
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mediatek.intent.action.WFC_POWER_ON_MODEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 900
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    const-string v1, "mediatek:POWER_ON_MODEM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 902
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 903
    return-void
.end method

.method private onMultiSimConfigChanged(I)V
    .locals 5
    .param p1, "activeModemCount"    # I

    .line 504
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    .line 506
    .local v0, "prevActiveModemCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMultiSimConfigChanged, phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSimCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WfcHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    if-ne v0, p1, :cond_0

    return-void

    .line 511
    :cond_0
    iput p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    .line 513
    if-le v0, p1, :cond_1

    .line 515
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->updateWfcUISetting()Z

    goto :goto_1

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/mediatek/wfo/DisconnectCause;

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

    .line 518
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcState:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcState:[I

    .line 519
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    .line 522
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->updateWfcUISetting()Z

    .line 524
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 525
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x834

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnHandover(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 527
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x835

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnError(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 529
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x836

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnRoveOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 531
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x837

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWfcPdnStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 533
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0x838

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnOos(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method private onPdnHandover(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 584
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 585
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 587
    .local v1, "result":[I
    const-string v2, "WfcHandler"

    if-nez v1, :cond_0

    .line 588
    const-string v3, "onPdnHandover(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void

    .line 591
    :cond_0
    array-length v3, v1

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 592
    const-string v3, "onPdnHandover(): Bad params"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void

    .line 595
    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 596
    .local v2, "pdnType":I
    if-eqz v2, :cond_2

    .line 597
    const-string v3, "onPdnHandover(): Not IMS PDN, ignore"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 598
    return-void

    .line 601
    :cond_2
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 602
    .local v4, "stage":I
    const/4 v5, 0x2

    aget v6, v1, v5

    .line 603
    .local v6, "srcRat":I
    const/4 v7, 0x3

    aget v7, v1, v7

    .line 604
    .local v7, "desRat":I
    const/4 v8, 0x4

    aget v8, v1, v8

    .line 605
    .local v8, "simIdx":I
    invoke-direct {p0, v8, v4, v7}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyOnHandover(III)V

    .line 607
    if-ne v4, v3, :cond_3

    if-eq v7, v5, :cond_3

    .line 609
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v3}, Lcom/mediatek/wfo/op/IWosExt;->clearPDNErrorMessages()V

    .line 611
    :cond_3
    return-void
.end method

.method private onWfcPdnError(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 614
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 615
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 617
    .local v1, "result":[I
    const-string v2, "WfcHandler"

    if-nez v1, :cond_0

    .line 618
    const-string v3, "onWfcPdnError(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void

    .line 621
    :cond_0
    array-length v3, v1

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 622
    const-string v3, "onWfcPdnError(): Bad params"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void

    .line 625
    :cond_1
    const/4 v3, 0x0

    aget v3, v1, v3

    .line 626
    .local v3, "errCount":I
    const/4 v4, 0x1

    aget v4, v1, v4

    .line 627
    .local v4, "mainErr":I
    const/4 v5, 0x2

    aget v5, v1, v5

    .line 628
    .local v5, "subErr":I
    const/4 v6, 0x3

    aget v6, v1, v6

    .line 629
    .local v6, "simIdx":I
    iget-object v7, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

    new-instance v8, Lcom/mediatek/wfo/DisconnectCause;

    invoke-direct {v8, v4, v5}, Lcom/mediatek/wfo/DisconnectCause;-><init>(II)V

    aput-object v8, v7, v6

    .line 631
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onWfcPdnError(): errCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mainErr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", subErr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", simIdx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    if-eqz v4, :cond_4

    .line 637
    iget-object v7, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v7, v4, v6}, Lcom/mediatek/wfo/op/IWosExt;->setWfcRegErrorCode(II)V

    .line 641
    const/4 v7, 0x0

    .line 642
    .local v7, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/16 v8, 0x578

    const/16 v9, 0x3e8

    sparse-switch v4, :sswitch_data_0

    .line 682
    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    const-string v10, "REG99 - Unable to connect"

    invoke-direct {v8, v9, v4, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v7, v8

    goto :goto_0

    .line 650
    :sswitch_0
    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    const-string v10, "ER011 - Invalid Certificate"

    invoke-direct {v8, v9, v4, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v7, v8

    .line 654
    goto :goto_0

    .line 644
    :sswitch_1
    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    const-string v10, "ER010 - Invalid Certificate"

    invoke-direct {v8, v9, v4, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v7, v8

    .line 648
    goto :goto_0

    .line 669
    :sswitch_2
    sget v9, Lcom/mediatek/wfo/impl/WfcHandler;->SUB_CAUSE_IKEV2_24:I

    const-string v10, "ER082 - Unable to connect"

    if-ne v5, v9, :cond_2

    .line 670
    new-instance v9, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v11, 0x580

    invoke-direct {v9, v8, v11, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v7, v9

    goto :goto_0

    .line 675
    :cond_2
    new-instance v9, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v9, v8, v4, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v7, v9

    .line 680
    goto :goto_0

    .line 663
    :sswitch_3
    new-instance v9, Landroid/telephony/ims/ImsReasonInfo;

    const-string v10, "ER081 - Unable to connect"

    invoke-direct {v9, v8, v4, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v7, v9

    .line 667
    goto :goto_0

    .line 657
    :sswitch_4
    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    const-string v10, "ER041 - DNS Error"

    invoke-direct {v8, v9, v4, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v7, v8

    .line 661
    nop

    .line 709
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onWfcPdnError() imsReasonInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 712
    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_3

    .line 713
    add-int/lit8 v2, v2, -0x1

    .line 715
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v8, v6, v7}, Lcom/mediatek/wfo/IWifiOffloadListener;->onWfcRegError(ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 720
    :catch_0
    move-exception v8

    .line 721
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string v9, "onWfcStateChanged: IllegalStateException occurs!"

    invoke-virtual {p0, v9}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .end local v8    # "e":Ljava/lang/IllegalStateException;
    goto :goto_2

    .line 716
    :catch_1
    move-exception v8

    .line 719
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "onWfcStateChanged: RemoteException occurs!"

    invoke-virtual {p0, v9}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 722
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_1

    .line 724
    :cond_3
    iget-object v8, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 728
    .end local v2    # "i":I
    .end local v7    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    if-nez v3, :cond_5

    .line 729
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v2}, Lcom/mediatek/wfo/op/IWosExt;->clearPDNErrorMessages()V

    .line 730
    return-void

    .line 732
    :cond_5
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v2, v4}, Lcom/mediatek/wfo/op/IWosExt;->showPDNErrorMessages(I)V

    .line 733
    return-void

    :sswitch_data_0
    .sparse-switch
        0x410 -> :sswitch_4
        0x411 -> :sswitch_4
        0x439 -> :sswitch_3
        0x43a -> :sswitch_2
        0x44d -> :sswitch_1
        0x457 -> :sswitch_0
    .end sparse-switch
.end method

.method private onWfcPdnStateChanged(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 788
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 789
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 791
    .local v1, "result":[I
    if-nez v1, :cond_0

    .line 792
    const-string v2, "WfcHandler"

    const-string v3, "onWfcPdnStateChanged(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return-void

    .line 795
    :cond_0
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 796
    .local v2, "state":I
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 798
    .local v4, "simIdx":I
    iget v5, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    if-ge v4, v5, :cond_1

    .line 799
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcState:[I

    aput v2, v5, v4

    .line 802
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWfcPdnStateChanged() state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " simIdx:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 803
    if-ne v3, v2, :cond_2

    .line 804
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v3}, Lcom/mediatek/wfo/op/IWosExt;->clearPDNErrorMessages()V

    .line 807
    :cond_2
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 808
    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_3

    .line 809
    add-int/lit8 v3, v3, -0x1

    .line 811
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v5, v4, v2}, Lcom/mediatek/wfo/IWifiOffloadListener;->onWfcStateChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 816
    :catch_0
    move-exception v5

    .line 817
    .local v5, "e":Ljava/lang/IllegalStateException;
    const-string v6, "onWfcStateChanged: IllegalStateException occurs!"

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .end local v5    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 812
    :catch_1
    move-exception v5

    .line 815
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "onWfcStateChanged: RemoteException occurs!"

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 818
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 820
    :cond_3
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 821
    return-void
.end method

.method private onWfcStatusChanged()V
    .locals 1

    .line 1294
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mHasWiFiDisabledPending:Z

    if-eqz v0, :cond_0

    .line 1295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mHasWiFiDisabledPending:Z

    .line 1296
    const/16 v0, 0x89a

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1298
    :cond_0
    return-void
.end method

.method private onWifiPdnOOS(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 830
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 831
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 833
    .local v1, "result":[Ljava/lang/String;
    const-string v2, "WfcHandler"

    if-nez v1, :cond_0

    .line 834
    const-string v3, "onWifiPdnOOS(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-void

    .line 837
    :cond_0
    array-length v3, v1

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 838
    const-string v3, "onWifiPdnOOS(): Bad params"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return-void

    .line 843
    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    aget-object v7, v1, v6

    .line 844
    .local v7, "apn":Ljava/lang/String;
    aget-object v8, v1, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 845
    .local v8, "callId":I
    aget-object v9, v1, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 846
    .local v9, "oosState":I
    aget-object v10, v1, v3

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 847
    .local v10, "simIdx":I
    invoke-direct {p0, v7, v8, v9, v10}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyOnWifiPdnOOS(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    .end local v7    # "apn":Ljava/lang/String;
    .end local v8    # "callId":I
    .end local v9    # "oosState":I
    .end local v10    # "simIdx":I
    goto :goto_0

    .line 848
    :catch_0
    move-exception v7

    .line 849
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onWifiPdnOOS["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " e:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 849
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private onWifiRoveout(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 738
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 739
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    .line 741
    .local v4, "result":[Ljava/lang/String;
    const-string v5, "WfcHandler"

    if-nez v4, :cond_0

    .line 742
    const-string v0, "onWifiRoveout(): result is null"

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void

    .line 746
    :cond_0
    array-length v0, v4

    const/4 v6, 0x4

    const-string v7, "] "

    const-string v8, "onWifiRoveout()["

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v12, " "

    const/4 v13, 0x1

    if-ne v0, v9, :cond_1

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v11

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v13

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v10

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_1
    array-length v0, v4

    if-ne v0, v6, :cond_8

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v11

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v13

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v10

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 758
    :goto_0
    :try_start_0
    aget-object v0, v4, v11

    .line 759
    .local v0, "ifname":Ljava/lang/String;
    aget-object v7, v4, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v13, :cond_2

    move v7, v13

    goto :goto_1

    :cond_2
    move v7, v11

    .line 760
    .local v7, "roveOut":Z
    :goto_1
    array-length v14, v4

    if-ne v14, v6, :cond_3

    aget-object v6, v4, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v13, :cond_3

    move v6, v13

    goto :goto_2

    :cond_3
    move v6, v11

    .line 761
    .local v6, "mobike_ind":Z
    :goto_2
    array-length v14, v4

    sub-int/2addr v14, v13

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 762
    .local v14, "simIdx":I
    if-eqz v7, :cond_4

    .line 763
    iget-object v15, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v15}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getLastRssi()I

    move-result v15

    invoke-direct {v1, v14, v7, v15}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyOnRoveOut(IZI)V

    .line 765
    :cond_4
    if-eqz v6, :cond_7

    .line 766
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onWifiRoveout(): mobike_ind=1. count = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mPartialScanCount:I

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", connected = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiConnected:Z

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 768
    iget-boolean v10, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiConnected:Z

    if-eqz v10, :cond_6

    iget v10, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mPartialScanCount:I

    if-lt v10, v9, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcHandler;->getCurrentAssociatedApCount()I

    move-result v9

    if-gt v9, v13, :cond_5

    goto :goto_3

    .line 771
    :cond_5
    const-string v9, "Mobike disconnect+startscan"

    invoke-virtual {v1, v9}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 772
    iget-object v9, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    .line 773
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 774
    .local v9, "wifiMngr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 775
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 776
    iput v11, v1, Lcom/mediatek/wfo/impl/WfcHandler;->mPartialScanCount:I

    goto :goto_4

    .line 769
    .end local v9    # "wifiMngr":Landroid/net/wifi/WifiManager;
    :cond_6
    :goto_3
    const-string v9, "No need to partial scan."

    invoke-virtual {v1, v9}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 779
    :cond_7
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onWifiRoveout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v6    # "mobike_ind":Z
    .end local v7    # "roveOut":Z
    .end local v14    # "simIdx":I
    goto :goto_5

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 781
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void

    .line 753
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWifiRoveout(): Bad params ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void
.end method

.method private registerForBroadcast()V
    .locals 3

    .line 549
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 550
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v1, "com.mediatek.common.carrierexpress.operator_config_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    const-string v1, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 563
    return-void
.end method

.method private registerForWfcAidObserver()V
    .locals 4

    .line 540
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 541
    return-void

    .line 543
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/wfo/impl/WfcHandler;->AID_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 545
    const-string v0, "registerForWfcAidObserver()"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private registerIndication()V
    .locals 4

    .line 567
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x834

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnHandover(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 570
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x835

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnError(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 572
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x836

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnRoveOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 574
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x837

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWfcPdnStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 576
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x838

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnOos(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setEmergencyAddressId()V
    .locals 3

    .line 863
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcEccAid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    const-string v0, "Current AID is empty"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 865
    return-void

    .line 867
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmergencyAddressId(), mWfcEccAid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcEccAid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 868
    const/16 v0, 0x898

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 869
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcEccAid:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setEmergencyAddressId(Ljava/lang/String;Landroid/os/Message;)V

    .line 870
    return-void
.end method

.method private updateWfcUISetting()Z
    .locals 11

    .line 945
    const/4 v0, 0x0

    .line 946
    .local v0, "ret":Z
    const-string v1, "persist.vendor.mims_support"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, " enabled: "

    const-string v4, "WfcSetting simId: "

    const-string v5, "carrier_default_wfc_ims_enabled_bool"

    if-le v1, v2, :cond_3

    .line 947
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    if-ge v1, v2, :cond_2

    .line 948
    const-string v2, "wfc_ims_enabled"

    .line 949
    .local v2, "key":Ljava/lang/String;
    nop

    .line 951
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->getSubIdBySlot(I)I

    move-result v6

    .line 949
    invoke-direct {p0, v5, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v6

    .line 952
    .local v6, "defValue":Z
    iget-object v7, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v8, v7, v1

    .line 953
    .local v8, "oldValue":Z
    nop

    .line 954
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->getSubIdBySlot(I)I

    move-result v9

    iget-object v10, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    .line 953
    invoke-static {v9, v2, v6, v10}, Landroid/telephony/SubscriptionManager;->getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z

    move-result v9

    aput-boolean v9, v7, v1

    .line 956
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v9, v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 957
    iget-object v7, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v9, v7, v1

    if-ne v8, v9, :cond_1

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_0

    goto :goto_1

    .line 947
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "defValue":Z
    .end local v8    # "oldValue":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 958
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v6    # "defValue":Z
    .restart local v8    # "oldValue":Z
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 947
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "defValue":Z
    .end local v8    # "oldValue":Z
    :cond_2
    goto :goto_2

    .line 963
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->getMainCapabilityPhoneId()I

    move-result v1

    .line 964
    .local v1, "mainCapabilityPhoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mainCapabilityPhoneId = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 965
    if-ltz v1, :cond_6

    iget v2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mSimCount:I

    if-ge v1, v2, :cond_6

    .line 966
    const-string v2, "wfc_ims_enabled"

    .line 967
    .restart local v2    # "key":Ljava/lang/String;
    nop

    .line 969
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->getSubIdBySlot(I)I

    move-result v6

    .line 967
    invoke-direct {p0, v5, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v5

    .line 970
    .local v5, "defValue":Z
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v7, v6, v1

    .line 971
    .local v7, "oldValue":Z
    nop

    .line 973
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->getSubIdBySlot(I)I

    move-result v8

    iget-object v9, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    .line 972
    invoke-static {v8, v2, v5, v9}, Landroid/telephony/SubscriptionManager;->getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z

    move-result v8

    aput-boolean v8, v6, v1

    .line 975
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 977
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWfcSettingsOn:[Z

    aget-boolean v4, v3, v1

    if-ne v7, v4, :cond_4

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_5

    .line 979
    :cond_4
    const/4 v0, 0x1

    .line 981
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "defValue":Z
    .end local v7    # "oldValue":Z
    :cond_5
    goto :goto_2

    .line 982
    :cond_6
    const-string v2, "WfcHandler"

    const-string v3, "updateWfcUISetting(): mainCapabilityPhoneId invalid"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    .end local v1    # "mainCapabilityPhoneId":I
    :goto_2
    return v0
.end method

.method private updateWifiEnabled()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "WfcHandler"

    if-nez v0, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mContext:Landroid/content/Context;

    .line 1258
    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1259
    .local v0, "wifiMngr":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiEnabled:Z

    goto :goto_0

    .line 1262
    :cond_0
    const-string v3, "updateWifiEnabled: WifiManager null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiEnabled:Z

    .line 1265
    .end local v0    # "wifiMngr":Landroid/net/wifi/WifiManager;
    :goto_0
    goto :goto_1

    .line 1266
    :cond_1
    const-string v0, "updateWifiEnabled: inCryptKeeperBounce"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiEnabled:Z

    .line 1269
    :goto_1
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1270
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 337
    return-object p0
.end method

.method public getWfcState(I)I
    .locals 2
    .param p1, "simIdx"    # I

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWfcState state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcState:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " simIdx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfcState:[I

    aget v0, v0, p1

    return v0
.end method

.method public getWfoInterface()Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 264
    :sswitch_0
    const/16 v0, 0x7d4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 265
    goto/16 :goto_0

    .line 260
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyOnAllowWifiOff()V

    .line 261
    goto/16 :goto_0

    .line 254
    :sswitch_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyLocationTimeout()V

    .line 255
    goto :goto_0

    .line 250
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 251
    .local v0, "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x7d1

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 252
    goto :goto_0

    .line 267
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->onWfcStatusChanged()V

    .line 268
    goto :goto_0

    .line 246
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->onWifiPdnOOS(Landroid/os/Message;)V

    .line 247
    goto :goto_0

    .line 243
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->onWfcPdnStateChanged(Landroid/os/Message;)V

    .line 244
    goto :goto_0

    .line 240
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->onWifiRoveout(Landroid/os/Message;)V

    .line 241
    goto :goto_0

    .line 237
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->onWfcPdnError(Landroid/os/Message;)V

    .line 238
    goto :goto_0

    .line 234
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->onPdnHandover(Landroid/os/Message;)V

    .line 235
    goto :goto_0

    .line 274
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 275
    .local v0, "activeModemCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_MULTI_SIM_CONFIG_CHANGED, activeModemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->onMultiSimConfigChanged(I)V

    .line 277
    goto :goto_0

    .line 270
    .end local v0    # "activeModemCount":I
    :sswitch_b
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->initialize()V

    .line 271
    goto :goto_0

    .line 229
    :sswitch_c
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mScreenState:I

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyEPDGScreenState(I)V

    .line 230
    goto :goto_0

    .line 257
    :sswitch_d
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->updateWifiEnabled()V

    .line 258
    goto :goto_0

    .line 225
    :sswitch_e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->checkIfShowNoInternetError(Z)V

    .line 226
    goto :goto_0

    .line 222
    :sswitch_f
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->setEmergencyAddressId()V

    .line 223
    goto :goto_0

    .line 219
    :sswitch_10
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcHandler;->handleModemPower()V

    .line 220
    nop

    .line 282
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_10
        0x7d1 -> :sswitch_f
        0x7d2 -> :sswitch_e
        0x7d3 -> :sswitch_d
        0x7d4 -> :sswitch_c
        0x7d5 -> :sswitch_b
        0x7d6 -> :sswitch_a
        0x834 -> :sswitch_9
        0x835 -> :sswitch_8
        0x836 -> :sswitch_7
        0x837 -> :sswitch_6
        0x838 -> :sswitch_5
        0x839 -> :sswitch_4
        0x898 -> :sswitch_3
        0x899 -> :sswitch_2
        0x89a -> :sswitch_1
        0x89b -> :sswitch_0
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1191
    sget-boolean v0, Lcom/mediatek/wfo/impl/WfcHandler;->USR_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/wfo/impl/WfcHandler;->TELDBG:Z

    if-eqz v0, :cond_1

    .line 1192
    :cond_0
    const-string v0, "WfcHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_1
    return-void
.end method

.method protected notifyMultiSimConfigChanged(I[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 2
    .param p1, "activeModemCount"    # I
    .param p2, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 498
    iput-object p2, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 499
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x7d6

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 500
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 501
    return-void
.end method

.method public onLocationTimeout()V
    .locals 1

    .line 1197
    const/16 v0, 0x899

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1198
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1199
    return-void
.end method

.method public updatedWifiConnectedStatus(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatedWifiConnectedStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1211
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mIsWifiConnected:Z

    .line 1212
    if-nez p1, :cond_0

    .line 1213
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/WfcHandler;->mPartialScanCount:I

    .line 1215
    :cond_0
    return-void
.end method
