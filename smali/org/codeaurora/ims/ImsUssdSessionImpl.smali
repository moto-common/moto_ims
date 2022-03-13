.class public Lorg/codeaurora/ims/ImsUssdSessionImpl;
.super Lorg/codeaurora/ims/QImsSessionBase;
.source "ImsUssdSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;
    }
.end annotation


# static fields
.field private static final EVENT_CANCEL_USSD:I = 0x2

.field private static final EVENT_CLOSE_USSD_SESSION:I = 0x4

.field private static final EVENT_USSD_MESSAGE_RECEIVED:I = 0x3

.field private static final EVENT_USSD_SENT_RESPONSE:I = 0x1


# instance fields
.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mHandler:Landroid/os/Handler;

.field private mUssdInfo:Lorg/codeaurora/ims/UssdInfo;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/UssdInfo;)V
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p4, "phoneId"    # I
    .param p5, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p6, "info"    # Lorg/codeaurora/ims/UssdInfo;

    .line 51
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/codeaurora/ims/QImsSessionBase;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;)V

    .line 44
    new-instance v0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    .line 46
    iput-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 52
    iput-object p6, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    .line 53
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 54
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForUssdInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method private OnUssdSentResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 164
    if-nez p1, :cond_0

    .line 165
    const-string v0, "USSD: response result is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    return-void

    .line 168
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 169
    const-string v0, "USSD: ongoing USSD session"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 171
    iput v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 172
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x162

    const/4 v3, 0x0

    const-string v4, "USSD terminated"

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 176
    :cond_1
    return-void

    .line 178
    :cond_2
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USSD: response exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iput v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 181
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 182
    .local v0, "sipErrorInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 183
    .end local v0    # "sipErrorInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 184
    :cond_3
    const-string v0, "USSD: response received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iput v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 186
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 188
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 37
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->doClose()V

    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 37
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->OnUssdSentResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 37
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->onCancelUssd(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 37
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->onUssdMessageReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method private static convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 131
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private doClose()V
    .locals 3

    .line 238
    const-string v0, "doClose!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->dispose()V

    .line 241
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForUssdInfo(Landroid/os/Handler;)V

    .line 245
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    .line 247
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->notifySessionClosed()V

    .line 248
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 252
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mPhoneId:I

    .line 254
    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 255
    return-void

    .line 250
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onCancelUssd(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 191
    if-nez p1, :cond_0

    .line 192
    const-string v0, "USSD: response result is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    return-void

    .line 195
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel USSD: response exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    return-void

    .line 199
    :cond_1
    const-string v0, "Cancel USSD: response received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    const/16 v0, 0x8

    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 201
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x1f5

    const/4 v3, 0x0

    const-string v4, "USSD Cancelled"

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 204
    return-void
.end method

.method private onUssdMessageReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 207
    if-nez p1, :cond_0

    .line 208
    const-string v0, "USSD: message result is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    return-void

    .line 211
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USSD: message exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    if-ne v0, v2, :cond_5

    .line 216
    :cond_1
    const/16 v0, 0x8

    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 217
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x162

    const/4 v3, 0x0

    const-string v4, "USSD Network Error"

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 221
    :cond_2
    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    if-ne v0, v2, :cond_5

    .line 223
    :cond_3
    const-string v0, "USSD: message received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/UssdInfo;

    .line 225
    .local v0, "info":Lorg/codeaurora/ims/UssdInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getType()I

    move-result v1

    .line 226
    .local v1, "ussdMode":I
    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "ussdMsg":Ljava/lang/String;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v4, v1, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 229
    if-ne v1, v2, :cond_4

    .line 230
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 231
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USSD: session closed mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->doClose()V

    .line 235
    .end local v0    # "info":Lorg/codeaurora/ims/UssdInfo;
    .end local v1    # "ussdMode":I
    .end local v3    # "ussdMsg":Ljava/lang/String;
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 87
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 91
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    invoke-virtual {v1}, Lorg/codeaurora/ims/UssdInfo;->getType()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    .line 92
    invoke-virtual {v2}, Lorg/codeaurora/ims/UssdInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 94
    :cond_1
    return-void
.end method

.method public close()V
    .locals 2

    .line 112
    const-string v0, "Close!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    :cond_0
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    .line 127
    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendUssd(Ljava/lang/String;Landroid/os/Message;)V

    .line 128
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 66
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isUssdSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string v0, "start: USSD is not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x83

    const/4 v3, 0x0

    const-string v4, "USSD not supported"

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 73
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 76
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendUssd(Ljava/lang/String;Landroid/os/Message;)V

    .line 77
    return-void
.end method

.method public terminate(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 102
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->cancelPendingUssd(Landroid/os/Message;)V

    .line 105
    return-void
.end method
