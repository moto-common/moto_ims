.class public Lcom/mediatek/ims/ril/ImsRadioIndication;
.super Lcom/mediatek/ims/ril/ImsRadioIndicationBase;
.source "ImsRadioIndication.java"


# static fields
.field private static final INVALID_CALL_MODE:I = 0xff


# instance fields
.field private mPhoneId:I

.field private mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 35
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 37
    iput p2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 38
    return-void
.end method


# virtual methods
.method public audioIndication(III)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "callid"    # I
    .param p3, "audio"    # I

    .line 1009
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1011
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 1014
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc32

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1017
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttAudioIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1018
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttAudioIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1021
    :cond_0
    return-void
.end method

.method public callAdditionalInfoInd(IILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .param p2, "ciType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1027
    .local p3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1029
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1030
    .local v0, "notification":[Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1031
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1032
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 1031
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1036
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1037
    invoke-static {v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1036
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1040
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallAdditionalInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 1041
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallAdditionalInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1042
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1044
    :cond_1
    return-void
.end method

.method public callInfoIndication(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 337
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "callInfo":[Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 343
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 347
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbd7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-static {v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 351
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 353
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 357
    :cond_1
    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCurrentCallCount()I

    move-result v1

    .line 358
    .local v1, "numOfActiveCalls":I
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x85

    if-ne v2, v3, :cond_2

    .line 359
    add-int/lit8 v1, v1, -0x1

    .line 360
    new-instance v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mContext:Landroid/content/Context;

    .line 370
    .end local v2    # "motoExtTM":Landroid/telephony/TelephonyManager;
    :cond_2
    return-void

    .line 340
    .end local v1    # "numOfActiveCalls":I
    :cond_3
    :goto_0
    return-void
.end method

.method public callRatIndication(III)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "domain"    # I
    .param p3, "rat"    # I

    .line 1048
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1050
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 1053
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc38

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1056
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallRatIndicationRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallRatIndicationRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1058
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1060
    :cond_0
    return-void
.end method

.method public callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callMode"    # Ljava/lang/String;
    .param p4, "videoState"    # Ljava/lang/String;
    .param p5, "audioDirection"    # Ljava/lang/String;
    .param p6, "pau"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 107
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 111
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    const/16 v3, 0xbda

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 117
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 119
    :cond_0
    return-void
.end method

.method public cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "msg"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    .line 905
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 908
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc2c

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 911
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/SmsMessageConverter;->newSmsMessageFromCdmaSmsMessage(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 912
    .local v0, "sms":Landroid/telephony/SmsMessage;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 915
    :cond_0
    return-void
.end method

.method public econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "confCallId"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "num"    # Ljava/lang/String;
    .param p5, "result"    # Ljava/lang/String;
    .param p6, "cause"    # Ljava/lang/String;
    .param p7, "joinedCallId"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 314
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v2, 0x4

    aput-object p6, v0, v2

    const/4 v2, 0x5

    aput-object p7, v0, v2

    .line 317
    .local v0, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-static {v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    const/16 v4, 0xbd8

    invoke-virtual {v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 321
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ECONF result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 325
    :cond_0
    return-void
.end method

.method public ectIndication(IIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "ectResult"    # I
    .param p4, "cause"    # I

    .line 226
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 227
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 230
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe6

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEctResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEctResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 236
    :cond_0
    return-void
.end method

.method public eregrtInfoInd(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1189
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1194
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "eregrtInfoInd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1197
    .local v2, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    .end local v2    # "i":Ljava/lang/Integer;
    goto :goto_0

    .line 1200
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1202
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1205
    .end local v0    # "b":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEregrtIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEregrtIndRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1209
    :cond_1
    return-void
.end method

.method public getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "result1"    # Ljava/lang/String;
    .param p3, "result2"    # Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 415
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 417
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdd

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 420
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 422
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 424
    :cond_0
    return-void
.end method

.method public imsBearerInit(I)V
    .locals 4
    .param p1, "type"    # I

    .line 635
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 637
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 640
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbeb

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 643
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 647
    :cond_0
    return-void
.end method

.method public imsBearerStateNotify(IIILjava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "capability"    # Ljava/lang/String;

    .line 607
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 609
    iget v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "phoneId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "strAid":Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "strAction":Ljava/lang/String;
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    .line 615
    .local v3, "ret":[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v5, 0xbe9

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 618
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerStateRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_0

    .line 619
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerStateRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 622
    :cond_0
    return-void
.end method

.method public imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "configId"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 841
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 843
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 846
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc15

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 849
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 853
    :cond_0
    return-void
.end method

.method public imsCfgConfigLoaded(I)V
    .locals 4
    .param p1, "type"    # I

    .line 857
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 859
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 862
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc16

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 865
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 866
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 869
    :cond_0
    return-void
.end method

.method public imsCfgDynamicImsSwitchComplete(I)V
    .locals 4
    .param p1, "type"    # I

    .line 809
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 811
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 814
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc13

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 817
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 821
    :cond_0
    return-void
.end method

.method public imsCfgFeatureChanged(IIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "featureId"    # I
    .param p4, "value"    # I

    .line 825
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 827
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 830
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc14

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 833
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 837
    :cond_0
    return-void
.end method

.method public imsConferenceInfoIndication(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;",
            ">;)V"
        }
    .end annotation

    .line 733
    .local p2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 736
    new-instance v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    invoke-direct {v2}, Lcom/mediatek/ims/ImsCallSessionProxy$User;-><init>()V

    .line 737
    .local v2, "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;->user_addr:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mUserAddr:Ljava/lang/String;

    .line 738
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;->end_point:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEndPoint:Ljava/lang/String;

    .line 739
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;->entity:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEntity:Ljava/lang/String;

    .line 740
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;->display_text:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mDisplayText:Ljava/lang/String;

    .line 741
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsConfParticipant;->status:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mStatus:Ljava/lang/String;

    .line 742
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    .end local v2    # "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 747
    invoke-static {v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 750
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 752
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 754
    :cond_1
    return-void
.end method

.method public imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "capability"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .line 653
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 655
    iget v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "phoneId":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 659
    .local v1, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xc27

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 662
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 664
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 666
    :cond_0
    return-void
.end method

.method public imsDeregDone(I)V
    .locals 4
    .param p1, "type"    # I

    .line 671
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 673
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 676
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbec

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 679
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 683
    :cond_0
    return-void
.end method

.method public imsDialogIndication(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;",
            ">;)V"
        }
    .end annotation

    .line 793
    .local p2, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 796
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc39

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 797
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;

    .line 798
    .local v1, "d":Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL_UNSOL_IMS_DIALOG_INDICATION dialogId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;->dialogId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;->address:Ljava/lang/String;

    .line 799
    invoke-static {v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 798
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 800
    .end local v1    # "d":Lvendor/mediatek/hardware/mtkradioex/V3_0/Dialog;
    goto :goto_0

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 805
    :cond_1
    return-void
.end method

.method public imsDisableDone(I)V
    .locals 4
    .param p1, "type"    # I

    .line 539
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 540
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 543
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe3

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 546
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 550
    :cond_0
    return-void
.end method

.method public imsDisableStart(I)V
    .locals 4
    .param p1, "type"    # I

    .line 583
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 584
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 587
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe5

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 590
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 594
    :cond_0
    return-void
.end method

.method public imsEnableDone(I)V
    .locals 4
    .param p1, "type"    # I

    .line 517
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 518
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 521
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 524
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 528
    :cond_0
    return-void
.end method

.method public imsEnableStart(I)V
    .locals 4
    .param p1, "type"    # I

    .line 561
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 562
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 565
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe4

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 568
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 572
    :cond_0
    return-void
.end method

.method public imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "pType"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 471
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 472
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 475
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    const/16 v3, 0xbe0

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 479
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 481
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 483
    :cond_0
    return-void
.end method

.method public imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "iid"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;

    .line 706
    return-void
.end method

.method public imsRedialEmergencyIndication(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 919
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 921
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 924
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ImsRILConstants.RIL_UNSOL_REDIAL_EMERGENCY_INDICATION, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 928
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 932
    :cond_0
    return-void
.end method

.method public imsRegFlagInd(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "flag"    # I

    .line 1267
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1269
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1272
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc3b

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1274
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegFlagIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1275
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegFlagIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1276
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1278
    :cond_0
    return-void
.end method

.method public imsRegInfoInd(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1143
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1148
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "imsRegInfoInd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1151
    .local v2, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    .end local v2    # "i":Ljava/lang/Integer;
    goto :goto_0

    .line 1154
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1156
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1159
    .end local v0    # "b":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEiregIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEiregIndRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1163
    :cond_1
    return-void
.end method

.method public imsRegStatusReport(ILvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "report"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;

    .line 1127
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1129
    new-instance v0, Lcom/mediatek/ims/ImsRegInfo;

    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;->report_type:I

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;->account_id:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;->expire_time:I

    iget v5, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;->error_code:I

    iget-object v6, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;->uri:Ljava/lang/String;

    iget-object v7, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/ImsRegStatusInfo;->error_msg:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/ims/ImsRegInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 1133
    .local v0, "info":Lcom/mediatek/ims/ImsRegInfo;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsRegInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 1136
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegStatusIndRistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegStatusIndRistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1140
    :cond_0
    return-void
.end method

.method public imsRegistrationInfo(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "capability"    # I

    .line 496
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 497
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 499
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe1

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 502
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 504
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 506
    :cond_0
    return-void
.end method

.method public imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "pdnId"    # Ljava/lang/String;
    .param p3, "networkId"    # Ljava/lang/String;
    .param p4, "timer"    # Ljava/lang/String;
    .param p5, "sendPktLost"    # Ljava/lang/String;
    .param p6, "recvPktLost"    # Ljava/lang/String;
    .param p7, "jitter"    # Ljava/lang/String;
    .param p8, "delay"    # Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 444
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    const/4 v1, 0x6

    aput-object p8, v0, v1

    .line 447
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbde

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 450
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 452
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 454
    :cond_0
    return-void
.end method

.method public imsSupportEcc(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "supportLteEcc"    # I

    .line 688
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 690
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 693
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ImsRILConstants.RIL_UNSOL_IMS_ECC_SUPPORT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 697
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 701
    :cond_0
    return-void
.end method

.method public incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "inCallNotify"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;

    .line 382
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 383
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 384
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->callId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 385
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->number:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 386
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->type:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 387
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->callMode:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 388
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->seqNo:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 389
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->redirectNumber:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 390
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->toNumber:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 393
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    const/16 v3, 0xbc7

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 397
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 399
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 401
    :cond_0
    return-void
.end method

.method public lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "pType"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;

    .line 771
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 772
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 773
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 776
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 777
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 776
    const/16 v3, 0xc12

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 780
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 782
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 784
    :cond_0
    return-void
.end method

.method public newSmsEx(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 889
    .local p2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 891
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 893
    .local v0, "ret":[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 895
    .local v1, "pduArray":[B
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xc29

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 898
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNewSmsRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_0

    .line 899
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNewSmsRegistrant:Landroid/os/Registrant;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 901
    :cond_0
    return-void
.end method

.method public newSmsStatusReportEx(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 873
    .local p2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 875
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 877
    .local v0, "ret":[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 879
    .local v1, "pduArray":[B
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xc28

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 882
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_0

    .line 883
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSmsStatusRegistrant:Landroid/os/Registrant;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 885
    :cond_0
    return-void
.end method

.method public noEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 57
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 59
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc2d

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 64
    :cond_0
    return-void
.end method

.method public onMDInternetUsageInd(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1240
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1244
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "onMDInternetUsage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1247
    .local v2, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    .end local v2    # "i":Ljava/lang/Integer;
    goto :goto_0

    .line 1250
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1252
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1254
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMDInternetUsageRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 1255
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMDInternetUsageRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1258
    :cond_1
    return-void
.end method

.method public onSsacStatus(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1166
    .local p2, "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1171
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "onSsacStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1174
    .local v2, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    .end local v2    # "i":Ljava/lang/Integer;
    goto :goto_0

    .line 1177
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1179
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1182
    .end local v0    # "b":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSsacIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSsacIndRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1186
    :cond_1
    return-void
.end method

.method public onUssi(IILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "ussdModeType"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 254
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 255
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 258
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdc

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 260
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mUSSIRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mUSSIRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 264
    :cond_0
    return-void
.end method

.method public onVolteSubscription(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "status"    # I

    .line 179
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 181
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 184
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc26

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 187
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "broadcastFlag"    # Ljava/lang/String;
    .param p4, "xuiInfo"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 157
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 161
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 162
    const-string v2, "IMS_RILA"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 161
    const/16 v3, 0xbdf

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 165
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mXuiRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mXuiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected riljLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1085
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1086
    return-void
.end method

.method public rttCapabilityIndication(IIIIII)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "callid"    # I
    .param p3, "localCapability"    # I
    .param p4, "remoteCapability"    # I
    .param p5, "localStatus"    # I
    .param p6, "remoteStatus"    # I

    .line 992
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 994
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    const/4 v1, 0x3

    aput p5, v0, v1

    const/4 v1, 0x4

    aput p6, v0, v1

    .line 997
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc30

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1000
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1004
    :cond_0
    return-void
.end method

.method public rttModifyRequestReceive(III)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "callid"    # I
    .param p3, "rttType"    # I

    .line 974
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 976
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 979
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc31

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 982
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttModifyRequestReceiveRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttModifyRequestReceiveRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 986
    :cond_0
    return-void
.end method

.method public rttModifyResponse(III)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "callid"    # I
    .param p3, "result"    # I

    .line 937
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 939
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 942
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc2e

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 945
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttModifyResponseRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttModifyResponseRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 949
    :cond_0
    return-void
.end method

.method public rttTextReceive(IIILjava/lang/String;)V
    .locals 6
    .param p1, "indicationType"    # I
    .param p2, "callid"    # I
    .param p3, "length"    # I
    .param p4, "text"    # Ljava/lang/String;

    .line 954
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 956
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "strCallId":Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, "strLength":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    .line 962
    .local v2, "ret":[Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v4, 0xc2f

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 965
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttTextReceiveRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 966
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttTextReceiveRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 969
    :cond_0
    return-void
.end method

.method public sendVopsIndication(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "vops"    # I

    .line 1095
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1098
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsRILConstants.RIL_UNSOL_VOPS_INDICATION, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1102
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVopsStatusIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVopsStatusIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1105
    :cond_0
    return-void
.end method

.method public sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/String;
    .param p4, "sipMsgType"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "responseCode"    # Ljava/lang/String;
    .param p7, "reasonText"    # Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 284
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    .line 287
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbd9

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 290
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 292
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 294
    :cond_0
    return-void
.end method

.method public sipHeaderReport(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1064
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1066
    const/4 v0, 0x0

    .line 1067
    .local v0, "sipHeaderInfo":[Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1070
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 1074
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc34

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1077
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsSipHeaderRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 1078
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsSipHeaderRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1081
    :cond_1
    return-void

    .line 1068
    :cond_2
    :goto_0
    return-void
.end method

.method public sipRegInfoInd(IIILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "account_id"    # I
    .param p3, "response_code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1110
    .local p4, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1112
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "sipRegInfoInd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1115
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1118
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1119
    return-void
.end method

.method public speechCodecInfoIndication(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "info"    # I

    .line 710
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 711
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 714
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ImsRILConstants.RIL_UNSOL_SPEECH_CODEC_INFO, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 718
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 721
    :cond_0
    return-void
.end method

.method public suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/hardware/radio/V1_0/SuppSvcNotification;

    .line 195
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 197
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 198
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iget-boolean v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->isMT:Z

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 199
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->code:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 200
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->index:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 201
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->type:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 202
    iget-object v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 208
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 212
    :cond_0
    return-void
.end method

.method public videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "localVideoCap"    # Ljava/lang/String;
    .param p4, "remoteVideoCap"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 83
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdb

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 89
    :cond_0
    return-void
.end method

.method public videoRingtoneEventInd(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1218
    .local p2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1221
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc3a

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 1224
    const/4 v0, 0x0

    .line 1225
    .local v0, "eventInfo":[Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1229
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 1232
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoRingtoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 1233
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoRingtoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1234
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1236
    :cond_1
    return-void

    .line 1226
    :cond_2
    :goto_0
    return-void
.end method

.method public volteSetting(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "isEnable"    # Z

    .line 130
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    aput v2, v0, v1

    .line 134
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe7

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingValue:Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 140
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 142
    :cond_0
    return-void
.end method
