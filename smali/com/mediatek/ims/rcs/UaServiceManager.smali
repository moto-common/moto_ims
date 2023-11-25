.class public Lcom/mediatek/ims/rcs/UaServiceManager;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;,
        Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager; = null

.field private static final LOG_TAG:Ljava/lang/String; = "[SR-IMS][UaServiceManager]"


# instance fields
.field private acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

.field private callbackHandler:Landroid/os/Handler;

.field private hdlrThread:Landroid/os/HandlerThread;

.field private imsClient:Lcom/mediatek/ims/rcsua/Client;

.field private imsEventCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

.field private mCapability:Lcom/mediatek/ims/rcsua/Capability;

.field private mCcNotified:Z

.field private mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private mUpdateRcsFeatureTagState:Z

.field private serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

.field private serviceStarted:Z

.field private sipCallback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

.field private sipCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;",
            ">;"
        }
    .end annotation
.end field

.field private sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

.field private sipEventCallback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

.field private stateCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private uaService:Lcom/mediatek/ims/rcsua/RcsUaService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$3;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->imsEventCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 516
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$4;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipEventCallback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    .line 589
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$5;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$5;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 654
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/Capability;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    .line 655
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->stateCallbacks:Ljava/util/Set;

    .line 656
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipCallbacks:Ljava/util/Set;

    .line 627
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    .line 628
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/SipChannel;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/SipChannel;)Lcom/mediatek/ims/rcsua/SipChannel;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/SipChannel;

    .line 61
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipEventCallback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/AcsEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/AcsEventCallback;)Lcom/mediatek/ims/rcsua/AcsEventCallback;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 61
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcs/UaServiceManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->stateCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 61
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/Capability;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 61
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcs/UaServiceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mPhoneId:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/rcs/UaServiceManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/Client;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/Client;)Lcom/mediatek/ims/rcsua/Client;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/Client;

    .line 61
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/ImsEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->imsEventCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/mediatek/ims/rcs/UaServiceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Lcom/mediatek/ims/rcs/UaServiceManager;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/UaServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    return-object v0
.end method

.method public static deleteInstance()V
    .locals 1

    .line 77
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->stopService()V

    .line 80
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;
    .locals 1

    .line 83
    sget-object v0, Lcom/mediatek/ims/rcs/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcs/UaServiceManager;

    return-object v0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 631
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 643
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 635
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method private logW(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 639
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activate >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->activate()V

    .line 192
    :cond_0
    return-void
.end method

.method public addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCapability >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 204
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deactivate >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->deactivate()V

    .line 198
    :cond_0
    return-void
.end method

.method public getAcsConfigInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 288
    :cond_0
    const-string v1, "Not ready to getAcsConfigInt"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 290
    :goto_0
    return v0
.end method

.method public getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_0
    const-string v1, "Not ready to getAcsConfigString"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 301
    :goto_0
    return-object v0
.end method

.method public getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 2

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "configuration":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_0
    const-string v1, "Not ready to getAcsConfiguration"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 279
    :goto_0
    return-object v0
.end method

.method public getCallbackHandler()Landroid/os/Handler;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCapabilities()Lcom/mediatek/ims/rcsua/Capability;
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Client;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUpdateRcsFeatureTagState()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mUpdateRcsFeatureTagState:Z

    return v0
.end method

.method public imsRegistered()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Client;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivated()Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCcNotified()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mCcNotified:Z

    return v0
.end method

.method public readConfiguraion()Lcom/mediatek/ims/rcsua/Configuration;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Client;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->readImsConfiguration()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAcsCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    if-eqz v0, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    goto :goto_0

    .line 171
    :cond_1
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 173
    :goto_0
    return-void
.end method

.method public registerSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSipCallback >> channel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    :cond_0
    return-void
.end method

.method public registerStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerStateCallback >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "],client["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->stateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/ims/rcs/UaServiceManager$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_0
    return-void
.end method

.method public removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCapability >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 210
    :cond_0
    return-void
.end method

.method public sendSipMessage(Landroid/telephony/ims/SipMessage;)Z
    .locals 3
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;

    .line 225
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toEncodedMessage()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/rcsua/SipChannel;->sendMessageAsync([BLjava/lang/String;)V

    .line 227
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public serviceConnected()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rcsVersion"    # Ljava/lang/String;
    .param p2, "rcsProfile"    # Ljava/lang/String;
    .param p3, "clientVendor"    # Ljava/lang/String;
    .param p4, "clientVersion"    # Ljava/lang/String;

    .line 256
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/rcsua/RcsUaService;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_0
    const-string v0, "Not ready to setAcsconfiguration"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void
.end method

.method public setCcNotified(Z)V
    .locals 0
    .param p1, "isNotified"    # Z

    .line 340
    iput-boolean p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mCcNotified:Z

    .line 341
    return-void
.end method

.method public setUpdateRcsFeatureTagState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 332
    iput-boolean p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mUpdateRcsFeatureTagState:Z

    .line 333
    return-void
.end method

.method public startService(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startService >> phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 89
    iput p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mPhoneId:I

    .line 91
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IMS-RCSUA-WORKER"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    .line 93
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "options":Landroid/os/Bundle;
    const/4 v1, 0x1

    const-string v2, "OPTION_ROI_SUPPORT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    invoke-static {v1, p1, v2, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 100
    .end local v0    # "options":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public stopService()V
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopService >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/SipChannel;->close()V

    .line 108
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 111
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    if-eqz v0, :cond_1

    .line 112
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V

    .line 113
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->stateCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 117
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->stopService()V

    .line 118
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 122
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    .line 124
    :cond_3
    return-void
.end method

.method public triggerAcsRequest(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 264
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->triggerAcsRequest(I)V

    goto :goto_0

    .line 267
    :cond_0
    const-string v0, "Not ready to triggerAcRequest"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void
.end method

.method public triggerRestoration()V
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerRestoration >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->triggerRestoration()V

    .line 222
    :cond_0
    return-void
.end method

.method public unregisterAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterAcsCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 178
    if-nez p1, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->unregisterAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    if-ne v0, p1, :cond_2

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 186
    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterSipCallback >> channel[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->sipCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public unregisterStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterStateCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->stateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCapabilities >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 216
    :cond_0
    return-void
.end method
