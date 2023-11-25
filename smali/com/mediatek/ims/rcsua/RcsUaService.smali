.class public Lcom/mediatek/ims/rcsua/RcsUaService;
.super Ljava/lang/Object;
.source "RcsUaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/RcsUaService$Callback;,
        Lcom/mediatek/ims/rcsua/RcsUaService$AcsRequestReason;,
        Lcom/mediatek/ims/rcsua/RcsUaService$RegistrationMode;,
        Lcom/mediatek/ims/rcsua/RcsUaService$ImsRadioTech;,
        Lcom/mediatek/ims/rcsua/RcsUaService$RegistrationState;
    }
.end annotation


# static fields
.field public static final ACTION_RCSUA_SERVICE_DOWN:Ljava/lang/String; = "com.mediatek.ims.rcsua.SERVICE_DOWN"

.field public static final ACTION_RCSUA_SERVICE_UP:Ljava/lang/String; = "com.mediatek.ims.rcsua.SERVICE_UP"

.field private static final EXTRA_OPTIONS:Ljava/lang/String; = "service_options"

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static volatile INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService; = null

.field public static final OPTION_DEREG_SUSPEND:Ljava/lang/String; = "OPTION_DEREG_SUSPEND"

.field public static final OPTION_ROI_SUPPORT:Ljava/lang/String; = "OPTION_ROI_SUPPORT"

.field public static final REASON_DEFAULT_SMS_UNKNOWN:I = 0x0

.field public static final REASON_FT_AUTHENTICATE_FAILURE:I = 0x3

.field public static final REASON_RCS_DEFAULT_SMS:I = 0x1

.field public static final REASON_RCS_NOT_DEFAULT_SMS:I = 0x2

.field public static final REG_MODE_IMS:I = 0x1

.field public static final REG_MODE_INTERNET:I = 0x2

.field public static final REG_RADIO_3GPP:I = 0x1

.field public static final REG_RADIO_IEEE802:I = 0x2

.field public static final REG_RADIO_NONE:I = 0x0

.field public static final REG_STATE_DEREGISTERING:I = 0x3

.field public static final REG_STATE_NOT_REGISTERED:I = 0x0

.field public static final REG_STATE_REGISTERED:I = 0x2

.field public static final REG_STATE_REGISTERING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[RcsUaService][API]"


# instance fields
.field private acsCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/rcsua/AcsEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

.field private acsSupported:Z

.field private activated:Z

.field private callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

.field private callerContext:Landroid/content/Context;

.field private capabilities:Lcom/mediatek/ims/rcsua/Capability;

.field private clientCount:I

.field private clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

.field private clients:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/rcsua/Client;",
            ">;"
        }
    .end annotation
.end field

.field private final imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

.field private lock:Ljava/lang/Object;

.field private mRetryCount:I

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    new-instance v0, Lcom/mediatek/ims/rcsua/RcsUaService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$4;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    .line 1238
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    .line 1248
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    .line 1249
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    .line 1250
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    .line 1254
    iput v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    .line 1068
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$2;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    .line 1109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    .line 1110
    iput-object p3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 1112
    const-string v2, "persist.vendor.service.rcs"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/rcsua/RcsUaService;->getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    .line 1114
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    .line 1116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.rcsua.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1120
    new-instance v1, Landroid/os/Bundle;

    if-nez p4, :cond_1

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {v1, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1121
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_0
    iget-boolean v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    const-string v4, "OPTION_ACS_SUPPORT"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1122
    const-string v3, "service_options"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1124
    const-string v3, "com.mediatek.ims.rcsua.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1127
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    .line 1128
    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 1129
    .local v2, "result":Z
    if-nez v2, :cond_2

    .line 1130
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1131
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/mediatek/ims/rcsua/RcsUaService$3;

    invoke-direct {v4, p0, v0, v3}, Lcom/mediatek/ims/rcsua/RcsUaService$3;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;Landroid/content/Intent;Landroid/os/Handler;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1144
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/rcsua/RcsUaService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->notifyServiceDown()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcsua/RcsUaService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/ims/rcsua/RcsUaService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/mediatek/ims/rcsua/RcsUaService;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    return v0
.end method

.method static synthetic access$300()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1

    .line 68
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcsua/RcsUaService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->notifyServiceUp()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/rcsua/RcsUaService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1

    .line 327
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->getInstance(I)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 2
    .param p0, "phoneId"    # I

    .line 337
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "startService() must be called before getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1215
    move-object v0, p2

    .line 1217
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1219
    .local v1, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1220
    .local v2, "systemProperties":Ljava/lang/Class;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 1221
    .local v4, "paramTypes":[Ljava/lang/Class;
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1222
    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 1223
    const-string v5, "get"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1224
    .local v5, "get":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    .line 1225
    .local v3, "params":[Ljava/lang/Object;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v3, v6

    .line 1226
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v3, v7

    .line 1228
    invoke-virtual {v5, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 1231
    .end local v2    # "systemProperties":Ljava/lang/Class;
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v4    # "paramTypes":[Ljava/lang/Class;
    .end local v5    # "get":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1229
    :catch_0
    move-exception v2

    .line 1233
    :goto_0
    return-object v0
.end method

.method public static isAcsAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1041
    const/4 v0, 0x0

    .line 1042
    .local v0, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1044
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.mediatek.rcs.provisioning"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 1046
    goto :goto_0

    .line 1045
    :catch_0
    move-exception v3

    .line 1048
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAcsAvailable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "[RcsUaService][API]"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    if-eqz v0, :cond_1

    move v2, v4

    :cond_1
    return v2
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 1025
    const-string v0, "persist.vendor.mtk_rcs_ua_support"

    .line 1026
    .local v0, "name":Ljava/lang/String;
    const-string v1, "persist.vendor.mtk_rcs_ua_support"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/mediatek/ims/rcsua/RcsUaService;->getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1028
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1029
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1031
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "com.mediatek.ims.rcsua.service"

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 1033
    goto :goto_0

    .line 1032
    :catch_0
    move-exception v5

    .line 1035
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAvailable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", installed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "[RcsUaService][API]"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    move v4, v6

    :cond_1
    return v4
.end method

.method private notifyServiceDown()V
    .locals 2

    .line 1160
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    if-eqz v0, :cond_0

    .line 1161
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService$Callback;->serviceDisconnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 1169
    :cond_0
    return-void
.end method

.method private notifyServiceUp()V
    .locals 2

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyServiceUp to callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    if-eqz v0, :cond_0

    .line 1149
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService$Callback;->serviceConnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 1157
    :cond_0
    return-void
.end method

.method public static startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 251
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 278
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService, current instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-nez v0, :cond_1

    .line 280
    const-class v0, Lcom/mediatek/ims/rcsua/RcsUaService;

    monitor-enter v0

    .line 281
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-nez v1, :cond_0

    .line 282
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/ims/rcsua/RcsUaService;-><init>(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)V

    sput-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 284
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 287
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method public static startService(Landroid/content/Context;Lcom/mediatek/ims/rcsua/RcsUaService$Callback;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Landroid/content/Context;Lcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 264
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .line 349
    const-string v0, "[RcsUaService][API]"

    const-string v1, "activate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    goto :goto_0

    .line 354
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->activate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 358
    :goto_0
    return-void
.end method

.method public addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "feature"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 452
    const-string v0, "[RcsUaService][API]"

    const-string v1, "addCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 462
    :goto_0
    return-void

    .line 454
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearAcsConfiguration()Z
    .locals 2

    .line 983
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 986
    const/4 v0, 0x0

    .line 988
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->clearAcsConfiguration()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 990
    goto :goto_0

    .line 989
    :catch_0
    move-exception v1

    .line 991
    :goto_0
    return v0

    .line 984
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deactivate()V
    .locals 2

    .line 366
    const-string v0, "[RcsUaService][API]"

    const-string v1, "deactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    goto :goto_0

    .line 371
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 375
    :goto_0
    return-void
.end method

.method public getAcsConfigInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "configItem"    # Ljava/lang/String;

    .line 811
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    const/4 v0, 0x0

    .line 819
    .local v0, "value":I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 821
    goto :goto_0

    .line 820
    :catch_0
    move-exception v1

    .line 823
    :goto_0
    return v0

    .line 814
    .end local v0    # "value":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configItem"    # Ljava/lang/String;

    .line 833
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 835
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    const-string v0, ""

    .line 841
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 843
    goto :goto_0

    .line 842
    :catch_0
    move-exception v1

    .line 845
    :goto_0
    return-object v0

    .line 836
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 2

    .line 768
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 770
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const/4 v0, 0x0

    .line 776
    .local v0, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 778
    goto :goto_0

    .line 777
    :catch_0
    move-exception v1

    .line 779
    :goto_0
    return-object v0

    .line 771
    .end local v0    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsSwitchState()Z
    .locals 2

    .line 942
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 945
    const/4 v0, 0x0

    .line 947
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsSwitchState()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 949
    goto :goto_0

    .line 948
    :catch_0
    move-exception v1

    .line 950
    :goto_0
    return v0

    .line 943
    .end local v0    # "state":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActiveClients()[Lcom/mediatek/ims/rcsua/Client;
    .locals 4

    .line 651
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/mediatek/ims/rcsua/Client;

    .line 656
    .local v0, "result":[Lcom/mediatek/ims/rcsua/Client;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 657
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/ims/rcsua/Client;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Client;

    aput-object v3, v0, v2

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 661
    .end local v2    # "i":I
    :cond_0
    return-object v0

    .line 652
    .end local v0    # "result":[Lcom/mediatek/ims/rcsua/Client;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/ims/rcsua/Client;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAospAcsInfo()Ljava/lang/String;
    .locals 3

    .line 788
    const-string v0, ""

    .line 789
    .local v0, "info":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v1, :cond_1

    .line 791
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    const/4 v1, 0x0

    .line 797
    .local v1, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v2

    move-object v1, v2

    .line 798
    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/AcsConfiguration;->readXmlData()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 800
    goto :goto_0

    .line 799
    :catch_0
    move-exception v2

    .line 801
    :goto_0
    return-object v0

    .line 792
    .end local v1    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RCS UA service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 790
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "ACS not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCapabilities()Lcom/mediatek/ims/rcsua/Capability;
    .locals 2

    .line 592
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const/4 v0, 0x0

    .line 598
    .local v0, "capability":Lcom/mediatek/ims/rcsua/Capability;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 601
    goto :goto_0

    .line 599
    :catch_0
    move-exception v1

    .line 603
    :goto_0
    return-object v0

    .line 593
    .end local v0    # "capability":Lcom/mediatek/ims/rcsua/Capability;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    return-object v0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 2

    .line 670
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    const/4 v0, 0x0

    .line 676
    .local v0, "options":Landroid/os/Bundle;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getOptions()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 678
    goto :goto_0

    .line 677
    :catch_0
    move-exception v1

    .line 680
    :goto_0
    return-object v0

    .line 671
    .end local v0    # "options":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAcsConnected()Z
    .locals 2

    .line 854
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 856
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    const/4 v0, 0x0

    .line 862
    .local v0, "connected":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isAcsConnected()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 864
    goto :goto_0

    .line 863
    :catch_0
    move-exception v1

    .line 866
    :goto_0
    return v0

    .line 857
    .end local v0    # "connected":Z
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActivated()Z
    .locals 2

    .line 613
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    return v0

    .line 617
    :cond_0
    const/4 v0, 0x1

    .line 619
    .local v0, "activated":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isActivated()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 622
    goto :goto_0

    .line 620
    :catch_0
    move-exception v1

    .line 624
    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 689
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_2

    .line 691
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$1;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v2, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    goto :goto_0

    .line 733
    :catch_0
    move-exception v1

    .line 736
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 737
    monitor-exit v0

    .line 738
    return-void

    .line 737
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 692
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerClient(Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/Client;
    .locals 4
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, "newClient":Lcom/mediatek/ims/rcsua/Client;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 539
    :try_start_0
    const-string v1, "[RcsUaService][API]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerClient:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :try_start_1
    iget v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    if-nez v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    invoke-interface {v2, v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 546
    :cond_0
    new-instance v2, Lcom/mediatek/ims/rcsua/Client;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-direct {v2, p0, v3}, Lcom/mediatek/ims/rcsua/Client;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V

    move-object v0, v2

    .line 547
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/Client;->registerImsEventCallback(Lcom/mediatek/ims/rcsua/ImsEventCallback;)V

    .line 548
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 549
    monitor-exit v1

    .line 552
    goto :goto_0

    .line 549
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "newClient":Lcom/mediatek/ims/rcsua/Client;
    .end local p0    # "this":Lcom/mediatek/ims/rcsua/RcsUaService;
    .end local p1    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 550
    .restart local v0    # "newClient":Lcom/mediatek/ims/rcsua/Client;
    .restart local p0    # "this":Lcom/mediatek/ims/rcsua/RcsUaService;
    .restart local p1    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    :catch_0
    move-exception v1

    .line 554
    :goto_0
    return-object v0

    .line 535
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RCS UA service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "feature"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 472
    const-string v0, "[RcsUaService][API]"

    const-string v1, "removeCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 482
    :goto_0
    return-void

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsProvisioningAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 964
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 967
    const/4 v0, 0x0

    .line 969
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsProvisioningAddress(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 971
    goto :goto_0

    .line 970
    :catch_0
    move-exception v1

    .line 972
    :goto_0
    return v0

    .line 965
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsSideLoadingConfiguration(Ljava/lang/String;)Z
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 1006
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 1009
    const/4 v0, 0x0

    .line 1011
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsSideLoadingConfiguration(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1013
    goto :goto_0

    .line 1012
    :catch_0
    move-exception v1

    .line 1014
    :goto_0
    return v0

    .line 1007
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsSwitchState(Z)Z
    .locals 2
    .param p1, "state"    # Z

    .line 900
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 903
    const/4 v0, 0x0

    .line 905
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsSwitchState(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 907
    goto :goto_0

    .line 906
    :catch_0
    move-exception v1

    .line 908
    :goto_0
    return v0

    .line 901
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rcsVersion"    # Ljava/lang/String;
    .param p2, "rcsProfile"    # Ljava/lang/String;
    .param p3, "clientVendor"    # Ljava/lang/String;
    .param p4, "clientVersion"    # Ljava/lang/String;

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAcsonfiguration rcsVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,rcsProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,clientVendor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,clientVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcsonfiguration !acsSupported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 927
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceIntf value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 931
    :goto_0
    return-void

    .line 924
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOptions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .line 633
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setOptions(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 642
    :goto_0
    return-void

    .line 634
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopService()V
    .locals 4

    .line 295
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopService, current instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-class v0, Lcom/mediatek/ims/rcsua/RcsUaService;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 298
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 300
    :try_start_1
    invoke-interface {v1, v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 304
    :goto_0
    :try_start_2
    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 307
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Client;

    .line 308
    .local v3, "c":Lcom/mediatek/ims/rcsua/Client;
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/rcsua/RcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V

    .line 309
    .end local v3    # "c":Lcom/mediatek/ims/rcsua/Client;
    goto :goto_1

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 312
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 313
    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 315
    :cond_2
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v1, :cond_3

    .line 316
    sput-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 318
    :cond_3
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public triggerAcsRequest(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 876
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 878
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerAcsRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    goto :goto_0

    .line 884
    :catch_0
    move-exception v0

    .line 886
    :goto_0
    return-void

    .line 879
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerForceReregistration()V
    .locals 2

    .line 399
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerForceReregistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerForceReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 409
    :goto_0
    return-void

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerReregistration()V
    .locals 2

    .line 382
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerReregistraion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 392
    :goto_0
    return-void

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 416
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerReregistraion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 426
    :goto_0
    return-void

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerRestoration()V
    .locals 2

    .line 433
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerRestoration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRestoration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 443
    :goto_0
    return-void

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 747
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 750
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 751
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 753
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 754
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 755
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    goto :goto_0

    .line 756
    :catch_0
    move-exception v1

    .line 759
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 760
    return-void

    .line 759
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 748
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V
    .locals 3
    .param p1, "client"    # Lcom/mediatek/ims/rcsua/Client;

    .line 565
    const-string v0, "[RcsUaService][API]"

    const-string v1, "unregisterClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    const-string v0, "[RcsUaService][API]"

    const-string v1, "unregisterClient: client doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_0
    iget v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 574
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 575
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    :cond_1
    goto :goto_0

    .line 576
    :catch_0
    move-exception v1

    .line 579
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 582
    monitor-exit v0

    .line 583
    return-void

    .line 582
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 492
    const-string v0, "[RcsUaService][API]"

    const-string v1, "updateCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 502
    :goto_0
    return-void

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCapabilities(Ljava/lang/String;)V
    .locals 2
    .param p1, "featuresText"    # Ljava/lang/String;

    .line 512
    const-string v0, "[RcsUaService][API]"

    const-string v1, "updateCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    new-instance v1, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v1, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 522
    :goto_0
    return-void

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
