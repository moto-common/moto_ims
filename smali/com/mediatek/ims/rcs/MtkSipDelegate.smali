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

.field private sendingTransactions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stateCallback:Landroid/telephony/ims/DelegateStateCallback;

.field private subId:I

.field private uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "request"    # Landroid/telephony/ims/DelegateRequest;
    .param p4, "sc"    # Landroid/telephony/ims/DelegateStateCallback;
    .param p5, "mc"    # Landroid/telephony/ims/DelegateMessageCallback;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->sendingTransactions:Ljava/util/Set;

    .line 68
    const-string v0, "DelegateRequest should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    const-string v0, "DelegateStateCallback should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    const-string v0, "DelegateMessageCallback should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->mContext:Landroid/content/Context;

    .line 73
    iput p2, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->subId:I

    .line 74
    iput-object p3, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateRequest:Landroid/telephony/ims/DelegateRequest;

    .line 75
    iput-object p4, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->stateCallback:Landroid/telephony/ims/DelegateStateCallback;

    .line 76
    iput-object p5, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->messageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    .line 77
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipDelegate$SipCallback;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/MtkSipDelegate$SipCallback;-><init>(Lcom/mediatek/ims/rcs/MtkSipDelegate;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->registerSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V

    goto :goto_0

    .line 81
    :cond_0
    const-string v0, "MtkSipDelegate >> UaServiceManager not ready"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logE(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcs/MtkSipDelegate;)Landroid/telephony/ims/DelegateMessageCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->messageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcs/MtkSipDelegate;[B)Landroid/telephony/ims/SipMessage;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;
    .param p1, "x1"    # [B

    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->encodeSipMessage([B)Landroid/telephony/ims/SipMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcs/MtkSipDelegate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcs/MtkSipDelegate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcs/MtkSipDelegate;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->sendingTransactions:Ljava/util/Set;

    return-object v0
.end method

.method private encodeSipMessage([B)Landroid/telephony/ims/SipMessage;
    .locals 11
    .param p1, "rawData"    # [B

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "sipMessage":Landroid/telephony/ims/SipMessage;
    const/4 v1, 0x0

    .line 307
    .local v1, "startLine":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "hdrBeginPos":I
    const/4 v3, 0x0

    .local v3, "hdrEndPos":I
    const/4 v4, 0x0

    .line 309
    .local v4, "bodyBeginPos":I
    new-instance v5, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;

    invoke-direct {v5, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;-><init>([B)V

    .line 310
    .local v5, "reader":Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->read()[C

    move-result-object v6

    .line 311
    .local v6, "line":[C
    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    .line 312
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->getNextPosition()I

    move-result v2

    .line 313
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    move-object v1, v7

    .line 314
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    :cond_0
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->read()[C

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_1

    .line 316
    array-length v7, v6

    if-nez v7, :cond_0

    .line 317
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->getCurrPosition()I

    move-result v3

    .line 318
    invoke-virtual {v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->getNextPosition()I

    move-result v4

    .line 324
    :cond_1
    if-eqz v1, :cond_3

    if-lez v2, :cond_3

    if-lez v3, :cond_3

    if-le v3, v2, :cond_3

    .line 325
    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v2

    invoke-direct {v7, p1, v2, v8}, Ljava/lang/String;-><init>([BII)V

    .line 326
    .local v7, "headerSection":Ljava/lang/String;
    array-length v8, p1

    sub-int/2addr v8, v4

    .line 327
    .local v8, "bodyLength":I
    new-array v9, v8, [B

    .line 328
    .local v9, "body":[B
    if-lez v8, :cond_2

    .line 329
    const/4 v10, 0x0

    invoke-static {p1, v4, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    :cond_2
    new-instance v10, Landroid/telephony/ims/SipMessage;

    invoke-direct {v10, v1, v7, v9}, Landroid/telephony/ims/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    move-object v0, v10

    .line 333
    .end local v7    # "headerSection":Ljava/lang/String;
    .end local v8    # "bodyLength":I
    .end local v9    # "body":[B
    :cond_3
    return-object v0
.end method

.method private extractUserParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "user":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "start":I
    const/4 v2, 0x0

    .line 483
    .local v2, "end":I
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 486
    :cond_0
    const-string v3, "sip:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "tel:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 487
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 489
    :cond_2
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 490
    if-gez v2, :cond_3

    .line 491
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 494
    :cond_3
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 496
    goto :goto_0

    .line 495
    :catch_0
    move-exception v3

    .line 498
    :goto_0
    return-object v0

    .line 484
    :cond_4
    :goto_1
    return-object v0
.end method

.method private formatIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 502
    move-object v0, p1

    .line 504
    .local v0, "result":Ljava/lang/String;
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 505
    .local v1, "startIdx":I
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 506
    .local v2, "endIdx":I
    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    if-le v2, v1, :cond_0

    .line 507
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 510
    :cond_0
    return-object v0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipDelegate]"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipDelegate]"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipDelegate]"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method private notifyConfigurationChanged(Lcom/mediatek/ims/rcsua/Configuration;)V
    .locals 24
    .param p1, "configuration"    # Lcom/mediatek/ims/rcsua/Configuration;

    .line 130
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConfigurationChanged >> configuratiion["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 131
    iget-object v1, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 132
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 133
    .local v3, "publicGruuUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPublicGruu()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "gruu":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 135
    const-string v5, "sip:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 137
    :cond_0
    const/4 v5, 0x0

    const-string v6, "sip"

    invoke-static {v6, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 139
    :cond_1
    const/16 v13, 0x13c4

    .line 140
    .local v13, "localTxPort":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getViaPort()I

    move-result v14

    .line 141
    .local v14, "localRxPort":I
    const/4 v15, 0x0

    .line 142
    .local v15, "remoteTxPort":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPortS()I

    move-result v16

    .line 143
    .local v16, "remoteRxPort":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getSecurityVerify()Ljava/lang/String;

    move-result-object v17

    .line 146
    .local v17, "security":Ljava/lang/String;
    iget-object v5, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    if-nez v5, :cond_2

    .line 147
    const-wide/16 v5, 0x0

    move-wide/from16 v18, v5

    .local v5, "version":J
    goto :goto_0

    .line 149
    .end local v5    # "version":J
    :cond_2
    invoke-virtual {v5}, Landroid/telephony/ims/SipDelegateConfiguration;->getVersion()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    move-wide/from16 v18, v5

    .line 152
    .local v18, "version":J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getLocalAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->formatIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 153
    .local v20, "localAddr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getProxyAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->formatIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 155
    .local v21, "serverAddr":Ljava/lang/String;
    new-instance v5, Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    const/4 v10, 0x1

    new-instance v11, Ljava/net/InetSocketAddress;

    .line 157
    invoke-static/range {v20 .. v20}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getLocalPort()I

    move-result v7

    invoke-direct {v11, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance v12, Ljava/net/InetSocketAddress;

    .line 159
    invoke-static/range {v21 .. v21}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getProxyPort()I

    move-result v7

    invoke-direct {v12, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v7, v5

    move-wide/from16 v8, v18

    invoke-direct/range {v7 .. v12}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    move-object v12, v5

    .line 162
    .local v12, "builder":Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->preferredImpu(Lcom/mediatek/ims/rcsua/Configuration;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getIMPU()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v12, v5}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getIMPI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPrivateUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getIMPI()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->extractUserParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipContactUserParameter(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getHomeDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setHomeDomain(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getWholePAssociatedUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAssociatedUriHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPAccessNetworkInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPLastAccessNetworkInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPlaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v5

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getWholeServiceRoute()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipServiceRouteHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v11

    new-instance v10, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    move-object v5, v10

    move v6, v13

    move v7, v14

    move v8, v13

    move v9, v15

    move-object v2, v10

    move/from16 v10, v16

    move-object/from16 v22, v4

    move-object v4, v11

    .end local v4    # "gruu":Ljava/lang/String;
    .local v22, "gruu":Ljava/lang/String;
    move v11, v15

    move-object/from16 v23, v12

    .end local v12    # "builder":Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .local v23, "builder":Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    move-object/from16 v12, v17

    invoke-direct/range {v5 .. v12}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;-><init>(IIIIIILjava/lang/String;)V

    .line 170
    invoke-virtual {v4, v2}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/rcsua/Configuration;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipUserAgentHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    .line 173
    invoke-virtual {v2, v3}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicGruuUri(Landroid/net/Uri;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    const/16 v4, 0x4b0

    .line 175
    invoke-virtual {v2, v4}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setMaxUdpPayloadSizeBytes(I)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    .line 176
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setImei(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 177
    invoke-virtual {v2, v4}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipCompactFormEnabled(Z)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    .line 179
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyConfigurationChanged >> report configuraiton{version["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 182
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getVersion()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "],transport["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 183
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getTransportType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "],localAddr["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 184
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "],serverAddr["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 185
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getSipServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "],ipsecConfig["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 186
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getIpSecConfiguration()Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "],contactUserParam["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 187
    invoke-virtual {v4}, Landroid/telephony/ims/SipDelegateConfiguration;->getSipContactUserParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-direct {v0, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logI(Ljava/lang/String;)V

    .line 189
    iget-object v2, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->stateCallback:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v4, v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-interface {v2, v4}, Landroid/telephony/ims/DelegateStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    .line 190
    return-void
.end method

.method private notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ims/DelegateRegistrationState;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFeatureTagsRegistrationChanged >> state["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->stateCallback:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 252
    return-void
.end method


# virtual methods
.method public cleanupSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 111
    const-string v0, "callId should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupSession >> callId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 115
    return-void
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

    .line 255
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->delegateRequest:Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getStateCallback()Landroid/telephony/ims/DelegateStateCallback;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->stateCallback:Landroid/telephony/ims/DelegateStateCallback;

    return-object v0
.end method

.method public notifyDeregisteredRegistrationStateChanged(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 238
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->everRegistered:Z

    if-nez v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 242
    .local v0, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 243
    .local v1, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    .local v3, "feature":Ljava/lang/String;
    invoke-virtual {v0, v3, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 245
    .end local v3    # "feature":Ljava/lang/String;
    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 247
    return-void
.end method

.method notifyDeregisteringRegistrationStateChanged(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 226
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->everRegistered:Z

    if-nez v0, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 230
    .local v0, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 231
    .local v1, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 232
    .local v3, "feature":Ljava/lang/String;
    invoke-virtual {v0, v3, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 233
    .end local v3    # "feature":Ljava/lang/String;
    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 235
    return-void
.end method

.method public notifyMessageReceiveError(Ljava/lang/String;I)V
    .locals 2
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 125
    const-string v0, "viaTransactionId should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMessageReceiveError >> viaTransactionId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], reason["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public notifyMessageReceived(Ljava/lang/String;)V
    .locals 2
    .param p1, "viaTransactionId"    # Ljava/lang/String;

    .line 119
    const-string v0, "viaTransactionId should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMessageReceived >> viaTransactionId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method notifyRegisteredRegistrationStateChanged(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 8
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 193
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->readImsConfiguration()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v0

    .line 194
    .local v0, "configuration":Lcom/mediatek/ims/rcsua/Configuration;
    if-nez v0, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    new-instance v1, Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Configuration;->getRegRcsFeatureTags()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/mediatek/ims/rcsua/Capability;-><init>(J)V

    .line 199
    .local v1, "registered":Lcom/mediatek/ims/rcsua/Capability;
    new-instance v2, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 200
    .local v2, "builder":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->getFeatureTags()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 201
    .local v3, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v4, "regFeatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 203
    .local v6, "feature":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 204
    invoke-virtual {v2, v6}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 205
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v6    # "feature":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 208
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 209
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 210
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 211
    .restart local v6    # "feature":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    goto :goto_1

    .line 214
    .end local v6    # "feature":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v5

    .line 216
    .local v5, "state":Landroid/telephony/ims/DelegateRegistrationState;
    invoke-virtual {v5}, Landroid/telephony/ims/DelegateRegistrationState;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->everRegistered:Z

    if-nez v6, :cond_4

    .line 217
    const-string v6, "IMS registered without RCS features"

    invoke-direct {p0, v6}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logE(Ljava/lang/String;)V

    goto :goto_2

    .line 219
    :cond_4
    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyConfigurationChanged(Lcom/mediatek/ims/rcsua/Configuration;)V

    .line 220
    invoke-direct {p0, v5}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagsRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 221
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->everRegistered:Z

    .line 223
    :goto_2
    return-void
.end method

.method preferredImpu(Lcom/mediatek/ims/rcsua/Configuration;)Ljava/lang/String;
    .locals 8
    .param p1, "configuration"    # Lcom/mediatek/ims/rcsua/Configuration;

    .line 456
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/Configuration;->getPAssociatedUri()[Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "pAssociatedUris":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "sipUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 458
    .local v2, "telUri":Ljava/lang/String;
    const/4 v3, 0x0

    .line 460
    .local v3, "impu":Ljava/lang/String;
    if-eqz v0, :cond_4

    array-length v4, v0

    if-lez v4, :cond_4

    .line 461
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 463
    .local v6, "uri":Ljava/lang/String;
    const-string v7, "sip:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v1, :cond_0

    .line 464
    move-object v1, v6

    goto :goto_1

    .line 465
    :cond_0
    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v2, :cond_1

    .line 466
    move-object v2, v6

    .line 461
    .end local v6    # "uri":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 469
    :cond_2
    if-eqz v2, :cond_3

    .line 470
    move-object v3, v2

    goto :goto_2

    .line 471
    :cond_3
    if-eqz v1, :cond_4

    .line 472
    move-object v3, v1

    .line 476
    :cond_4
    :goto_2
    return-object v3
.end method

.method public sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .locals 2
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;
    .param p2, "configVersion"    # J

    .line 87
    const-string v0, "message should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage >> message["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], config["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logD(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 92
    if-nez v0, :cond_0

    .line 93
    const-string v0, "sendMessage >> UaServiceManager not ready"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->sendSipMessage(Landroid/telephony/ims/SipMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipDelegate$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate$1;-><init>(Lcom/mediatek/ims/rcs/MtkSipDelegate;Landroid/telephony/ims/SipMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate;->sendingTransactions:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_0
    return-void
.end method
