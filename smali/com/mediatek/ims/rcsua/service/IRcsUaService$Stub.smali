.class public abstract Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;
.super Landroid/os/Binder;
.source "IRcsUaService.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/IRcsUaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/IRcsUaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activate:I = 0x1

.field static final TRANSACTION_addCapability:I = 0x6

.field static final TRANSACTION_clearAcsConfiguration:I = 0x1a

.field static final TRANSACTION_deactivate:I = 0x2

.field static final TRANSACTION_getAcsConfigInt:I = 0x12

.field static final TRANSACTION_getAcsConfigString:I = 0x13

.field static final TRANSACTION_getAcsConfiguration:I = 0x11

.field static final TRANSACTION_getAcsSwitchState:I = 0x18

.field static final TRANSACTION_getCapabilities:I = 0xd

.field static final TRANSACTION_getOptions:I = 0xc

.field static final TRANSACTION_isAcsConnected:I = 0x14

.field static final TRANSACTION_isActivated:I = 0xe

.field static final TRANSACTION_registerAcsCallback:I = 0xf

.field static final TRANSACTION_registerClient:I = 0x9

.field static final TRANSACTION_removeCapability:I = 0x7

.field static final TRANSACTION_setAcsProvisioningAddress:I = 0x19

.field static final TRANSACTION_setAcsSideLoadingConfiguration:I = 0x1b

.field static final TRANSACTION_setAcsSwitchState:I = 0x16

.field static final TRANSACTION_setAcsonfiguration:I = 0x17

.field static final TRANSACTION_setOptions:I = 0xb

.field static final TRANSACTION_triggerAcsRequest:I = 0x15

.field static final TRANSACTION_triggerForceReregistration:I = 0x4

.field static final TRANSACTION_triggerReregistration:I = 0x3

.field static final TRANSACTION_triggerRestoration:I = 0x5

.field static final TRANSACTION_unregisterAcsCallback:I = 0x10

.field static final TRANSACTION_unregisterClient:I = 0xa

.field static final TRANSACTION_updateCapabilities:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 115
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 123
    if-nez p0, :cond_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 127
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 128
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v1

    .line 130
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1

    .line 1140
    sget-object v0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 1130
    sget-object v0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-nez v0, :cond_1

    .line 1133
    if-eqz p0, :cond_0

    .line 1134
    sput-object p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 1135
    const/4 v0, 0x1

    return v0

    .line 1137
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1131
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 134
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    .line 139
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 147
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    .line 441
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 143
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return v1

    .line 431
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsSideLoadingConfiguration(Ljava/lang/String;)Z

    move-result v3

    .line 435
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    return v1

    .line 423
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->clearAcsConfiguration()Z

    move-result v2

    .line 425
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    return v1

    .line 413
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsProvisioningAddress(Ljava/lang/String;)Z

    move-result v3

    .line 417
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    return v1

    .line 405
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsSwitchState()Z

    move-result v2

    .line 407
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    return v1

    .line 390
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    return v1

    .line 380
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 383
    .local v2, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsSwitchState(Z)Z

    move-result v3

    .line 384
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    return v1

    .line 371
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerAcsRequest(I)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    return v1

    .line 363
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->isAcsConnected()Z

    move-result v2

    .line 365
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    return v1

    .line 353
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    return v1

    .line 343
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 346
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v3

    .line 347
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    return v1

    .line 329
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v3

    .line 331
    .local v3, "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v3, :cond_1

    .line 333
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    invoke-virtual {v3, p3, v1}, Lcom/mediatek/ims/rcsua/AcsConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    :goto_0
    return v1

    .line 320
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    .line 323
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    return v1

    .line 311
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    .line 314
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    return v1

    .line 303
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->isActivated()Z

    move-result v2

    .line 305
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    return v1

    .line 289
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v3

    .line 291
    .local v3, "_result":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v3, :cond_2

    .line 293
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {v3, p3, v1}, Lcom/mediatek/ims/rcsua/Capability;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 297
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    :goto_1
    return v1

    .line 275
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getOptions()Landroid/os/Bundle;

    move-result-object v3

    .line 277
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v3, :cond_3

    .line 279
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    invoke-virtual {v3, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 283
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    :goto_2
    return v1

    .line 261
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 267
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_4
    const/4 v2, 0x0

    .line 269
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setOptions(Landroid/os/Bundle;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    return v1

    .line 252
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v2

    .line 255
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    return v1

    .line 242
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    .line 245
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v3

    .line 246
    .local v3, "_result":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 248
    return v1

    .line 228
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_5

    .line 234
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_6
    const/4 v2, 0x0

    .line 236
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_5
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    return v1

    .line 214
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 217
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_6

    .line 220
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_7
    const/4 v2, 0x0

    .line 222
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_6
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    return v1

    .line 200
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 203
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_7

    .line 206
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_8
    const/4 v2, 0x0

    .line 208
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_7
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    return v1

    .line 193
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerRestoration()V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    return v1

    .line 179
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 182
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_8

    .line 185
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_9
    const/4 v2, 0x0

    .line 187
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_8
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerForceReregistration(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    return v1

    .line 165
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 168
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_9

    .line 171
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_a
    const/4 v2, 0x0

    .line 173
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_9
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    return v1

    .line 158
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->deactivate()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    return v1

    .line 151
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->activate()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
