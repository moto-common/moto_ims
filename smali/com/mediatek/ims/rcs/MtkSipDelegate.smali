.class public Lcom/mediatek/ims/rcs/MtkSipDelegate;
.super Ljava/lang/Object;
.source "MtkSipDelegate.java"

# interfaces
.implements Landroid/telephony/ims/stub/SipDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;,
        Lcom/mediatek/ims/rcs/MtkSipDelegate$SipCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[SR-IMS][MtkSipDelegate]"


# instance fields
.field private delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

.field private delegateRequest:Landroid/telephony/ims/DelegateRequest;

.field private everRegistered:Z

.field private mContext:Landroid/content/Context;

.field private messageCallback:Landroid/telephony/ims/DelegateMessageCallback;

.field private phoneId:I

.field private regState:Landroid/telephony/ims/DelegateRegistrationState;

.field private sendingTransactions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sipCallback:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

.field private stateCallback:Landroid/telephony/ims/DelegateStateCallback;

.field private subId:I

.field private uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "request"    # Landroid/telephony/ims/DelegateRequest;
    .param p4, "sc"    # Landroid/telephony/ims/DelegateStateCallback;
    .param p5, "mc"    # Landroid/telephony/ims/DelegateMessageCallback;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->sendingTransactions:Ljava/util/Set;

    .line 71
    const-string v0, "DelegateRequest should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string v0, "DelegateStateCallback should not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    const-string v0, "DelegateMessageCallback should not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->mContext:Landroid/content/Context;

    .line 76
    iput p2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->subId:I

    .line 77
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->phoneId:I

    .line 78
    iput-object p3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateRequest:Landroid/telephony/ims/DelegateRequest;

    .line 80
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 81
    .local v0, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    invoke-virtual {p3}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "feature":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 83
    .end local v2    # "feature":Ljava/lang/String;
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 85
    iput-object p4, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->stateCallback:Landroid/telephony/ims/DelegateStateCallback;

    .line 86
    iput-object p5, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->messageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    .line 87
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 88
    if-eqz v1, :cond_1

    .line 89
    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipDelegate$SipCallback;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/MtkSipDelegate$SipCallback;-><init>(Lcom/mediatek/ims/rcs/MtkSipDelegate;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->sipCallback:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 90
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->phoneId:I

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->registerSipCallback(ILcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V

    goto :goto_1

    .line 92
    :cond_1
    const-string v1, "MtkSipDelegate >> UaServiceManager not ready"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logE(Ljava/lang/String;)V

    .line 94
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcs/MtkSipDelegate;)Landroid/telephony/ims/DelegateMessageCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->messageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcs/MtkSipDelegate;[B)Landroid/telephony/ims/SipMessage;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;
    .param p1, "x1"    # [B

    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->encodeSipMessage([B)Landroid/telephony/ims/SipMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcs/MtkSipDelegate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcs/MtkSipDelegate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcs/MtkSipDelegate;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->sendingTransactions:Ljava/util/Set;

    return-object v0
.end method

.method private encodeSipMessage([B)Landroid/telephony/ims/SipMessage;
    .locals 11
    .param p1, "rawData"    # [B

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "sipMessage":Landroid/telephony/ims/SipMessage;
    const/4 v1, 0x0

    .line 467
    .local v1, "startLine":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "hdrBeginPos":I
    const/4 v3, 0x0

    .local v3, "hdrEndPos":I
    const/4 v4, 0x0

    .line 469
    .local v4, "bodyBeginPos":I
    new-instance v5, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;

    invoke-direct {v5, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;-><init>([B)V

    .line 470
    .local v5, "reader":Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->read()[C

    move-result-object v6

    .line 471
    .local v6, "line":[C
    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    .line 472
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->getNextPosition()I

    move-result v2

    .line 473
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    move-object v1, v7

    .line 474
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    :cond_0
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->read()[C

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_1

    .line 476
    array-length v7, v6

    if-nez v7, :cond_0

    .line 477
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->getCurrPosition()I

    move-result v3

    .line 478
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->getNextPosition()I

    move-result v4

    .line 484
    :cond_1
    if-eqz v1, :cond_3

    if-lez v2, :cond_3

    if-lez v3, :cond_3

    if-le v3, v2, :cond_3

    .line 485
    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v2

    invoke-direct {v7, p1, v2, v8}, Ljava/lang/String;-><init>([BII)V

    .line 486
    .local v7, "headerSection":Ljava/lang/String;
    array-length v8, p1

    sub-int/2addr v8, v4

    .line 487
    .local v8, "bodyLength":I
    new-array v9, v8, [B

    .line 488
    .local v9, "body":[B
    if-lez v8, :cond_2

    .line 489
    const/4 v10, 0x0

    invoke-static {p1, v4, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    :cond_2
    new-instance v10, Landroid/telephony/ims/SipMessage;

    invoke-direct {v10, v1, v7, v9}, Landroid/telephony/ims/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    move-object v0, v10

    .line 493
    .end local v7    # "headerSection":Ljava/lang/String;
    .end local v8    # "bodyLength":I
    .end local v9    # "body":[B
    :cond_3
    return-object v0
.end method

.method private extractUserParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "user":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "start":I
    const/4 v2, 0x0

    .line 637
    .local v2, "end":I
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 640
    :cond_0
    const-string v3, "sip:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "tel:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 641
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 643
    :cond_2
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 644
    if-gez v2, :cond_3

    .line 645
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 648
    :cond_3
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 650
    goto :goto_0

    .line 649
    :catch_0
    move-exception v3

    .line 652
    :goto_0
    return-object v0

    .line 638
    :cond_4
    :goto_1
    return-object v0
.end method

.method private formatIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 656
    move-object v0, p1

    .line 658
    .local v0, "result":Ljava/lang/String;
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 659
    .local v1, "startIdx":I
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 660
    .local v2, "endIdx":I
    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    if-le v2, v1, :cond_0

    .line 661
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 664
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$notifyFeatureTagStateUnprovisioned$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "ft"    # Ljava/lang/String;

    .line 392
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$notifyFeatureTagStateUnprovisioned$1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "ft"    # Ljava/lang/String;

    .line 394
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipDelegate]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipDelegate]"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipDelegate]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-void
.end method

.method private notifyConfigurationChanged(Lcom/mediatek/ims/rcsua/Configuration;)V
    .locals 25
    .param p1, "configuration"    # Lcom/mediatek/ims/rcsua/Configuration;

    .line 146
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConfigurationChanged >> configuratiion["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    .line 147
    iget-object v1, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 148
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 149
    .local v3, "publicGruuUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPublicGruu()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "gruu":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    const-string v5, "sip:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    :cond_0
    const/4 v5, 0x0

    const-string v6, "sip"

    invoke-static {v6, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 155
    :cond_1
    const/16 v13, 0x13c4

    .line 156
    .local v13, "localTxPort":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getViaPort()I

    move-result v14

    .line 157
    .local v14, "localRxPort":I
    const/4 v15, 0x0

    .line 158
    .local v15, "remoteTxPort":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPortS()I

    move-result v16

    .line 159
    .local v16, "remoteRxPort":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getSecurityVerify()Ljava/lang/String;

    move-result-object v17

    .line 162
    .local v17, "security":Ljava/lang/String;
    iget-object v5, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    if-nez v5, :cond_2

    .line 163
    const-wide/16 v5, 0x0

    move-wide/from16 v18, v5

    .local v5, "version":J
    goto :goto_0

    .line 165
    .end local v5    # "version":J
    :cond_2
    invoke-virtual {v5}, Landroid/telephony/ims/SipDelegateConfiguration;->getVersion()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    move-wide/from16 v18, v5

    .line 168
    .local v18, "version":J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getLocalAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->formatIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 169
    .local v20, "localAddr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getProxyAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->formatIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 171
    .local v21, "serverAddr":Ljava/lang/String;
    new-instance v5, Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    const/4 v10, 0x1

    new-instance v11, Ljava/net/InetSocketAddress;

    .line 173
    invoke-static/range {v20 .. v20}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getLocalPort()I

    move-result v7

    invoke-direct {v11, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance v12, Ljava/net/InetSocketAddress;

    .line 175
    invoke-static/range {v21 .. v21}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getProxyPort()I

    move-result v7

    invoke-direct {v12, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v7, v5

    move-wide/from16 v8, v18

    invoke-direct/range {v7 .. v12}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    move-object v12, v5

    .line 178
    .local v12, "builder":Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->preferredImpu(Lcom/mediatek/ims/rcsua/Configuration;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getIMPU()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    .line 179
    .local v11, "impu":Ljava/lang/String;
    invoke-virtual {v12, v11}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getIMPI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPrivateUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 181
    invoke-direct {v0, v11}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->extractUserParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipContactUserParameter(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getHomeDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setHomeDomain(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getWholePAssociatedUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAssociatedUriHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPAccessNetworkInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPLastAccessNetworkInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPlaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getWholeServiceRoute()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipServiceRouteHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v10

    new-instance v9, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    move-object v5, v9

    move v6, v13

    move v7, v14

    move v8, v13

    move-object v2, v9

    move v9, v15

    move-object/from16 v22, v4

    move-object v4, v10

    .end local v4    # "gruu":Ljava/lang/String;
    .local v22, "gruu":Ljava/lang/String;
    move/from16 v10, v16

    move-object/from16 v23, v11

    .end local v11    # "impu":Ljava/lang/String;
    .local v23, "impu":Ljava/lang/String;
    move v11, v15

    move-object/from16 v24, v12

    .end local v12    # "builder":Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .local v24, "builder":Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    move-object/from16 v12, v17

    invoke-direct/range {v5 .. v12}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;-><init>(IIIIIILjava/lang/String;)V

    .line 187
    invoke-virtual {v4, v2}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipUserAgentHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    .line 190
    invoke-virtual {v2, v3}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicGruuUri(Landroid/net/Uri;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    const/16 v4, 0x4b0

    .line 192
    invoke-virtual {v2, v4}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setMaxUdpPayloadSizeBytes(I)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    iget v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->phoneId:I

    .line 193
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setImei(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 194
    invoke-virtual {v2, v4}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipCompactFormEnabled(Z)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 196
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyConfigurationChanged >> report configuraiton{version["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 199
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getVersion()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "],transport["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 200
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getTransportType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "],localAddr["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 201
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "],serverAddr["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 202
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getSipServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "],ipsecConfig["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 203
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getIpSecConfiguration()Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "],contactUserParam["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 204
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getSipContactUserParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-direct {v0, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    .line 206
    iget-object v2, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->stateCallback:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-interface {v2, v4}, Landroid/telephony/ims/DelegateStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    .line 207
    return-void
.end method

.method private notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ims/DelegateRegistrationState;

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFeatureTagsRegistrationChanged >> state["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->stateCallback:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 407
    return-void
.end method


# virtual methods
.method public cleanupSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 122
    const-string v0, "callId should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupSession >> callId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method getDeregisteringFeatureTags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v0

    .line 415
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 414
    return-object v0
.end method

.method getFeatureTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getStateCallback()Landroid/telephony/ims/DelegateStateCallback;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->stateCallback:Landroid/telephony/ims/DelegateStateCallback;

    return-object v0
.end method

.method notifyFeatureTagStateProvisioned(Ljava/lang/String;)Z
    .locals 7
    .param p1, "feature"    # Ljava/lang/String;

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "needUpdate":Z
    const/4 v1, 0x0

    .line 352
    .local v1, "changed":Z
    new-instance v2, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 353
    .local v2, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/FeatureTagState;

    .line 354
    .local v4, "dereg":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 355
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 356
    const/4 v0, 0x1

    .line 357
    :cond_0
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 358
    .end local v4    # "dereg":Landroid/telephony/ims/FeatureTagState;
    goto :goto_0

    .line 359
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/FeatureTagState;

    .line 360
    .restart local v4    # "dereg":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 361
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 362
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 363
    const/4 v1, 0x1

    goto :goto_2

    .line 365
    :cond_2
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 367
    .end local v4    # "dereg":Landroid/telephony/ims/FeatureTagState;
    :goto_2
    goto :goto_1

    .line 368
    :cond_3
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 369
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 370
    if-eqz v1, :cond_4

    .line 371
    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v3

    .line 372
    .local v3, "state":Landroid/telephony/ims/DelegateRegistrationState;
    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 373
    iput-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 375
    .end local v3    # "state":Landroid/telephony/ims/DelegateRegistrationState;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyFeatureTagStateProvisioned: feature["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], changed["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], needUpdate["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    .line 377
    return v0
.end method

.method notifyFeatureTagStateUnprovisioned(Ljava/lang/String;)Z
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFeatureTagStateUnprovisioned: feature["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 383
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 384
    :cond_1
    :goto_0
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 385
    .local v0, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/FeatureTagState;

    .line 386
    .local v2, "dereg":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 387
    .end local v2    # "dereg":Landroid/telephony/ims/FeatureTagState;
    goto :goto_1

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/FeatureTagState;

    .line 389
    .restart local v2    # "dereg":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 390
    .end local v2    # "dereg":Landroid/telephony/ims/FeatureTagState;
    goto :goto_2

    .line 391
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 392
    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/rcs/MtkSipDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 391
    invoke-virtual {v0, v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteringFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 393
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 394
    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/rcs/MtkSipDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 393
    invoke-virtual {v0, v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 395
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 396
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 397
    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 398
    const/4 v1, 0x1

    return v1
.end method

.method public notifyMessageReceiveError(Ljava/lang/String;I)V
    .locals 2
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 134
    const-string v0, "viaTransactionId should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMessageReceiveError >> viaTransactionId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], reason["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public notifyMessageReceived(Ljava/lang/String;)V
    .locals 2
    .param p1, "viaTransactionId"    # Ljava/lang/String;

    .line 128
    const-string v0, "viaTransactionId should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMessageReceived >> viaTransactionId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public notifyRegistrationDeregistered()V
    .locals 7

    .line 318
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 320
    .local v0, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v1

    .line 321
    .local v1, "remainStates":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/FeatureTagState;

    .line 322
    .local v3, "feature":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 323
    .end local v3    # "feature":Landroid/telephony/ims/FeatureTagState;
    goto :goto_0

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/FeatureTagState;

    .line 325
    .restart local v3    # "feature":Landroid/telephony/ims/FeatureTagState;
    const/4 v4, 0x2

    .line 326
    .local v4, "reason":I
    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 327
    const/4 v4, 0x1

    .line 328
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 329
    .end local v3    # "feature":Landroid/telephony/ims/FeatureTagState;
    .end local v4    # "reason":I
    goto :goto_1

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 331
    .local v3, "feature":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 332
    .end local v3    # "feature":Ljava/lang/String;
    goto :goto_2

    .line 333
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 334
    .restart local v3    # "feature":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 335
    .end local v3    # "feature":Ljava/lang/String;
    goto :goto_3

    .line 337
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v2

    .line 339
    .local v2, "state":Landroid/telephony/ims/DelegateRegistrationState;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 341
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2, v3}, Landroid/telephony/ims/DelegateRegistrationState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 342
    const-string v3, "feature tag reg state not changed"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    goto :goto_4

    .line 344
    :cond_5
    const-string v3, "feature tag reg state changed"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    .line 345
    iput-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 347
    :goto_4
    return-void
.end method

.method notifyRegistrationDeregistering(I)V
    .locals 7
    .param p1, "reason"    # I

    .line 294
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 296
    .local v0, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v1

    .line 297
    .local v1, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 298
    .local v3, "feature":Ljava/lang/String;
    invoke-virtual {v0, v3, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 299
    .end local v3    # "feature":Ljava/lang/String;
    goto :goto_0

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v1

    .line 301
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    .restart local v3    # "feature":Ljava/lang/String;
    invoke-virtual {v0, v3, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 303
    .end local v3    # "feature":Ljava/lang/String;
    goto :goto_1

    .line 304
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v2

    .line 305
    .local v2, "ftStates":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/FeatureTagState;

    .line 306
    .local v4, "ftState":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 307
    .end local v4    # "ftState":Landroid/telephony/ims/FeatureTagState;
    goto :goto_2

    .line 308
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v2

    .line 309
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/FeatureTagState;

    .line 310
    .restart local v4    # "ftState":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 311
    .end local v4    # "ftState":Landroid/telephony/ims/FeatureTagState;
    goto :goto_3

    .line 313
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 314
    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 315
    return-void
.end method

.method notifyRegistrationRegistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 10
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 220
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->readImsConfiguration()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v0

    .line 221
    .local v0, "configuration":Lcom/mediatek/ims/rcsua/Configuration;
    if-nez v0, :cond_0

    .line 222
    return-void

    .line 224
    :cond_0
    new-instance v1, Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Configuration;->getRegRcsFeatureTags()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/mediatek/ims/rcsua/Capability;-><init>(J)V

    .line 226
    .local v1, "registered":Lcom/mediatek/ims/rcsua/Capability;
    new-instance v2, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 228
    .local v2, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v3}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v3

    .line 229
    .local v3, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v4}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteringFeatureTags()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 230
    .local v5, "feature":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    invoke-virtual {v2, v5}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 232
    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 234
    .end local v5    # "feature":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 235
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 236
    .restart local v5    # "feature":Ljava/lang/String;
    invoke-virtual {v2, v5, v6}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 237
    .end local v5    # "feature":Ljava/lang/String;
    goto :goto_1

    .line 239
    :cond_3
    iget-object v4, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v4}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v3

    .line 240
    iget-object v4, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v4}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 241
    .restart local v5    # "feature":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 242
    invoke-virtual {v2, v5}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 243
    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 245
    .end local v5    # "feature":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 246
    :cond_5
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 247
    .restart local v5    # "feature":Ljava/lang/String;
    invoke-virtual {v2, v5, v6}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 248
    .end local v5    # "feature":Ljava/lang/String;
    goto :goto_3

    .line 250
    :cond_6
    iget-object v4, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v4}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v4

    .line 251
    .local v4, "ftStates":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    iget-object v5, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v5}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteringFeatureTags()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ims/FeatureTagState;

    .line 253
    .local v6, "feature":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 254
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 255
    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 257
    .end local v6    # "feature":Landroid/telephony/ims/FeatureTagState;
    :cond_7
    goto :goto_4

    .line 258
    :cond_8
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ims/FeatureTagState;

    .line 259
    .local v6, "dereg":Landroid/telephony/ims/FeatureTagState;
    const/4 v7, 0x2

    .line 260
    .local v7, "reason":I
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_9

    .line 261
    const/4 v7, 0x1

    .line 262
    :cond_9
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 263
    .end local v6    # "dereg":Landroid/telephony/ims/FeatureTagState;
    .end local v7    # "reason":I
    goto :goto_5

    .line 265
    :cond_a
    iget-object v5, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v5}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v4

    .line 266
    iget-object v5, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v5}, Landroid/telephony/ims/DelegateRegistrationState;->getDeregisteredFeatureTags()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ims/FeatureTagState;

    .line 267
    .local v6, "ftState":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 268
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 269
    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 271
    .end local v6    # "ftState":Landroid/telephony/ims/FeatureTagState;
    :cond_b
    goto :goto_6

    .line 272
    :cond_c
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ims/FeatureTagState;

    .line 273
    .restart local v6    # "ftState":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 274
    .end local v6    # "ftState":Landroid/telephony/ims/FeatureTagState;
    goto :goto_7

    .line 279
    :cond_d
    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v5

    .line 281
    .local v5, "state":Landroid/telephony/ims/DelegateRegistrationState;
    invoke-virtual {v5}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 282
    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyConfigurationChanged(Lcom/mediatek/ims/rcsua/Configuration;)V

    .line 284
    :cond_e
    iget-object v6, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-virtual {v5, v6}, Landroid/telephony/ims/DelegateRegistrationState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 285
    const-string v6, "feature tag reg state not changed"

    invoke-direct {p0, v6}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    goto :goto_8

    .line 287
    :cond_f
    invoke-direct {p0, v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 288
    iput-object v5, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 290
    :goto_8
    return-void
.end method

.method notifyRegistrationRegistering()V
    .locals 2

    .line 210
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 212
    .local v0, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v1}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteringFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 214
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->regState:Landroid/telephony/ims/DelegateRegistrationState;

    .line 216
    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 217
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 139
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    .line 140
    .local v0, "uaSrvMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v0, :cond_0

    .line 141
    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->phoneId:I

    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->sipCallback:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->unregisterSipCallback(ILcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V

    .line 143
    :cond_0
    return-void
.end method

.method preferredImpu(Lcom/mediatek/ims/rcsua/Configuration;)Ljava/lang/String;
    .locals 6
    .param p1, "configuration"    # Lcom/mediatek/ims/rcsua/Configuration;

    .line 616
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPAssociatedUri()[Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "pAssociatedUris":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 619
    .local v1, "impu":Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 620
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 622
    .local v4, "uri":Ljava/lang/String;
    const-string v5, "sip:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    .line 623
    move-object v1, v4

    goto :goto_1

    .line 624
    :cond_0
    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    .line 625
    move-object v1, v4

    .line 620
    .end local v4    # "uri":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 630
    :cond_2
    return-object v1
.end method

.method public sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .locals 2
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;
    .param p2, "configVersion"    # J

    .line 98
    const-string v0, "message should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage >> message["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], config["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 103
    if-nez v0, :cond_0

    .line 104
    const-string v0, "sendMessage >> UaServiceManager not ready"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->phoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->sendSipMessage(ILandroid/telephony/ims/SipMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipDelegate$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate$1;-><init>(Lcom/mediatek/ims/rcs/MtkSipDelegate;Landroid/telephony/ims/SipMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->sendingTransactions:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    return-void
.end method
