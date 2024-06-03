.class public abstract Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;
.super Landroid/os/Binder;
.source "IMotoExtIms.java"

# interfaces
.implements Lcom/motorola/android/ims/internal/IMotoExtIms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/internal/IMotoExtIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/ims/internal/IMotoExtIms$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getConfigInterface:I = 0x1

.field static final TRANSACTION_getWfcMDN:I = 0x3

.field static final TRANSACTION_isCallComposerEnabledByPlatform:I = 0x6

.field static final TRANSACTION_isChatBotEnabledByPlatform:I = 0x7

.field static final TRANSACTION_isImsOverNrEnabledByPlatform:I = 0x9

.field static final TRANSACTION_isVceEnabledByPlatform:I = 0x5

.field static final TRANSACTION_isWfcEnabled:I = 0x4

.field static final TRANSACTION_queryVopsStatus:I = 0x8

.field static final TRANSACTION_setWfcMDN:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 96
    const-string v0, "com.motorola.android.ims.internal.IMotoExtIms"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/internal/IMotoExtIms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    const-string v0, "com.motorola.android.ims.internal.IMotoExtIms"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 108
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/ims/internal/IMotoExtIms;

    if-eqz v1, :cond_1

    .line 109
    move-object v1, v0

    check-cast v1, Lcom/motorola/android/ims/internal/IMotoExtIms;

    return-object v1

    .line 111
    :cond_1
    new-instance v1, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 115
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const-string v0, "com.motorola.android.ims.internal.IMotoExtIms"

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 131
    packed-switch p1, :pswitch_data_1

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 217
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;->isImsOverNrEnabledByPlatform(I)Z

    move-result v3

    .line 220
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 222
    goto/16 :goto_0

    .line 207
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 209
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/ims/internal/IMotoExtImsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/internal/IMotoExtImsListener;

    move-result-object v3

    .line 210
    .local v3, "_arg1":Lcom/motorola/android/ims/internal/IMotoExtImsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2, v3}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;->queryVopsStatus(ILcom/motorola/android/ims/internal/IMotoExtImsListener;)V

    .line 212
    goto/16 :goto_0

    .line 197
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/motorola/android/ims/internal/IMotoExtImsListener;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;->isChatBotEnabledByPlatform(I)Z

    move-result v3

    .line 200
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 202
    goto :goto_0

    .line 187
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;->isCallComposerEnabledByPlatform(I)Z

    move-result v3

    .line 190
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 192
    goto :goto_0

    .line 177
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;->isVceEnabledByPlatform(I)Z

    move-result v3

    .line 180
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 182
    goto :goto_0

    .line 167
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;->isWfcEnabled(I)Z

    move-result v3

    .line 170
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 172
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;->getWfcMDN(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    goto :goto_0

    .line 146
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;->setWfcMDN(ILjava/lang/String;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_0

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;->getConfigInterface(I)Lcom/motorola/android/ims/internal/IMotoExtImsConfig;

    move-result-object v3

    .line 139
    .local v3, "_result":Lcom/motorola/android/ims/internal/IMotoExtImsConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 141
    nop

    .line 229
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/motorola/android/ims/internal/IMotoExtImsConfig;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
