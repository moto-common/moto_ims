.class public Lcom/mediatek/ims/MtkMotoExtImsService;
.super Landroid/app/Service;
.source "MtkMotoExtImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkMotoExtImsService$MotoExtImsImpl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MotoExtImsService"


# instance fields
.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mMotoExtIms:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MtkMotoExtImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 35
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lcom/mediatek/ims/MtkMotoExtImsService;->READ_PHONE_STATE:Ljava/lang/String;

    .line 36
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lcom/mediatek/ims/MtkMotoExtImsService;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    return-void
.end method

.method private createMotoExtIms()V
    .locals 1

    .line 48
    new-instance v0, Lcom/mediatek/ims/MtkMotoExtImsService$MotoExtImsImpl;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/MtkMotoExtImsService$MotoExtImsImpl;-><init>(Lcom/mediatek/ims/MtkMotoExtImsService;)V

    iput-object v0, p0, Lcom/mediatek/ims/MtkMotoExtImsService;->mMotoExtIms:Landroid/os/IBinder;

    .line 49
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/MtkMotoExtImsService;->mMotoExtIms:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotoExtImsService"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/mediatek/ims/MtkMotoExtImsService;->mMotoExtIms:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    const-string v0, "MotoExtImsService"

    const-string v1, "MtkMotoExtImsService created!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/mediatek/ims/MtkMotoExtImsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MtkMotoExtImsService;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MtkMotoExtImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 44
    invoke-direct {p0}, Lcom/mediatek/ims/MtkMotoExtImsService;->createMotoExtIms()V

    .line 45
    return-void
.end method

.method protected onQueryVopsStatus(ILcom/motorola/android/ims/internal/IMotoExtImsListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/motorola/android/ims/internal/IMotoExtImsListener;

    .line 96
    const-string v0, "queryVopsStatus"

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkMotoExtImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/mediatek/ims/MtkMotoExtImsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkMotoExtImsService;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->queryVopsStatus(ILcom/motorola/android/ims/internal/IMotoExtImsListener;)V

    .line 101
    return-void
.end method
