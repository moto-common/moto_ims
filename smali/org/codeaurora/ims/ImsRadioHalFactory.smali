.class public final Lorg/codeaurora/ims/ImsRadioHalFactory;
.super Ljava/lang/Object;
.source "ImsRadioHalFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsRadioHalFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newImsRadioHal(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)Lorg/codeaurora/ims/IImsRadio;
    .locals 3
    .param p0, "respCallback"    # Lorg/codeaurora/ims/IImsRadioResponse;
    .param p1, "indCallback"    # Lorg/codeaurora/ims/IImsRadioIndication;
    .param p2, "phoneId"    # I

    .line 28
    const-string v2, "ImsRadioHalFactory"

    .line 33
    const-string v0, "Initializing IImsRadio AIDL"

    invoke-static {v2, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lorg/codeaurora/ims/ImsRadioAidl;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsRadioAidl;-><init>(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)V

    return-object v0

.end method
