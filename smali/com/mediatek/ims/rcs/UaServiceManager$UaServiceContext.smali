.class final Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UaServiceContext"
.end annotation


# instance fields
.field private imsEventCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

.field private mAcsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

.field private mCapability:Lcom/mediatek/ims/rcsua/Capability;

.field private mCcNotified:Z

.field private mImsClient:Lcom/mediatek/ims/rcsua/Client;

.field private mPhoneId:I

.field private mSipCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

.field private mStateCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUaService:Lcom/mediatek/ims/rcsua/RcsUaService;

.field private mUpdateRcsFeatureTagState:Z

.field private sipEventCallback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

.field final synthetic this$0:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p2, "phoneId"    # I

    .line 454
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->imsEventCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 676
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->sipEventCallback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    .line 754
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/Capability;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    .line 755
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    .line 756
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    .line 455
    iput p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    .line 456
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 453
    iget v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 453
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 453
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 453
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 453
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcNotified:Z

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 453
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method addSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 1
    .param p1, "sipCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 519
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    return-void
.end method

.method addStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 1
    .param p1, "stateCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 503
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    return-void
.end method

.method clearSipCallbacks()V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 528
    return-void
.end method

.method clearStateCallbacks()V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 512
    return-void
.end method

.method getAcsCallback()Lcom/mediatek/ims/rcsua/AcsEventCallback;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    return-object v0
.end method

.method getCapability()Lcom/mediatek/ims/rcsua/Capability;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    return-object v0
.end method

.method getImsClient()Lcom/mediatek/ims/rcsua/Client;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/Client;

    return-object v0
.end method

.method getImsEventCallback()Lcom/mediatek/ims/rcsua/ImsEventCallback;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->imsEventCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    return-object v0
.end method

.method getPhoneId()I
    .locals 1

    .line 539
    iget v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    return v0
.end method

.method getSipCallbacks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;",
            ">;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method getSipChannel()Lcom/mediatek/ims/rcsua/SipChannel;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    return-object v0
.end method

.method getSipEventCallback()Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->sipEventCallback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    return-object v0
.end method

.method getStateCallbacks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;",
            ">;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method getUpdateRcsFeatureTagState()Z
    .locals 1

    .line 543
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUpdateRcsFeatureTagState:Z

    return v0
.end method

.method isCcNotified()Z
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcNotified:Z

    return v0
.end method

.method removeSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 1
    .param p1, "sipCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 523
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 524
    return-void
.end method

.method removeStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 1
    .param p1, "stateCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 507
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 508
    return-void
.end method

.method setAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 0
    .param p1, "acsCallback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 487
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 488
    return-void
.end method

.method setCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 495
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    .line 496
    return-void
.end method

.method setCcNotified(Z)V
    .locals 0
    .param p1, "ccNotified"    # Z

    .line 555
    iput-boolean p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcNotified:Z

    .line 556
    return-void
.end method

.method setImsClient(Lcom/mediatek/ims/rcsua/Client;)V
    .locals 0
    .param p1, "imsClient"    # Lcom/mediatek/ims/rcsua/Client;

    .line 471
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/Client;

    .line 472
    return-void
.end method

.method setSipChannel(Lcom/mediatek/ims/rcsua/SipChannel;)V
    .locals 0
    .param p1, "sipChannel"    # Lcom/mediatek/ims/rcsua/SipChannel;

    .line 479
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    .line 480
    return-void
.end method

.method setUaService(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p1, "uaService"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 463
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 464
    return-void
.end method

.method setUpdateRcsFeatureTagState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 547
    iput-boolean p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUpdateRcsFeatureTagState:Z

    .line 548
    return-void
.end method
