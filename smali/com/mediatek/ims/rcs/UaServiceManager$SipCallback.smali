.class public abstract Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SipCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived([B)V
    .locals 0
    .param p1, "message"    # [B

    .line 392
    return-void
.end method

.method public messageSendFailure(Ljava/lang/String;I)V
    .locals 0
    .param p1, "tranactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 398
    return-void
.end method

.method public messageSent(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionId"    # Ljava/lang/String;

    .line 395
    return-void
.end method

.method public onAvailable()V
    .locals 0

    .line 401
    return-void
.end method

.method public onUnavailable()V
    .locals 0

    .line 404
    return-void
.end method
