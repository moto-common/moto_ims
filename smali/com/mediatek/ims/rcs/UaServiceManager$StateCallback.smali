.class public abstract Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# instance fields
.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->myHandler:Landroid/os/Handler;

    .line 400
    return-void
.end method


# virtual methods
.method getMyHandler()Landroid/os/Handler;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onCallComposerChanged(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 427
    return-void
.end method

.method public onDeregisterInd(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 424
    return-void
.end method

.method public onDeregistered(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 416
    return-void
.end method

.method public onDeregistering(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 412
    return-void
.end method

.method public onRegistered(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 408
    return-void
.end method

.method public onRegistering(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 404
    return-void
.end method

.method public onReregistered(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 420
    return-void
.end method
