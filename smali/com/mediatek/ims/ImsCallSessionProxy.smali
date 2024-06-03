.class public Lcom/mediatek/ims/ImsCallSessionProxy;
.super Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;,
        Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;,
        Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;,
        Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;,
        Lcom/mediatek/ims/ImsCallSessionProxy$User;,
        Lcom/mediatek/ims/ImsCallSessionProxy$ImsCallLogLevel;,
        Lcom/mediatek/ims/ImsCallSessionProxy$ImsCallProfileEx;,
        Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;
    }
.end annotation


# static fields
.field private static final AMR_NB:I = 0x6

.field private static final AMR_WB:I = 0x7

.field static final ATT_WIFI_CONGESTED:Ljava/lang/String; = "Call is dropped due to Wi-Fi backhaul is congested"

.field private static final CACHED_TERMINATE_REASON_DELAY:I = 0x64

.field public static final CALL_INFO_MSG_TYPE_ACTIVE:I = 0x84

.field public static final CALL_INFO_MSG_TYPE_ALERT:I = 0x2

.field public static final CALL_INFO_MSG_TYPE_CONNECTED:I = 0x6

.field public static final CALL_INFO_MSG_TYPE_DISCONNECTED:I = 0x85

.field public static final CALL_INFO_MSG_TYPE_HELD:I = 0x83

.field public static final CALL_INFO_MSG_TYPE_MO_CALL_ID_ASSIGN:I = 0x82

.field public static final CALL_INFO_MSG_TYPE_REMOTE_HOLD:I = 0x87

.field public static final CALL_INFO_MSG_TYPE_REMOTE_RESUME:I = 0x88

.field public static final CALL_INFO_MSG_TYPE_SETUP:I = 0x0

.field private static final DBG:Z = true

.field private static final DELAY_AUTO_UPGRADE_TO_RTT_MS:I = 0xc8

.field private static final DELAY_BEFORE_SENDING_MS:I = 0xea60

.field private static final EVENT_ACCEPT_RESULT:I = 0xca

.field private static final EVENT_ADD_CONFERENCE_RESULT:I = 0xce

.field private static final EVENT_AUTO_UPGRADE_TO_RTT:I = 0x1f5

.field private static final EVENT_CACHED_TERMINATE_REASON:I = 0xe6

.field private static final EVENT_CALL_ADDITIONAL_INFO:I = 0xe5

.field private static final EVENT_CALL_INFO_INDICATION:I = 0x66

.field private static final EVENT_CALL_MODE_CHANGE_INDICATION:I = 0x6a

.field private static final EVENT_CALL_RAT_INDICATION:I = 0xe4

.field private static final EVENT_CANCEL_USSI_COMPLETE:I = 0xd6

.field private static final EVENT_DIAL_CONFERENCE_RESULT:I = 0xd1

.field private static final EVENT_DIAL_RESULT:I = 0xc9

.field private static final EVENT_DTMF_DONE:I = 0xd4

.field private static final EVENT_ECONF_RESULT_INDICATION:I = 0x68

.field private static final EVENT_ECT_RESULT:I = 0xd7

.field private static final EVENT_ECT_RESULT_INDICATION:I = 0x6d

.field private static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x69

.field private static final EVENT_HOLD_RESULT:I = 0xcb

.field private static final EVENT_IMS_CONFERENCE_INDICATION:I = 0x6f

.field private static final EVENT_IMS_REGISTRATION_INFO:I = 0xea

.field private static final EVENT_MERGE_RESULT:I = 0xcd

.field private static final EVENT_ON_SUPP_SERVICE_NOTIFICATION:I = 0xe2

.field private static final EVENT_POLL_CALLS_RESULT:I = 0x65

.field private static final EVENT_POLL_DATAUSAGE:I = 0x1f4

.field private static final EVENT_PULL_CALL_RESULT:I = 0xd8

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0xd9

.field private static final EVENT_REDIAL_ECC_INDICATION:I = 0xe0

.field private static final EVENT_REMOVE_CONFERENCE_RESULT:I = 0xcf

.field private static final EVENT_RESUME_RESULT:I = 0xcc

.field private static final EVENT_RETRIEVE_MERGE_FAIL_RESULT:I = 0xd3

.field private static final EVENT_RTT_AUDIO_INDICATION:I = 0xe1

.field private static final EVENT_RTT_CAPABILITY_INDICATION:I = 0x6e

.field private static final EVENT_RTT_MODIFY_REQUEST_RECEIVE:I = 0xdc

.field private static final EVENT_RTT_MODIFY_RESPONSE:I = 0xdb

.field private static final EVENT_RTT_TEXT_RECEIVE_INDICATION:I = 0xda

.field private static final EVENT_SEND_USSI_COMPLETE:I = 0xd5

.field private static final EVENT_SIP_CODE_INDICATION:I = 0xd0

.field private static final EVENT_SIP_HEADER_INFO:I = 0xe3

.field private static final EVENT_SPEECH_CODEC_INFO:I = 0xdf

.field private static final EVENT_SWAP_BEFORE_MERGE_RESULT:I = 0xd2

.field private static final EVENT_VIDEO_CAPABILITY_INDICATION:I = 0x6b

.field private static final EVENT_VIDEO_RINGTONE_CACHED_INFO:I = 0xe9

.field private static final EVENT_VIDEO_RINGTONE_INFO:I = 0xe8

.field private static final EVENT_VIDEO_RINGTONE_REQUEST_RESULT:I = 0xe7

.field private static final EVRC:I = 0x2

.field private static final EVRC_B:I = 0x3

.field private static final EVRC_NW:I = 0x5

.field private static final EVRC_WB:I = 0x4

.field private static final EVS_AWB:I = 0x21

.field private static final EVS_FB:I = 0x20

.field private static final EVS_NB:I = 0x17

.field private static final EVS_SW:I = 0x19

.field private static final EVS_WB:I = 0x18

.field public static final EXTRA_CALL_INFO_MESSAGE_TYPE:Ljava/lang/String; = "mediatek:callInfoMessageType"

.field public static final EXTRA_CALL_TYPE:Ljava/lang/String; = "mediatek:callType"

.field public static final EXTRA_EMERGENCY_CALL:Ljava/lang/String; = "mediatek:emergencyCall"

.field public static final EXTRA_INCOMING_CALL:Ljava/lang/String; = "mediatek:incomingCall"

.field public static final EXTRA_RAT_TYPE:Ljava/lang/String; = "mediatek:ratType"

.field public static final EXTRA_WAS_VIDEO_CALL:Ljava/lang/String; = "mediatek:wasVideoCall"

.field private static final GET_CACHED_VIDEO_RINGTONE_INFO:I = 0x64

.field private static final GSM_EFR:I = 0x8

.field private static final GSM_FR:I = 0x9

.field private static final GSM_HR:I = 0xa

.field private static final HANGUP_CAUSE_FORWARD:I = 0x3

.field private static final HANGUP_CAUSE_LOW_BATTERY:I = 0x2

.field private static final HANGUP_CAUSE_NONE:I = 0x0

.field private static final HANGUP_CAUSE_NO_COVERAGE:I = 0x1

.field private static final HANGUP_CAUSE_SPECIAL_HANGUP:I = 0x4

.field private static final HEADER_CALL_ID:I = 0xd

.field private static HEX:Ljava/lang/String; = null

.field private static final IMPORTANT_STRING:Ljava/lang/String; = "urgent"

.field private static final IMS_CALL_MODE_CLIENT_API:I = 0x2

.field private static final IMS_CALL_MODE_NORMAL:I = 0x1

.field private static final IMS_CALL_TYPE_LTE:I = 0x1

.field private static final IMS_CALL_TYPE_NR:I = 0x3

.field private static final IMS_CALL_TYPE_UNKNOWN:I = 0x0

.field private static final IMS_CALL_TYPE_WIFI:I = 0x2

.field private static final IMS_VIDEO_CALL:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE_CALL:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL_ID:Ljava/lang/String; = "65535"

.field private static final INVALID_CALL_MODE:I = 0xff

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionProxy"

.field private static final MAX_WRONG_ECPI_COUNT:I = 0x5

.field private static final MT_CALL_ENRICHED_CALL:I = 0x66

.field private static final MT_CALL_IMS_GWSD:I = 0x65

.field private static final NA_PRIOR_CLIR_PREFIX:Ljava/lang/String; = "*82"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field static final PURPOSE_ICON:Ljava/lang/String; = "purpose=icon"

.field private static final QCELP13K:I = 0x1

.field private static final REMOTE_STATE_HOLD:I = 0x1

.field private static final REMOTE_STATE_NONE:I = 0x0

.field private static final REMOTE_STATE_RESUME:I = 0x2

.field static final RTP_INACTIVITY:Ljava/lang/String; = "RTP inactivity"

.field private static final RTT_AUDIO_SPEECH:I = 0x0

.field private static final SENLOG:Z

.field private static final SIP_INVITE_HEADER_CALL_INFO:Ljava/lang/String; = "Call-Info"

.field private static final SIP_INVITE_HEADER_ORGANIZATION:Ljava/lang/String; = "Organization"

.field private static final SIP_INVITE_HEADER_PRIORITY:Ljava/lang/String; = "Priority"

.field private static final SIP_INVITE_HEADER_SUBJECT:Ljava/lang/String; = "Subject"

.field private static final STANDARD_STRING:Ljava/lang/String; = "normal"

.field public static final SUB_TYPE_HEADER:I = 0x1

.field public static final SUB_TYPE_LOCATION:I = 0x2

.field private static final TAG_DOUBLE_QUOTE:Ljava/lang/String; = "<ascii_34>"

.field private static final TELDBG:Z

.field private static final USSI_REQUEST:I = 0x1

.field private static final USSI_RESPONSE:I = 0x2

.field private static final VDBG:Z = false

.field private static final VIDEO_RINGTONE_BUTTON_SHOW_EVENT:I = 0x64

.field private static final VIDEO_RINGTONE_CLICK_BUTTON_EVENT:I = 0x1

.field private static final VIDEO_RINGTONE_CLICK_COORDINATOR_EVENT:I = 0x2

.field private static final VIDEO_STATE_PAUSE:I = 0x0

.field private static final VIDEO_STATE_RECV_ONLY:I = 0x2

.field private static final VIDEO_STATE_SEND_ONLY:I = 0x1

.field private static final VIDEO_STATE_SEND_RECV:I = 0x3

.field private static final VT_PROVIDER_ID:Ljava/lang/String; = "video_provider_id"

.field private static final WFC_GET_CAUSE_FAILED:I = -0x1

.field static final WIFI_DEGRADED:Ljava/lang/String; = "Call is dropped due to Wi-Fi signal is degraded"

.field static final WIFI_SIGNAL_LOST:Ljava/lang/String; = "Call is dropped as WiFi is lost"

.field private static mStartDatausagePolling:Z


# instance fields
.field private mActiveParticipantsNum:I

.field private mBadRssiThreshould:I

.field private mCachedCauseText:Ljava/lang/String;

.field private mCachedSuppServiceInfo:Landroid/os/AsyncResult;

.field private mCachedTerminateReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private mCachedUserInfo:Landroid/os/AsyncResult;

.field private mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

.field private mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

.field private mCallId:Ljava/lang/String;

.field private mCallNumber:Ljava/lang/String;

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallRat:I

.field private mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

.field private mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

.field private mContext:Landroid/content/Context;

.field private mDtmfMsg:Landroid/os/Message;

.field private mDtmfTarget:Landroid/os/Messenger;

.field private mEconfCount:I

.field private mEctMsg:Landroid/os/Message;

.field private mEctTarget:Landroid/os/Messenger;

.field private mEnableSendRttBom:Z

.field private mFwkPause:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHangupCount:I

.field private mHangupHostDuringMerge:Z

.field private mHasPendingDisconnect:Z

.field private mHasPendingMo:Z

.field private mHasTriedSelfActivation:Z

.field private mHeaderCallId:Ljava/lang/String;

.field private mHeaderData:Ljava/lang/String;

.field private mImsCallMode:I

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

.field private mIsAddRemoveParticipantsCommandOK:Z

.field private mIsConferenceHost:Z

.field private mIsEmergencyCall:Z

.field private mIsHideHoldDuringECT:Z

.field private mIsHideHoldEventDuringMerging:Z

.field private mIsIncomingCall:Z

.field private mIsIncomingForRtt:Z

.field private mIsMerging:Z

.field private mIsNeedCacheTerminationEarly:Z

.field private mIsOnTerminated:Z

.field private mIsOneKeyConf:Z

.field private mIsRetrievingMergeFail:Z

.field private mIsRingingRedirect:Z

.field private mIsRttEnabledForCallSession:Z

.field private mIsWaitingClose:Z

.field private mLastSIPReasonHeader:Ljava/lang/String;

.field private mLastSipCode:I

.field private mLastSipMethod:I

.field private mListener:Landroid/telephony/ims/ImsCallSessionListener;

.field private mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mLocalTerminateReason:I

.field private mLock:Ljava/lang/Object;

.field private mMTSetup:Z

.field private mMergeCallId:Ljava/lang/String;

.field private mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

.field private mMerged:Z

.field private mMergedCallId:Ljava/lang/String;

.field private mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

.field private mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

.field public mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

.field private mNeedHideResumeEventDuringMerging:Z

.field private mNeedUpgradeToRTT:Z

.field private mNormalCallsMerge:Z

.field private mOneKeyparticipants:[Ljava/lang/String;

.field private mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

.field private mOverallPause:Z

.field private mParticipants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mParticipantsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDisconnectReason:I

.field private mPendingParticipantInfo:[Ljava/lang/String;

.field private mPendingParticipantInfoIndex:I

.field private mPendingParticipantStatistics:I

.field private mPhoneId:I

.field private mPreLocalVideoCapability:I

.field private mPreRemoteVideoCapability:I

.field private mPreWifiPdnOOSState:I

.field private mRadioUnavailable:Z

.field private mRatType:I

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRemoteState:I

.field private mRetryRemoveUri:Ljava/lang/String;

.field private mRttTextEncoder:Lcom/mediatek/ims/RttTextEncoder;

.field protected mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

.field private final mServiceHandler:Landroid/os/Handler;

.field private mShouldUpdateAddressByEcpi:Z

.field private mShouldUpdateAddressByPau:Z

.field private mShouldUpdateAddressBySipField:Z

.field private mShouldUpdateDisplayNameByPau:Z

.field private mSipSessionProgress:Z

.field private mState:I

.field private mThreeWayMergeSucceeded:Z

.field private mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

.field private mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

.field private mVideoState:I

.field private mVtProviderListener:Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

.field private mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

.field private mWifiPdnOOSState:I

.field mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

.field private mWrongEcpiCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 155
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->SENLOG:Z

    .line 156
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/mediatek/ims/ImsCallSessionProxy;->TELDBG:Z

    .line 442
    sput-boolean v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mStartDatausagePolling:Z

    .line 1446
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/mediatek/ims/ImsCallSessionProxy;->HEX:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "phoneId"    # I

    .line 733
    move-object v9, p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 735
    const-string v0, "ImsCallSessionProxy() : ImsCallSessionProxy MO constructor"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 737
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingCall:Z

    .line 738
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "callId"    # Ljava/lang/String;
    .param p8, "phoneId"    # I

    .line 587
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {p0 .. p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 160
    const/4 v14, 0x0

    iput v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 168
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 171
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 172
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    .line 173
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsWaitingClose:Z

    .line 174
    iput v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWrongEcpiCount:I

    .line 177
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    .line 179
    iput v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 180
    iput v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 181
    iput v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mActiveParticipantsNum:I

    .line 182
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 183
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedHideResumeEventDuringMerging:Z

    .line 184
    const-string v0, ""

    iput-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 185
    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 186
    iput-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 187
    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 189
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    .line 191
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mThreeWayMergeSucceeded:Z

    .line 192
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mMerged:Z

    .line 194
    iput v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    .line 197
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mRadioUnavailable:Z

    .line 198
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRetrievingMergeFail:Z

    .line 201
    const/4 v15, 0x0

    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mRetryRemoveUri:Ljava/lang/String;

    .line 203
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupHostDuringMerge:Z

    .line 208
    iput v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    .line 209
    iput v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    .line 214
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v1

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 228
    iput v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalTerminateReason:I

    .line 231
    iput v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    .line 233
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOneKeyConf:Z

    .line 235
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    .line 241
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->IDLE:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 243
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    .line 244
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfTarget:Landroid/os/Messenger;

    .line 250
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    .line 253
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctMsg:Landroid/os/Message;

    .line 254
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctTarget:Landroid/os/Messenger;

    .line 256
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByPau:Z

    .line 258
    iput-boolean v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateDisplayNameByPau:Z

    .line 259
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByEcpi:Z

    .line 260
    iput-boolean v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressBySipField:Z

    .line 264
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mRttTextEncoder:Lcom/mediatek/ims/RttTextEncoder;

    .line 266
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    .line 268
    const/16 v2, -0x5a

    iput v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mBadRssiThreshould:I

    .line 270
    const/4 v7, 0x3

    iput v7, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    .line 277
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mOverallPause:Z

    .line 278
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mFwkPause:Z

    .line 285
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasTriedSelfActivation:Z

    .line 287
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    .line 291
    iput-boolean v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingCall:Z

    .line 292
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    .line 293
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsConferenceHost:Z

    .line 296
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    .line 299
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingForRtt:Z

    .line 302
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    .line 304
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedUserInfo:Landroid/os/AsyncResult;

    .line 305
    iput-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderData:Ljava/lang/String;

    .line 307
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedSuppServiceInfo:Landroid/os/AsyncResult;

    .line 308
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mLock:Ljava/lang/Object;

    .line 311
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

    .line 314
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mMTSetup:Z

    .line 315
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedTerminateReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 319
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    .line 334
    iput v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteState:I

    .line 348
    iput v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsCallMode:I

    .line 349
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRingingRedirect:Z

    .line 448
    iput-boolean v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedUpgradeToRTT:Z

    .line 493
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedCauseText:Ljava/lang/String;

    .line 510
    const/4 v0, -0x1

    iput v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreWifiPdnOOSState:I

    .line 511
    iput v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWifiPdnOOSState:I

    .line 540
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipantsList:Ljava/util/ArrayList;

    .line 571
    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

    invoke-direct {v0, v8, v15}, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$1;)V

    iput-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVtProviderListener:Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

    .line 589
    iput v13, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 590
    invoke-static/range {p8 .. p8}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iput-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 591
    move-object/from16 v6, p5

    iput-object v6, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    .line 592
    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    invoke-virtual/range {p5 .. p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Looper;)V

    iput-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    .line 593
    move-object/from16 v5, p1

    iput-object v5, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    .line 594
    iput-object v9, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 595
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    iget v2, v9, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iget v3, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 596
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    iget v2, v9, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iget v3, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 597
    iget v1, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreLocalVideoCapability:I

    .line 598
    iget v1, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreRemoteVideoCapability:I

    .line 600
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP12:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    const-string v1, "ImsCallSessionProxy"

    const-string v2, "VzW: set default as no HD icon"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v7, v1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 606
    :cond_0
    move-object/from16 v4, p3

    iput-object v4, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 607
    iput-object v10, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 608
    iput-object v11, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 609
    iput-object v12, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsCallSessionProxy() : RILAdapter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "imsService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {v8, v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 616
    new-instance v1, Lcom/mediatek/ims/RttTextEncoder;

    invoke-direct {v1}, Lcom/mediatek/ims/RttTextEncoder;-><init>()V

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mRttTextEncoder:Lcom/mediatek/ims/RttTextEncoder;

    .line 618
    nop

    .line 619
    invoke-static/range {p1 .. p1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v16

    .line 620
    .local v16, "opImsServiceCustomizationFactory":Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeOpImsCallSessionProxy()Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v1

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    .line 622
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0x66

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 624
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0x68

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 625
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xd0

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 626
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0x6a

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallModeChangeIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 628
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0x6b

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForVideoCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 630
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0x6d

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForEctResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 631
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0x6f

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsConfInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 633
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xd9

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 634
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xdf

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 635
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xe0

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsRedialEccInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 636
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xe3

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForSipHeaderInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 637
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xe4

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallRatIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 638
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xe5

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 639
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xea

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForDetailImsRegistrationInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 642
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v14, v3

    move-object/from16 v3, p5

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsExtSelfActivator(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    move-result-object v1

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    .line 646
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0x6e

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForRttCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 648
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xdc

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForRttModifyRequestReceive(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 650
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xda

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForRttTextReceive(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 651
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xdb

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForRttModifyResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 652
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xe1

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForRttAudioIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 653
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xe8

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForVideoRingtoneInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 655
    const-string v1, "persist.vendor.vilte_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 657
    const-string v1, "ImsCallSessionProxy() : start new VTProvider"

    invoke-direct {v8, v1, v14}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 659
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 661
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsVtProvider()Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v1

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 662
    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v3, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget v4, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->bind(Lcom/mediatek/ims/internal/ImsVTProvider;II)V

    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsVtProvider()Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v1

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 667
    :goto_0
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVtProviderListener:Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->addVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V

    .line 669
    const-string v1, "ImsCallSessionProxy() : end new VTProvider"

    invoke-direct {v8, v1, v14}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 672
    :cond_2
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/16 v2, 0xe2

    invoke-interface {v1, v0, v2, v15}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 676
    const-string v0, "wfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 677
    .local v0, "b":Landroid/os/IBinder;
    const/4 v1, 0x5

    if-eqz v0, :cond_3

    .line 678
    invoke-static {v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v2

    iput-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    move-object v2, v0

    goto :goto_2

    .line 680
    :cond_3
    const-string v2, "mwis"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 682
    .end local v0    # "b":Landroid/os/IBinder;
    .local v2, "b":Landroid/os/IBinder;
    if-eqz v2, :cond_5

    .line 683
    :try_start_0
    invoke-static {v2}, Lcom/mediatek/wfo/IMwiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IMwiService;

    move-result-object v0

    .line 684
    .local v0, "iMwiService":Lcom/mediatek/wfo/IMwiService;
    if-eqz v0, :cond_4

    .line 685
    invoke-interface {v0}, Lcom/mediatek/wfo/IMwiService;->getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    iput-object v3, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 687
    .end local v0    # "iMwiService":Lcom/mediatek/wfo/IMwiService;
    :cond_4
    goto :goto_1

    .line 688
    :cond_5
    const-string v0, "ImsCallSessionProxy() : No MwiService exist"

    invoke-direct {v8, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_1
    goto :goto_2

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsCallSessionProxy() : can\'t get MwiService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 694
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    iget-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v0, :cond_8

    .line 696
    :try_start_1
    iget-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    if-nez v0, :cond_6

    .line 697
    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    invoke-direct {v0, v8, v15}, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$1;)V

    iput-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    .line 699
    :cond_6
    iget-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    iget-object v3, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    invoke-interface {v0, v3}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V

    .line 702
    if-eqz v12, :cond_7

    .line 703
    const/4 v3, 0x3

    invoke-direct {v8, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallStateForWifiOffload(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 707
    :cond_7
    goto :goto_3

    .line 705
    :catch_1
    move-exception v0

    .line 706
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy() : RemoteException ImsCallSessionProxy()"

    invoke-direct {v8, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 710
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    :goto_3
    iget-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 711
    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingCall:Z

    goto :goto_4

    .line 710
    :cond_9
    const/4 v1, 0x0

    .line 715
    :goto_4
    iget v0, v9, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    if-eq v0, v14, :cond_a

    .line 716
    iget-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v3, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsService;->getRatType(I)I

    move-result v0

    invoke-direct {v8, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateRat(II)Z

    .line 719
    :cond_a
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 720
    iput-object v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 721
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateShouldUseSipField()V

    .line 727
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;ILcom/mediatek/ims/MtkImsCallSessionProxy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "callId"    # Ljava/lang/String;
    .param p8, "phoneId"    # I
    .param p9, "mtkImsCallSessionProxy"    # Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 580
    invoke-direct/range {p0 .. p8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 581
    iput-object p9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 582
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleSipHeaderInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleCallRatIndication(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleCallAdditionalInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleImsRegistrationInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleCachedTerminateReason(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleVideoRingtoneInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCachedVideoRingtoneButtonInfo()V

    return-void
.end method

.method static synthetic access$10700(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/Message;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleDataUsagePoll(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMerged:Z

    return v0
.end method

.method static synthetic access$10802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMerged:Z

    return p1
.end method

.method static synthetic access$10900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    return v0
.end method

.method static synthetic access$10902(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    return v0
.end method

.method static synthetic access$11002(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 148
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    return p1
.end method

.method static synthetic access$11008(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mThreeWayMergeSucceeded:Z

    return v0
.end method

.method static synthetic access$11102(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mThreeWayMergeSucceeded:Z

    return p1
.end method

.method static synthetic access$11200(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeCompleted()V

    return-void
.end method

.method static synthetic access$11300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isUserPerfromedHangup()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfTarget:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$11502(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/Message;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$11600(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctTarget:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$11602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctTarget:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$11700(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsConferenceHost:Z

    return v0
.end method

.method static synthetic access$11702(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsConferenceHost:Z

    return p1
.end method

.method static synthetic access$11802(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedUserInfo:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$11902(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 148
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mActiveParticipantsNum:I

    return p1
.end method

.method static synthetic access$11908(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mActiveParticipantsNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mActiveParticipantsNum:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipantsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12102(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$12200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByPau:Z

    return v0
.end method

.method static synthetic access$12300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressBySipField:Z

    return v0
.end method

.method static synthetic access$12400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateDisplayNameByPau:Z

    return v0
.end method

.method static synthetic access$12500(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    return v0
.end method

.method static synthetic access$12502(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    return p1
.end method

.method static synthetic access$12600(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->processMtRttWithoutPrecondition(I)V

    return-void
.end method

.method static synthetic access$12700(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->toggleRttAudioIndication()V

    return-void
.end method

.method static synthetic access$12800(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/RttTextEncoder;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRttTextEncoder:Lcom/mediatek/ims/RttTextEncoder;

    return-object v0
.end method

.method static synthetic access$12902(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedUpgradeToRTT:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->detailLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isAllowRttVideoSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$13100(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getRadioTechFromRatType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$13200(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->convertToTelephonyNetworkType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$13300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Lcom/mediatek/ims/SipMessage;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getOpImsReasonInfo(Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRemoteCallDecline(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isAnsweredElsewhere(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->shouldNotifyCallDropByBadWifiQuality()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mFwkPause:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getWifiRssi()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mBadRssiThreshould:I

    return v0
.end method

.method static synthetic access$2300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedCauseText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedCauseText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWifiPdnOOSState:I

    return v0
.end method

.method static synthetic access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreWifiPdnOOSState:I

    return v0
.end method

.method static synthetic access$2602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    return v0
.end method

.method static synthetic access$2802(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 148
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    return p1
.end method

.method static synthetic access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallType(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateVideoDirection()V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->removeRemoteCallVideoCapability()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRetrievingMergeFail:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRetrievingMergeFail:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionUpdated()V

    return-void
.end method

.method static synthetic access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    return-void
.end method

.method static synthetic access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->event2String(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsWaitingClose:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWrongEcpiCount:I

    return v0
.end method

.method static synthetic access$4308(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWrongEcpiCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWrongEcpiCount:I

    return v0
.end method

.method static synthetic access$4400(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendCallEventWithRat(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "x2"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->createConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupHostDuringMerge:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupHostDuringMerge:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminateConferenceSession()V

    return-void
.end method

.method static synthetic access$5000(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByEcpi:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    return v0
.end method

.method static synthetic access$5202(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 148
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    return p1
.end method

.method static synthetic access$5302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMTSetup:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/mediatek/ims/ImsCallSessionProxy;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateRat(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRingingRedirect:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingForRtt:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingForRtt:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateIsIbt([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/mediatek/ims/ImsCallSessionProxy;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateOutgoingVideoRingtone(II)V

    return-void
.end method

.method static synthetic access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyNotificationRingtone(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->onCallSessionActive()V

    return-void
.end method

.method static synthetic access$6400(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallStateForWifiOffload(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->checkAndSendRttBom()V

    return-void
.end method

.method static synthetic access$6600(Lcom/mediatek/ims/ImsCallSessionProxy;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateIncomingVideoRingtone(II)V

    return-void
.end method

.method static synthetic access$6700(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->correctVideoCapabilityForCallState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    return v0
.end method

.method static synthetic access$6902(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->onCallSessionHold()V

    return-void
.end method

.method static synthetic access$7100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedHideResumeEventDuringMerging:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedHideResumeEventDuringMerging:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyRemoteHeld()V

    return-void
.end method

.method static synthetic access$7300(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyRemoteResumed()V

    return-void
.end method

.method static synthetic access$7400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOneKeyConf:Z

    return v0
.end method

.method static synthetic access$7500(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7502(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingDisconnect:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingDisconnect:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingDisconnectReason:I

    return v0
.end method

.method static synthetic access$7800(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logEventResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    return v0
.end method

.method static synthetic access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    return v0
.end method

.method static synthetic access$8002(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    return v0
.end method

.method static synthetic access$8108(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    return v0
.end method

.method static synthetic access$8200(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    return v0
.end method

.method static synthetic access$8300(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRetryRemoveUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8402(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRetryRemoveUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalTerminateReason:I

    return v0
.end method

.method static synthetic access$8600(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleAutoUpgradeToRTT(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->correctRemoteVideoCapabilityForVideoConference()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    return v0
.end method

.method static synthetic access$9000(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/telephony/ims/ImsCallProfile;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9102(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 148
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreLocalVideoCapability:I

    return p1
.end method

.method static synthetic access$9202(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 148
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreRemoteVideoCapability:I

    return p1
.end method

.method static synthetic access$9300(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/Message;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRadioUnavailable:Z

    return p1
.end method

.method static synthetic access$9502(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    return-object p1
.end method

.method static synthetic access$9600(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleSpeechCodecInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleRedialEccIndication(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9902(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedSuppServiceInfo:Landroid/os/AsyncResult;

    return-object p1
.end method

.method private checkAndSendRttBom()V
    .locals 3

    .line 5368
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    .line 5369
    .local v0, "isRttSupport":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndSendRttBom() : isRttSuported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRttEnabledForCallSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEnableSendRttBom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5373
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 5375
    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 5376
    .local v1, "bom":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendRttMessage(Ljava/lang/String;)V

    .line 5377
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    .line 5379
    .end local v1    # "bom":[B
    :cond_0
    return-void

    :array_0
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data
.end method

.method private closeConferenceSession()V
    .locals 2

    .line 4758
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4759
    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->close()V

    .line 4760
    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    goto :goto_0

    .line 4761
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_1

    .line 4762
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 4765
    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 4767
    :cond_1
    :goto_0
    return-void
.end method

.method private convertToTelephonyNetworkType(I)I
    .locals 1
    .param p1, "offloadRatType"    # I

    .line 6295
    const/4 v0, 0x0

    .line 6296
    .local v0, "ans":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 6302
    :pswitch_0
    const/16 v0, 0x12

    goto :goto_0

    .line 6299
    :pswitch_1
    const/16 v0, 0xd

    .line 6300
    nop

    .line 6305
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private correctRemoteVideoCapabilityForVideoConference()V
    .locals 2

    .line 4845
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4846
    const/4 v0, 0x2

    const-string v1, "correctRemoteVideoCapabilityForVideoConference() : Video conference, force set remote as Video Call"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4847
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x4

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4849
    :cond_0
    return-void
.end method

.method private correctVideoCapabilityForCallState()Z
    .locals 8

    .line 4852
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .line 4854
    .local v0, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4855
    return v1

    .line 4857
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4858
    return v1

    .line 4861
    :cond_1
    const/4 v1, 0x0

    .line 4862
    .local v1, "isChanged":Z
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4863
    .local v2, "finalLocalCallType":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4866
    .local v3, "finalRemoteCallType":I
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    const/4 v6, 0x4

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreLocalVideoCapability:I

    if-ne v4, v6, :cond_2

    .line 4868
    const/4 v2, 0x4

    goto :goto_0

    .line 4871
    :cond_2
    const/4 v2, 0x2

    .line 4875
    :goto_0
    iget-boolean v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsRemoteHold:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreRemoteVideoCapability:I

    if-ne v4, v6, :cond_3

    .line 4877
    const/4 v3, 0x4

    goto :goto_1

    .line 4880
    :cond_3
    const/4 v3, 0x2

    .line 4883
    :goto_1
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v4, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v5, 0x2

    const-string v6, " to "

    if-eq v4, v2, :cond_4

    .line 4884
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "correctVideoCapabilityByCallState() : local changed from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v7, v7, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4888
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v2, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4889
    const/4 v1, 0x1

    .line 4892
    :cond_4
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v4, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v4, v3, :cond_5

    .line 4893
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "correctVideoCapabilityByCallState() : Remote changed from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v7, v7, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4897
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v3, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4898
    const/4 v1, 0x1

    .line 4901
    :cond_5
    return v1
.end method

.method private createAospConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 10
    .param p1, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callId"    # Ljava/lang/String;

    .line 4713
    new-instance v9, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v3, 0x0

    move-object v0, v9

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    iput-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 4717
    invoke-virtual {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    move-result-object v0

    .line 4718
    .local v0, "confEvtListener":Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/mediatek/ims/DefaultConferenceHandler;->startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V

    .line 4721
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4724
    goto :goto_0

    .line 4722
    :catch_0
    move-exception v1

    .line 4723
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x5

    const-string v3, "RuntimeException callSessionMergeStarted()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4725
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private createConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 1
    .param p1, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callId"    # Ljava/lang/String;

    .line 4683
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_0

    .line 4685
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->createMtkConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    goto :goto_0

    .line 4688
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->createAospConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    .line 4690
    :goto_0
    return-void
.end method

.method private createMtkConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 20
    .param p1, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callId"    # Ljava/lang/String;

    .line 4694
    move-object/from16 v0, p0

    new-instance v10, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    iget-object v7, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v9, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v4, 0x0

    move-object v1, v10

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    iput-object v10, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 4697
    new-instance v1, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v12, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v4, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v14, 0x0

    move-object v11, v1

    move-object/from16 v13, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, p2

    move/from16 v19, v4

    invoke-direct/range {v11 .. v19}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 4701
    .local v1, "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 4702
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 4704
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 4705
    invoke-virtual {v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    move-result-object v2

    .line 4706
    .local v2, "confEvtListener":Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    move-object/from16 v6, p2

    invoke-virtual {v3, v4, v2, v6, v5}, Lcom/mediatek/ims/DefaultConferenceHandler;->startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V

    .line 4708
    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v4, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v4}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 4709
    return-void
.end method

.method private detailLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 5017
    sget-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->TELDBG:Z

    if-nez v0, :cond_0

    .line 5018
    return-void

    .line 5020
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5021
    return-void
.end method

.method private event2String(I)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # I

    .line 5184
    const/16 v0, 0x65

    if-ne v0, p1, :cond_0

    .line 5185
    const-string v0, "EVENT_POLL_CALLS_RESULT"

    return-object v0

    .line 5186
    :cond_0
    const/16 v0, 0x66

    if-ne v0, p1, :cond_1

    .line 5187
    const-string v0, "EVENT_CALL_INFO_INDICATION"

    return-object v0

    .line 5188
    :cond_1
    const/16 v0, 0x68

    if-ne v0, p1, :cond_2

    .line 5189
    const-string v0, "EVENT_ECONF_RESULT_INDICATION"

    return-object v0

    .line 5190
    :cond_2
    const/16 v0, 0x69

    if-ne v0, p1, :cond_3

    .line 5191
    const-string v0, "EVENT_GET_LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 5192
    :cond_3
    const/16 v0, 0x6a

    if-ne v0, p1, :cond_4

    .line 5193
    const-string v0, "EVENT_CALL_MODE_CHANGE_INDICATION"

    return-object v0

    .line 5194
    :cond_4
    const/16 v0, 0x6b

    if-ne v0, p1, :cond_5

    .line 5195
    const-string v0, "EVENT_VIDEO_CAPABILITY_INDICATION"

    return-object v0

    .line 5196
    :cond_5
    const/16 v0, 0x6d

    if-ne v0, p1, :cond_6

    .line 5197
    const-string v0, "EVENT_ECT_RESULT_INDICATION"

    return-object v0

    .line 5198
    :cond_6
    const/16 v0, 0x6e

    if-ne v0, p1, :cond_7

    .line 5199
    const-string v0, "EVENT_RTT_CAPABILITY_INDICATION"

    return-object v0

    .line 5200
    :cond_7
    const/16 v0, 0x6f

    if-ne v0, p1, :cond_8

    .line 5201
    const-string v0, "EVENT_IMS_CONFERENCE_INDICATION"

    return-object v0

    .line 5202
    :cond_8
    const/16 v0, 0xc9

    if-ne v0, p1, :cond_9

    .line 5203
    const-string v0, "EVENT_DIAL_RESULT"

    return-object v0

    .line 5204
    :cond_9
    const/16 v0, 0xca

    if-ne v0, p1, :cond_a

    .line 5205
    const-string v0, "EVENT_ACCEPT_RESULT"

    return-object v0

    .line 5206
    :cond_a
    const/16 v0, 0xcb

    if-ne v0, p1, :cond_b

    .line 5207
    const-string v0, "EVENT_HOLD_RESULT"

    return-object v0

    .line 5208
    :cond_b
    const/16 v0, 0xcc

    if-ne v0, p1, :cond_c

    .line 5209
    const-string v0, "EVENT_RESUME_RESULT"

    return-object v0

    .line 5210
    :cond_c
    const/16 v0, 0xcd

    if-ne v0, p1, :cond_d

    .line 5211
    const-string v0, "EVENT_MERGE_RESULT"

    return-object v0

    .line 5212
    :cond_d
    const/16 v0, 0xce

    if-ne v0, p1, :cond_e

    .line 5213
    const-string v0, "EVENT_ADD_CONFERENCE_RESULT"

    return-object v0

    .line 5214
    :cond_e
    const/16 v0, 0xcf

    if-ne v0, p1, :cond_f

    .line 5215
    const-string v0, "EVENT_REMOVE_CONFERENCE_RESULT"

    return-object v0

    .line 5216
    :cond_f
    const/16 v0, 0xd0

    if-ne v0, p1, :cond_10

    .line 5217
    const-string v0, "EVENT_SIP_CODE_INDICATION"

    return-object v0

    .line 5218
    :cond_10
    const/16 v0, 0xd1

    if-ne v0, p1, :cond_11

    .line 5219
    const-string v0, "EVENT_DIAL_CONFERENCE_RESULT"

    return-object v0

    .line 5220
    :cond_11
    const/16 v0, 0xd2

    if-ne v0, p1, :cond_12

    .line 5221
    const-string v0, "EVENT_SWAP_BEFORE_MERGE_RESULT"

    return-object v0

    .line 5222
    :cond_12
    const/16 v0, 0xd3

    if-ne v0, p1, :cond_13

    .line 5223
    const-string v0, "EVENT_RETRIEVE_MERGE_FAIL_RESULT"

    return-object v0

    .line 5224
    :cond_13
    const/16 v0, 0xd4

    if-ne v0, p1, :cond_14

    .line 5225
    const-string v0, "EVENT_DTMF_DONE"

    return-object v0

    .line 5226
    :cond_14
    const/16 v0, 0xd5

    if-ne v0, p1, :cond_15

    .line 5227
    const-string v0, "EVENT_SEND_USSI_COMPLETE"

    return-object v0

    .line 5228
    :cond_15
    const/16 v0, 0xd6

    if-ne v0, p1, :cond_16

    .line 5229
    const-string v0, "EVENT_CANCEL_USSI_COMPLETE"

    return-object v0

    .line 5230
    :cond_16
    const/16 v0, 0xd7

    if-ne v0, p1, :cond_17

    .line 5231
    const-string v0, "EVENT_ECT_RESULT"

    return-object v0

    .line 5232
    :cond_17
    const/16 v0, 0xd8

    if-ne v0, p1, :cond_18

    .line 5233
    const-string v0, "EVENT_PULL_CALL_RESULT"

    return-object v0

    .line 5234
    :cond_18
    const/16 v0, 0xd9

    if-ne v0, p1, :cond_19

    .line 5235
    const-string v0, "EVENT_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 5236
    :cond_19
    const/16 v0, 0xda

    if-ne v0, p1, :cond_1a

    .line 5237
    const-string v0, "EVENT_RTT_TEXT_RECEIVE_INDICATION"

    return-object v0

    .line 5238
    :cond_1a
    const/16 v0, 0xdb

    if-ne v0, p1, :cond_1b

    .line 5239
    const-string v0, "EVENT_RTT_MODIFY_RESPONSE"

    return-object v0

    .line 5240
    :cond_1b
    const/16 v0, 0xdc

    if-ne v0, p1, :cond_1c

    .line 5241
    const-string v0, "EVENT_RTT_MODIFY_REQUEST_RECEIVE"

    return-object v0

    .line 5242
    :cond_1c
    const/16 v0, 0xe1

    if-ne v0, p1, :cond_1d

    .line 5243
    const-string v0, "EVENT_RTT_AUDIO_INDICATION"

    return-object v0

    .line 5244
    :cond_1d
    const/16 v0, 0xdf

    if-ne v0, p1, :cond_1e

    .line 5245
    const-string v0, "EVENT_SPEECH_CODEC_INFO"

    return-object v0

    .line 5246
    :cond_1e
    const/16 v0, 0xe0

    if-ne v0, p1, :cond_1f

    .line 5247
    const-string v0, "EVENT_REDIAL_ECC_INDICATION"

    return-object v0

    .line 5248
    :cond_1f
    const/16 v0, 0xe2

    if-ne v0, p1, :cond_20

    .line 5249
    const-string v0, "EVENT_ON_SUPP_SERVICE_NOTIFICATION"

    return-object v0

    .line 5250
    :cond_20
    const/16 v0, 0xe3

    if-ne v0, p1, :cond_21

    .line 5251
    const-string v0, "EVENT_SIP_HEADER_INFO"

    return-object v0

    .line 5252
    :cond_21
    const/16 v0, 0xe4

    if-ne v0, p1, :cond_22

    .line 5253
    const-string v0, "EVENT_CALL_RAT_INDICATION"

    return-object v0

    .line 5254
    :cond_22
    const/16 v0, 0xe5

    if-ne v0, p1, :cond_23

    .line 5255
    const-string v0, "EVENT_CALL_ADDITIONAL_INFO"

    return-object v0

    .line 5256
    :cond_23
    const/16 v0, 0xea

    if-ne v0, p1, :cond_24

    .line 5257
    const-string v0, "EVENT_IMS_REGISTRATION_INFO"

    return-object v0

    .line 5258
    :cond_24
    const/16 v0, 0xe6

    if-ne v0, p1, :cond_25

    .line 5259
    const-string v0, "EVENT_CACHED_TERMINATE_REASON"

    return-object v0

    .line 5261
    :cond_25
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_26

    .line 5262
    const-string v0, "EVENT_POLL_DATAUSAGE"

    return-object v0

    .line 5265
    :cond_26
    const/16 v0, 0x1f5

    if-ne v0, p1, :cond_27

    .line 5266
    const-string v0, "EVENT_AUTO_UPGRADE_TO_RTT"

    return-object v0

    .line 5269
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown msg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCallInfoUrlValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "callinfo"    # Ljava/lang/String;

    .line 6014
    const-string v0, ""

    .line 6015
    .local v0, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6016
    return-object v0

    .line 6019
    :cond_0
    const-string v1, "purpose=icon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6020
    return-object v0

    .line 6022
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 6023
    .local v2, "icon_index":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    const-string v3, "<"

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6024
    .local v1, "startIndex":I
    const-string v3, ">"

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 6025
    .local v3, "endIndex":I
    if-gez v3, :cond_2

    .line 6026
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6028
    :cond_2
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6030
    :goto_0
    return-object v0
.end method

.method private getConfParticipantUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;

    .line 4994
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4995
    move-object v0, p1

    .local v0, "participantUri":Ljava/lang/String;
    goto :goto_0

    .line 4997
    .end local v0    # "participantUri":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/DefaultConferenceHandler;->getConfParticipantUri(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 4998
    .restart local v0    # "participantUri":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/ims/DefaultConferenceHandler;->getConfParticipantUri(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRetryRemoveUri:Ljava/lang/String;

    .line 5001
    :goto_0
    return-object v0
.end method

.method private getDataNetworkType()I
    .locals 3

    .line 4364
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 4365
    .local v0, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_0

    .line 4366
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    return v1

    .line 4369
    :cond_0
    const/4 v1, 0x2

    const-string v2, "getDataNetworkType error"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4370
    const/4 v1, 0x0

    return v1
.end method

.method private getHangupCause(I)I
    .locals 2
    .param p1, "reasionInfo"    # I

    .line 5052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHangupCause() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5054
    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_0

    .line 5055
    const/4 v0, -0x1

    return v0

    .line 5056
    :cond_0
    const/16 v0, 0x2350

    if-ne p1, v0, :cond_1

    .line 5057
    const/4 v0, 0x1

    return v0

    .line 5058
    :cond_1
    const/16 v0, 0x1f9

    if-ne p1, v0, :cond_2

    .line 5059
    return v1

    .line 5060
    :cond_2
    const/16 v0, 0x2351

    if-ne p1, v0, :cond_3

    .line 5061
    const/4 v0, 0x3

    return v0

    .line 5062
    :cond_3
    const/16 v0, 0x2353

    if-ne p1, v0, :cond_4

    .line 5063
    const/4 v0, 0x4

    return v0

    .line 5065
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private getMaximumConferenceSize()I
    .locals 1

    .line 4801
    const/4 v0, 0x6

    return v0
.end method

.method private getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;
    .locals 5

    .line 4374
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4375
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 4376
    .local v1, "ss":Landroid/telephony/ServiceState;
    const/4 v2, 0x0

    .line 4377
    .local v2, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v3, 0x2

    if-eqz v1, :cond_0

    .line 4378
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 4380
    return-object v2

    .line 4383
    :cond_0
    const-string v4, "getNetworkRegistrationInfo error"

    invoke-direct {p0, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4384
    return-object v2
.end method

.method private getOpImsReasonInfo(Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 7
    .param p1, "sipMsg"    # Lcom/mediatek/ims/SipMessage;

    .line 5553
    const/4 v0, 0x0

    .line 5554
    .local v0, "info":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOpImsReasonInfo sipCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/ims/SipMessage;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonHeader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5555
    invoke-virtual {p1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5554
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5556
    invoke-virtual {p1}, Lcom/mediatek/ims/SipMessage;->getCode()I

    move-result v1

    .line 5557
    .local v1, "sipErrCode":I
    invoke-virtual {p1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v3

    .line 5558
    .local v3, "reasonHeader":Ljava/lang/String;
    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP112:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v4, v5}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 5559
    invoke-virtual {p1}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    .line 5560
    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 5972
    :sswitch_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 5973
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234f

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5976
    :cond_0
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234f

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5979
    goto/16 :goto_0

    .line 5960
    :sswitch_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 5961
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234e

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5965
    :cond_1
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234e

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5969
    goto/16 :goto_0

    .line 5950
    :sswitch_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 5951
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234d

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5954
    :cond_2
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234d

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5957
    goto/16 :goto_0

    .line 5940
    :sswitch_3
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 5941
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234c

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5944
    :cond_3
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234c

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5947
    goto/16 :goto_0

    .line 5930
    :sswitch_4
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 5931
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234b

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5934
    :cond_4
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234b

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5937
    goto/16 :goto_0

    .line 5919
    :sswitch_5
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 5920
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234a

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5923
    :cond_5
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x234a

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5927
    goto/16 :goto_0

    .line 5909
    :sswitch_6
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    .line 5910
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2349

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5913
    :cond_6
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2349

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5916
    goto/16 :goto_0

    .line 5899
    :sswitch_7
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    .line 5900
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2348

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5903
    :cond_7
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2348

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5906
    goto/16 :goto_0

    .line 5889
    :sswitch_8
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    .line 5890
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2347

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5893
    :cond_8
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2347

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5896
    goto/16 :goto_0

    .line 5879
    :sswitch_9
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    .line 5880
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2346

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5883
    :cond_9
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2346

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5886
    goto/16 :goto_0

    .line 5868
    :sswitch_a
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    .line 5869
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2345

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5872
    :cond_a
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2345

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5876
    goto/16 :goto_0

    .line 5858
    :sswitch_b
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b

    .line 5859
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2344

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5862
    :cond_b
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2344

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5865
    goto/16 :goto_0

    .line 5848
    :sswitch_c
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    .line 5849
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2343

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5852
    :cond_c
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2343

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5855
    goto/16 :goto_0

    .line 5838
    :sswitch_d
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_d

    .line 5839
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2342

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5842
    :cond_d
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2342

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5845
    goto/16 :goto_0

    .line 5828
    :sswitch_e
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_e

    .line 5829
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2341

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5832
    :cond_e
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2341

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5835
    goto/16 :goto_0

    .line 5816
    :sswitch_f
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_f

    .line 5817
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2340

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5821
    :cond_f
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2340

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5825
    goto/16 :goto_0

    .line 5806
    :sswitch_10
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_10

    .line 5807
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233f

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5810
    :cond_10
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233f

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5813
    goto/16 :goto_0

    .line 5796
    :sswitch_11
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_11

    .line 5797
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233e

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5800
    :cond_11
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233e

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5803
    goto/16 :goto_0

    .line 5784
    :sswitch_12
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_12

    .line 5785
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233d

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5789
    :cond_12
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233d

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5793
    goto/16 :goto_0

    .line 5772
    :sswitch_13
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_13

    .line 5773
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233c

    invoke-direct {v5, v6, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 5777
    :cond_13
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x233c

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v5

    .line 5781
    goto/16 :goto_0

    .line 5762
    :sswitch_14
    const/16 v5, 0x233b

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_14

    .line 5763
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5766
    :cond_14
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5769
    goto/16 :goto_0

    .line 5751
    :sswitch_15
    const/16 v5, 0x233a

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_15

    .line 5752
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5755
    :cond_15
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5759
    goto/16 :goto_0

    .line 5741
    :sswitch_16
    const/16 v5, 0x2339

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_16

    .line 5742
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5745
    :cond_16
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5748
    goto/16 :goto_0

    .line 5730
    :sswitch_17
    const/16 v5, 0x2338

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_17

    .line 5731
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5734
    :cond_17
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5738
    goto/16 :goto_0

    .line 5719
    :sswitch_18
    const/16 v5, 0x2337

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_18

    .line 5720
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5723
    :cond_18
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5727
    goto/16 :goto_0

    .line 5708
    :sswitch_19
    const/16 v5, 0x2336

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_19

    .line 5709
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5712
    :cond_19
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5716
    goto/16 :goto_0

    .line 5696
    :sswitch_1a
    const/16 v5, 0x2335

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 5697
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5701
    :cond_1a
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5705
    goto/16 :goto_0

    .line 5686
    :sswitch_1b
    const/16 v5, 0x2334

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1b

    .line 5687
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5690
    :cond_1b
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5693
    goto/16 :goto_0

    .line 5676
    :sswitch_1c
    const/16 v5, 0x2333

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1c

    .line 5677
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5680
    :cond_1c
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5683
    goto/16 :goto_0

    .line 5666
    :sswitch_1d
    const/16 v5, 0x2332

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1d

    .line 5667
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5670
    :cond_1d
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5673
    goto/16 :goto_0

    .line 5656
    :sswitch_1e
    const/16 v5, 0x2331

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1e

    .line 5657
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5660
    :cond_1e
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5663
    goto/16 :goto_0

    .line 5643
    :sswitch_1f
    const/16 v5, 0x2330

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1f

    .line 5644
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5648
    :cond_1f
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5653
    goto/16 :goto_0

    .line 5633
    :sswitch_20
    const/16 v5, 0x232f

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_20

    .line 5634
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5637
    :cond_20
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5640
    goto/16 :goto_0

    .line 5623
    :sswitch_21
    const/16 v5, 0x232e

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_21

    .line 5624
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5627
    :cond_21
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5630
    goto/16 :goto_0

    .line 5613
    :sswitch_22
    const/16 v5, 0x232d

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_22

    .line 5614
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5617
    :cond_22
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5620
    goto/16 :goto_0

    .line 5603
    :sswitch_23
    const/16 v5, 0x232c

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_23

    .line 5604
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 5607
    :cond_23
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5610
    goto/16 :goto_0

    .line 5593
    :sswitch_24
    const/16 v5, 0x232b

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_24

    .line 5594
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 5597
    :cond_24
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5600
    goto :goto_0

    .line 5583
    :sswitch_25
    const/16 v5, 0x232a

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_25

    .line 5584
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 5587
    :cond_25
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5590
    goto :goto_0

    .line 5573
    :sswitch_26
    const/16 v5, 0x2329

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_26

    .line 5574
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 5577
    :cond_26
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5580
    goto :goto_0

    .line 5563
    :sswitch_27
    const/16 v5, 0x2328

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_27

    .line 5564
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 5567
    :cond_27
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v6

    .line 5984
    :cond_28
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOpImsReasonInfo(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5985
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_27
        0x190 -> :sswitch_26
        0x191 -> :sswitch_25
        0x192 -> :sswitch_24
        0x193 -> :sswitch_23
        0x194 -> :sswitch_22
        0x195 -> :sswitch_21
        0x196 -> :sswitch_20
        0x197 -> :sswitch_1f
        0x198 -> :sswitch_1e
        0x199 -> :sswitch_1d
        0x19a -> :sswitch_1c
        0x19b -> :sswitch_1b
        0x19d -> :sswitch_1a
        0x19e -> :sswitch_19
        0x19f -> :sswitch_18
        0x1a0 -> :sswitch_17
        0x1a4 -> :sswitch_16
        0x1a5 -> :sswitch_15
        0x1a7 -> :sswitch_14
        0x1e0 -> :sswitch_13
        0x1e1 -> :sswitch_12
        0x1e2 -> :sswitch_11
        0x1e3 -> :sswitch_10
        0x1e4 -> :sswitch_f
        0x1e5 -> :sswitch_e
        0x1e6 -> :sswitch_d
        0x1e7 -> :sswitch_c
        0x1e8 -> :sswitch_b
        0x1f4 -> :sswitch_a
        0x1f5 -> :sswitch_9
        0x1f6 -> :sswitch_8
        0x1f7 -> :sswitch_7
        0x1f8 -> :sswitch_6
        0x1f9 -> :sswitch_5
        0x201 -> :sswitch_4
        0x258 -> :sswitch_3
        0x25b -> :sswitch_2
        0x25c -> :sswitch_1
        0x25e -> :sswitch_0
    .end sparse-switch
.end method

.method private getRadioTechFromRatType(I)I
    .locals 1
    .param p1, "ratType"    # I

    .line 4117
    packed-switch p1, :pswitch_data_0

    .line 4123
    const/4 v0, 0x0

    return v0

    .line 4121
    :pswitch_0
    const/16 v0, 0x12

    return v0

    .line 4119
    :pswitch_1
    const/16 v0, 0xe

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVideoDirectionFromVideoState(I)I
    .locals 2
    .param p1, "videoState"    # I

    .line 4012
    packed-switch p1, :pswitch_data_0

    .line 4024
    const/4 v0, -0x1

    return v0

    .line 4022
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 4020
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 4018
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 4014
    :pswitch_3
    const/4 v0, 0x4

    const-string v1, "getVideoDirectionFromVideoState() : Should not handle pause here"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4016
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWfcMdn()Ljava/lang/String;
    .locals 6

    .line 5336
    const/4 v0, 0x0

    .line 5337
    .local v0, "wfcMdn":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5338
    .local v1, "imsConfig":Lcom/android/ims/ImsConfig;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 5339
    .local v2, "imsManager":Lcom/android/ims/ImsManager;
    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 5341
    :try_start_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v4

    move-object v1, v4

    .line 5342
    if-eqz v1, :cond_0

    .line 5343
    const/16 v4, 0x48

    invoke-virtual {v1, v4}, Lcom/android/ims/ImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    .line 5346
    :catch_0
    move-exception v4

    .line 5347
    .local v4, "e":Lcom/android/ims/ImsException;
    const-string v5, "getWfcMdn() : ImsConfig null"

    invoke-direct {p0, v5, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5348
    invoke-virtual {v4}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 5349
    .end local v4    # "e":Lcom/android/ims/ImsException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 5351
    :cond_1
    const-string v4, "getWfcMdn() : ImsManager null"

    invoke-direct {p0, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5353
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWfcMdn() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5354
    return-object v0
.end method

.method private getWifiRssi()I
    .locals 5

    .line 4834
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 4835
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 4836
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    .line 4837
    const/4 v2, -0x1

    return v2

    .line 4839
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    .line 4840
    .local v2, "rssi":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiRssi()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4841
    return v2
.end method

.method private handleAutoUpgradeToRTT(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 6312
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 6313
    .local v0, "sipMessage":[Ljava/lang/String;
    if-eqz v0, :cond_4

    const/4 v1, 0x3

    aget-object v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    aget-object v1, v0, v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    aget-object v3, v0, v2

    .line 6314
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 6318
    :cond_0
    new-instance v1, Lcom/mediatek/ims/SipMessage;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/SipMessage;-><init>([Ljava/lang/String;)V

    .line 6320
    .local v1, "msg":Lcom/mediatek/ims/SipMessage;
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 6321
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 6324
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAutoUpgradeToRTT() : receive sip method = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNeedUpgradeToRTT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedUpgradeToRTT:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->detailLog(Ljava/lang/String;)V

    .line 6327
    iget-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedUpgradeToRTT:Z

    if-eqz v3, :cond_2

    .line 6328
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedUpgradeToRTT:Z

    .line 6329
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 6330
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6331
    const-string v3, "handleAutoUpgradeToRTT() : will upgrade to RTT call after 200ms later"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->detailLog(Ljava/lang/String;)V

    .line 6333
    .end local v2    # "message":Landroid/os/Message;
    :cond_2
    return-void

    .line 6322
    :cond_3
    :goto_0
    return-void

    .line 6315
    .end local v1    # "msg":Lcom/mediatek/ims/SipMessage;
    :cond_4
    :goto_1
    return-void
.end method

.method private handleCachedTerminateReason(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 4475
    move-object v0, p1

    .line 4477
    .local v0, "cachedInfo":Landroid/telephony/ims/ImsReasonInfo;
    if-nez p1, :cond_0

    .line 4478
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 4480
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 4482
    :goto_0
    return-void
.end method

.method private handleCallAdditionalInfo(Landroid/os/AsyncResult;)V
    .locals 21
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 6034
    move-object/from16 v1, p0

    const-string v0, "UTF-8"

    const-string v2, "ImsCallSessionProxy"

    move-object/from16 v3, p1

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 6035
    .local v4, "additionalCallInfo":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 6036
    .local v6, "type":I
    const/4 v7, 0x1

    aget-object v8, v4, v7

    .line 6038
    .local v8, "callId":Ljava/lang/String;
    const/16 v9, 0x65

    if-ne v6, v9, :cond_1

    .line 6039
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6040
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "ims_gwsd"

    invoke-virtual {v0, v2, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    move/from16 v19, v6

    goto/16 :goto_a

    .line 6039
    :cond_0
    move/from16 v19, v6

    goto/16 :goto_a

    .line 6042
    :cond_1
    const/16 v9, 0x66

    if-ne v6, v9, :cond_11

    .line 6043
    const/4 v9, 0x6

    aget-object v10, v4, v9

    if-eqz v10, :cond_10

    aget-object v10, v4, v9

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    move/from16 v19, v6

    goto/16 :goto_9

    .line 6046
    :cond_2
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v10, :cond_f

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 6047
    const/4 v10, 0x2

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 6048
    .local v11, "subType":I
    const-string v12, ","

    if-ne v11, v7, :cond_b

    .line 6049
    const/4 v13, 0x3

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 6050
    .local v14, "total":I
    const/4 v15, 0x4

    aget-object v16, v4, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 6051
    .local v13, "index":I
    const/16 v16, 0x5

    aget-object v16, v4, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 6052
    .local v5, "count":I
    if-ne v13, v7, :cond_3

    .line 6053
    aget-object v9, v4, v9

    iput-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderData:Ljava/lang/String;

    goto :goto_0

    .line 6055
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderData:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v4, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderData:Ljava/lang/String;

    .line 6057
    :goto_0
    if-eq v13, v14, :cond_4

    .line 6059
    return-void

    .line 6063
    :cond_4
    :try_start_0
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderData:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 6064
    .local v7, "split":[Ljava/lang/String;
    array-length v9, v7

    div-int/2addr v9, v10
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 6065
    .local v9, "headerCount":I
    if-eq v9, v5, :cond_5

    .line 6066
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Header count unmatched: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x4

    invoke-direct {v1, v12, v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 6108
    .end local v7    # "split":[Ljava/lang/String;
    .end local v9    # "headerCount":I
    :catch_0
    move-exception v0

    move/from16 v17, v5

    move/from16 v19, v6

    goto/16 :goto_5

    .line 6106
    :catch_1
    move-exception v0

    move/from16 v17, v5

    move/from16 v19, v6

    goto/16 :goto_6

    .line 6069
    .restart local v7    # "split":[Ljava/lang/String;
    .restart local v9    # "headerCount":I
    :cond_5
    :goto_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v9, :cond_a

    .line 6070
    mul-int/lit8 v15, v12, 0x2

    :try_start_2
    aget-object v15, v7, v15

    invoke-direct {v1, v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 6071
    .local v15, "keyBytes":[B
    mul-int/lit8 v17, v12, 0x2

    const/16 v16, 0x1

    add-int/lit8 v17, v17, 0x1

    aget-object v10, v7, v17

    invoke-direct {v1, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 6072
    .local v10, "valueBytes":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v15, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6

    .line 6073
    .local v3, "key":Ljava/lang/String;
    move/from16 v17, v5

    .end local v5    # "count":I
    .local v17, "count":I
    :try_start_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v10, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 6074
    .local v5, "value":Ljava/lang/String;
    move-object/from16 v18, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v19, v6

    .end local v6    # "type":I
    .local v19, "type":I
    :try_start_4
    const-string v6, "key-value: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {v1, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    invoke-direct {v1, v0, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 6076
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6077
    goto/16 :goto_4

    .line 6079
    :cond_6
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_7
    goto :goto_3

    :sswitch_0
    const-string v6, "Organization"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x3

    goto :goto_3

    :sswitch_1
    const-string v6, "Call-Info"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x2

    goto :goto_3

    :sswitch_2
    const-string v6, "Subject"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x0

    goto :goto_3

    :sswitch_3
    const-string v6, "Priority"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_0

    move-object/from16 v20, v3

    .end local v3    # "key":Ljava/lang/String;
    .local v20, "key":Ljava/lang/String;
    goto :goto_4

    .line 6099
    .end local v20    # "key":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    :pswitch_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v6, "android.telephony.ims.extra.IS_BUSINESS_CALL"

    move-object/from16 v20, v3

    const/4 v3, 0x1

    .end local v3    # "key":Ljava/lang/String;
    .restart local v20    # "key":Ljava/lang/String;
    invoke-virtual {v0, v6, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 6101
    goto :goto_4

    .line 6094
    .end local v20    # "key":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v20, v3

    .end local v3    # "key":Ljava/lang/String;
    .restart local v20    # "key":Ljava/lang/String;
    invoke-direct {v1, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallInfoUrlValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6095
    .local v0, "pictureUrl":Ljava/lang/String;
    iget-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v6, "android.telephony.ims.extra.PICTURE_URL"

    invoke-virtual {v3, v6, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 6096
    goto :goto_4

    .line 6084
    .end local v0    # "pictureUrl":Ljava/lang/String;
    .end local v20    # "key":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v20, v3

    .end local v3    # "key":Ljava/lang/String;
    .restart local v20    # "key":Ljava/lang/String;
    const-string v0, "normal"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    const-string v3, "android.telephony.ims.extra.PRIORITY"

    if-eqz v0, :cond_8

    .line 6085
    :try_start_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 6087
    :cond_8
    const-string v0, "urgent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6088
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 6081
    .end local v20    # "key":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v20, v3

    .end local v3    # "key":Ljava/lang/String;
    .restart local v20    # "key":Ljava/lang/String;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "android.telephony.ims.extra.CALL_SUBJECT"

    invoke-virtual {v0, v3, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 6082
    nop

    .line 6069
    .end local v5    # "value":Ljava/lang/String;
    .end local v10    # "valueBytes":[B
    .end local v15    # "keyBytes":[B
    .end local v20    # "key":Ljava/lang/String;
    :cond_9
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p1

    move/from16 v5, v17

    move-object/from16 v0, v18

    move/from16 v6, v19

    const/4 v10, 0x2

    goto/16 :goto_2

    .line 6108
    .end local v7    # "split":[Ljava/lang/String;
    .end local v9    # "headerCount":I
    .end local v12    # "i":I
    :catch_2
    move-exception v0

    goto :goto_5

    .line 6106
    :catch_3
    move-exception v0

    goto :goto_6

    .line 6108
    .end local v19    # "type":I
    .restart local v6    # "type":I
    :catch_4
    move-exception v0

    move/from16 v19, v6

    .end local v6    # "type":I
    .restart local v19    # "type":I
    goto :goto_5

    .line 6106
    .end local v19    # "type":I
    .restart local v6    # "type":I
    :catch_5
    move-exception v0

    move/from16 v19, v6

    .end local v6    # "type":I
    .restart local v19    # "type":I
    goto :goto_6

    .line 6069
    .end local v17    # "count":I
    .end local v19    # "type":I
    .local v5, "count":I
    .restart local v6    # "type":I
    .restart local v7    # "split":[Ljava/lang/String;
    .restart local v9    # "headerCount":I
    .restart local v12    # "i":I
    :cond_a
    move/from16 v17, v5

    move/from16 v19, v6

    .end local v5    # "count":I
    .end local v6    # "type":I
    .end local v7    # "split":[Ljava/lang/String;
    .end local v9    # "headerCount":I
    .end local v12    # "i":I
    .restart local v17    # "count":I
    .restart local v19    # "type":I
    goto :goto_7

    .line 6108
    .end local v17    # "count":I
    .end local v19    # "type":I
    .restart local v5    # "count":I
    .restart local v6    # "type":I
    :catch_6
    move-exception v0

    move/from16 v17, v5

    move/from16 v19, v6

    .line 6109
    .end local v5    # "count":I
    .end local v6    # "type":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v17    # "count":I
    .restart local v19    # "type":I
    :goto_5
    const-string v3, "handleCallAdditionalInfo() RuntimeException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 6106
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v17    # "count":I
    .end local v19    # "type":I
    .restart local v5    # "count":I
    .restart local v6    # "type":I
    :catch_7
    move-exception v0

    move/from16 v17, v5

    move/from16 v19, v6

    .line 6107
    .end local v5    # "count":I
    .end local v6    # "type":I
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v17    # "count":I
    .restart local v19    # "type":I
    :goto_6
    const-string v3, "handleCallAdditionalInfo() UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6110
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_7
    goto :goto_8

    .line 6111
    .end local v13    # "index":I
    .end local v14    # "total":I
    .end local v17    # "count":I
    .end local v19    # "type":I
    .restart local v6    # "type":I
    :cond_b
    move/from16 v19, v6

    .end local v6    # "type":I
    .restart local v19    # "type":I
    const/4 v0, 0x2

    if-ne v11, v0, :cond_e

    .line 6112
    aget-object v0, v4, v9

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6113
    .local v0, "location":[Ljava/lang/String;
    if-nez v0, :cond_c

    .line 6114
    return-void

    .line 6116
    :cond_c
    new-instance v2, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 6117
    .local v2, "locationExtra":Landroid/location/Location;
    invoke-virtual {v2}, Landroid/location/Location;->reset()V

    .line 6118
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 6119
    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_d

    .line 6120
    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 6122
    :cond_d
    iget-object v3, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v5, "android.telephony.ims.extra.LOCATION"

    invoke-virtual {v3, v5, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_a

    .line 6111
    .end local v0    # "location":[Ljava/lang/String;
    .end local v2    # "locationExtra":Landroid/location/Location;
    :cond_e
    :goto_8
    goto :goto_a

    .line 6046
    .end local v11    # "subType":I
    .end local v19    # "type":I
    .restart local v6    # "type":I
    :cond_f
    move/from16 v19, v6

    .end local v6    # "type":I
    .restart local v19    # "type":I
    goto :goto_a

    .line 6043
    .end local v19    # "type":I
    .restart local v6    # "type":I
    :cond_10
    move/from16 v19, v6

    .line 6044
    .end local v6    # "type":I
    .restart local v19    # "type":I
    :goto_9
    return-void

    .line 6042
    .end local v19    # "type":I
    .restart local v6    # "type":I
    :cond_11
    move/from16 v19, v6

    .line 6126
    .end local v6    # "type":I
    .restart local v19    # "type":I
    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x419d223c -> :sswitch_3
        -0xc1d12f4 -> :sswitch_2
        0x36446abd -> :sswitch_1
        0x50104153 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCallRatIndication(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4411
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 4412
    .local v0, "result":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 4413
    .local v1, "domain":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 4415
    .local v2, "callRat":I
    if-nez v1, :cond_0

    .line 4416
    return-void

    .line 4417
    :cond_0
    if-gtz v2, :cond_1

    .line 4418
    const/4 v2, 0x0

    .line 4421
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ImsService;->getRatType(I)I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateRat(II)Z

    move-result v3

    .line 4423
    .local v3, "isCallRatUpdated":Z
    if-eqz v3, :cond_2

    .line 4424
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionUpdated()V

    .line 4426
    :cond_2
    return-void
.end method

.method private handleDataUsagePoll(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 6249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDataUsagePoll msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 6251
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->onRequestCallDataUsage()V

    .line 6253
    sget-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mStartDatausagePolling:Z

    if-eqz v0, :cond_0

    .line 6254
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6255
    .local v0, "tMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6257
    .end local v0    # "tMsg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private handleImsRegistrationInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4449
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 4453
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 4455
    .local v0, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 4459
    :cond_1
    const/4 v1, 0x0

    .line 4460
    .local v1, "callRat":I
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    .line 4461
    const/4 v1, 0x1

    goto :goto_0

    .line 4462
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 4463
    const/4 v1, 0x2

    goto :goto_0

    .line 4464
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 4465
    const/4 v1, 0x3

    .line 4467
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsService;->getRatType(I)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateRat(II)Z

    move-result v2

    .line 4468
    .local v2, "isCallRatUpdated":Z
    if-eqz v2, :cond_5

    .line 4469
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionUpdated()V

    .line 4471
    :cond_5
    return-void

    .line 4456
    .end local v1    # "callRat":I
    .end local v2    # "isCallRatUpdated":Z
    :cond_6
    :goto_1
    return-void

    .line 4450
    .end local v0    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    :goto_2
    return-void
.end method

.method private handleRedialEccIndication(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 5151
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "handleRedialEccIndication()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5152
    if-nez p1, :cond_0

    .line 5154
    const-string v1, "handleRedialEccIndication() : ar is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    return-void

    .line 5159
    :cond_0
    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 5160
    const-string v1, "handleRedialEccIndication() : Call established, ignore indication"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5161
    return-void

    .line 5164
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 5165
    .local v1, "result":[Ljava/lang/String;
    if-nez v1, :cond_2

    .line 5166
    const-string v2, "handleRedialEccIndication() : ar.result is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5167
    return-void

    .line 5169
    :cond_2
    const/4 v0, 0x0

    aget-object v2, v1, v0

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5170
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->turnOffAirplaneMode()V

    goto :goto_0

    .line 5171
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v2, :cond_5

    .line 5172
    aget-object v2, v1, v0

    const-string v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5174
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyRedialEcc(Z)V

    goto :goto_0

    .line 5175
    :cond_4
    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5177
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyRedialEcc(Z)V

    .line 5180
    :cond_5
    :goto_0
    return-void
.end method

.method private handleSipHeaderInfo(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 5438
    const-string v0, "ImsCallSessionProxy"

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 5439
    .local v1, "sipHeaderInfo":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5440
    const/4 v2, 0x0

    .line 5441
    .local v2, "headerType":I
    const/4 v3, 0x0

    .line 5442
    .local v3, "totalCount":I
    const/4 v4, 0x0

    .line 5443
    .local v4, "index":I
    const/4 v5, 0x1

    aget-object v6, v1, v5

    const-string v7, ""

    if-eqz v6, :cond_0

    aget-object v6, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5444
    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5448
    :cond_0
    const/4 v5, 0x2

    aget-object v6, v1, v5

    if-eqz v6, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5449
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5452
    :cond_1
    const/4 v6, 0x3

    aget-object v8, v1, v6

    if-eqz v8, :cond_2

    aget-object v8, v1, v6

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 5453
    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5456
    :cond_2
    const/16 v6, 0xd

    if-ne v2, v6, :cond_4

    .line 5457
    const-string v6, ""

    .line 5458
    .local v6, "headerCallId":Ljava/lang/String;
    const/4 v8, 0x4

    aget-object v9, v1, v8

    if-eqz v9, :cond_3

    aget-object v9, v1, v8

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 5459
    aget-object v6, v1, v8

    .line 5463
    :cond_3
    :try_start_0
    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 5464
    .local v7, "bytes":[B
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderCallId:Ljava/lang/String;

    .line 5465
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSipHeaderInfo() : mHeaderCallId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderCallId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "bytes":[B
    goto :goto_0

    .line 5469
    :catch_0
    move-exception v5

    .line 5470
    .local v5, "ex":Ljava/lang/RuntimeException;
    const-string v7, "handleSipHeaderInfo() RuntimeException"

    invoke-static {v0, v7, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5467
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    .line 5468
    .local v5, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v7, "handleSipHeaderInfo() implausible UnsupportedEncodingException"

    invoke-static {v0, v7, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5474
    .end local v2    # "headerType":I
    .end local v3    # "totalCount":I
    .end local v4    # "index":I
    .end local v5    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "headerCallId":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method

.method private handleSpeechCodecInfo(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 5070
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 5072
    .local v0, "codec":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSpeechCodecInfo() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5074
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 5075
    .local v1, "oldAudioQuality":I
    const/4 v2, 0x0

    .line 5076
    .local v2, "newAudioQuality":I
    sparse-switch v0, :sswitch_data_0

    .line 5123
    const/4 v2, 0x0

    goto :goto_0

    .line 5120
    :sswitch_0
    const/4 v2, 0x2

    .line 5121
    goto :goto_0

    .line 5117
    :sswitch_1
    const/16 v2, 0x14

    .line 5118
    goto :goto_0

    .line 5114
    :sswitch_2
    const/16 v2, 0x13

    .line 5115
    goto :goto_0

    .line 5111
    :sswitch_3
    const/16 v2, 0x12

    .line 5112
    goto :goto_0

    .line 5108
    :sswitch_4
    const/16 v2, 0x11

    .line 5109
    goto :goto_0

    .line 5105
    :sswitch_5
    const/16 v2, 0xa

    .line 5106
    goto :goto_0

    .line 5102
    :sswitch_6
    const/16 v2, 0x9

    .line 5103
    goto :goto_0

    .line 5099
    :sswitch_7
    const/16 v2, 0x8

    .line 5100
    goto :goto_0

    .line 5096
    :sswitch_8
    const/4 v2, 0x2

    .line 5097
    goto :goto_0

    .line 5093
    :sswitch_9
    const/4 v2, 0x1

    .line 5094
    goto :goto_0

    .line 5090
    :sswitch_a
    const/4 v2, 0x7

    .line 5091
    goto :goto_0

    .line 5087
    :sswitch_b
    const/4 v2, 0x6

    .line 5088
    goto :goto_0

    .line 5084
    :sswitch_c
    const/4 v2, 0x5

    .line 5085
    goto :goto_0

    .line 5081
    :sswitch_d
    const/4 v2, 0x4

    .line 5082
    goto :goto_0

    .line 5078
    :sswitch_e
    const/4 v2, 0x3

    .line 5079
    nop

    .line 5126
    :goto_0
    if-eq v2, v1, :cond_0

    .line 5127
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v2, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 5128
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionUpdated()V

    .line 5130
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_d
        0x3 -> :sswitch_c
        0x4 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0x17 -> :sswitch_4
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleVideoRingtoneInfo(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4485
    const-string v0, "handleVideoRingtoneInfo():"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4487
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 4488
    .local v0, "videoRingtoneInfo":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 4489
    .local v2, "msgType":I
    const/4 v3, 0x0

    .line 4490
    .local v3, "event":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4491
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4492
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 4500
    :sswitch_0
    aget-object v3, v0, v1

    .line 4502
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

    goto :goto_0

    .line 4497
    :sswitch_1
    goto :goto_0

    .line 4494
    :sswitch_2
    nop

    .line 4503
    :goto_0
    goto :goto_1

    .line 4506
    :cond_0
    const-string v4, "handleVideoRingtoneInfo: mismatch call id"

    invoke-direct {p0, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4508
    :goto_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v1, :cond_1

    .line 4509
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyVideoRingtoneEvent(ILjava/lang/String;)V

    .line 4511
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .locals 5
    .param p1, "hex"    # Ljava/lang/String;

    .line 5477
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    move-object p1, v0

    .line 5479
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 5481
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 5482
    mul-int/lit8 v2, v1, 0x2

    .line 5483
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 5484
    .local v3, "v":I
    int-to-byte v4, v3

    aput-byte v4, v0, v1

    .line 5481
    .end local v2    # "index":I
    .end local v3    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5486
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private isAllowRttVideoSwitch()Z
    .locals 6

    .line 5542
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "mediatek:wasVideoCall"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 5544
    .local v0, "wasVideoCall":Z
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 5545
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 5546
    .local v2, "bundle":Landroid/os/PersistableBundle;
    const-string v3, "mtk_rtt_video_switch_supported_bool"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 5549
    .local v3, "isRttVideoSwitchable":Z
    const/4 v5, 0x1

    if-eqz v3, :cond_0

    :goto_0
    move v4, v5

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v4
.end method

.method private isAnsweredElsewhere(Ljava/lang/String;)Z
    .locals 3
    .param p1, "header"    # Ljava/lang/String;

    .line 4960
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4961
    return v0

    .line 4964
    :cond_0
    const-string v1, "Call Completion Elsewhere"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4965
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "call completed elsewhere"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4968
    :cond_1
    return v0

    .line 4966
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isCallPull(Landroid/telephony/ims/ImsCallProfile;)Z
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 4610
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4613
    :cond_0
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4614
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 4615
    return v0

    .line 4617
    :cond_1
    const-string v2, "CallPull"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4618
    .local v0, "isCallPull":Z
    return v0

    .line 4611
    .end local v0    # "isCallPull":Z
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return v0
.end method

.method private isEmergencyAddressRegistered()Z
    .locals 2

    .line 5358
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getWfcMdn()Ljava/lang/String;

    move-result-object v0

    .line 5359
    .local v0, "wfcMdn":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5362
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 5360
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private isEnrichedCallingSupported()Z
    .locals 2

    .line 6233
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 6234
    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    .line 6235
    .local v0, "isEnrichedCallingSupported":Z
    return v0
.end method

.method private isImsEccSupported()Z
    .locals 6

    .line 4388
    const/4 v0, 0x0

    .line 4389
    .local v0, "isImsEccSupported":Z
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 4390
    .local v1, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v1, :cond_2

    .line 4391
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v2

    .line 4392
    .local v2, "dataRegInfo":Landroid/telephony/DataSpecificRegistrationInfo;
    if-eqz v2, :cond_2

    .line 4393
    invoke-virtual {v2}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v3

    .line 4394
    .local v3, "vopsInfo":Landroid/telephony/VopsSupportInfo;
    if-eqz v3, :cond_2

    .line 4395
    invoke-virtual {v3}, Landroid/telephony/VopsSupportInfo;->isEmergencyServiceSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4396
    invoke-virtual {v3}, Landroid/telephony/VopsSupportInfo;->isEmergencyServiceFallbackSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    move v0, v4

    .line 4397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isImsEccSupported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4401
    .end local v2    # "dataRegInfo":Landroid/telephony/DataSpecificRegistrationInfo;
    .end local v3    # "vopsInfo":Landroid/telephony/VopsSupportInfo;
    :cond_2
    return v0
.end method

.method private isMtRttWithoutPrecondition()Z
    .locals 4

    .line 5501
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5502
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 5503
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 5502
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 5503
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 5504
    .local v1, "bundle":Landroid/os/PersistableBundle;
    const-string v2, "mtk_mt_rtt_without_precondition_bool"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private isNeedBlockMergeAction()Z
    .locals 3

    .line 4805
    const/4 v0, 0x0

    .line 4806
    .local v0, "result":Z
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP120:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    .line 4807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedBlockMergeAction() : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4808
    return v0
.end method

.method private isRemoteCallDecline(Ljava/lang/String;)Z
    .locals 3
    .param p1, "header"    # Ljava/lang/String;

    .line 4973
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4974
    return v0

    .line 4977
    :cond_0
    const-string v1, "Another device sent All Devices Busy response"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4978
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "declined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4979
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "busy everywhere"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4982
    :cond_1
    return v0

    .line 4980
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isRttEmcGuardTimerSupport()Z
    .locals 4

    .line 6240
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 6241
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 6242
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 6241
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 6242
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 6243
    .local v1, "bundle":Landroid/os/PersistableBundle;
    const-string v2, "mtk_emc_rtt_guard_timer_bool"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private isRttSupported()Z
    .locals 3

    .line 1551
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1552
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1553
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 1552
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1553
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isRttSupported()Z

    move-result v1

    .line 1552
    return v1
.end method

.method private isSpecialEccNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 5991
    const/4 v0, 0x0

    .line 5992
    .local v0, "isSpecialEccNumber":Z
    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 6003
    :pswitch_0
    const-string v1, "vendor.ril.special.ecclist3"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 6000
    :pswitch_1
    const-string v1, "vendor.ril.special.ecclist2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 6001
    goto :goto_0

    .line 5997
    :pswitch_2
    const-string v1, "vendor.ril.special.ecclist1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 5998
    goto :goto_0

    .line 5994
    :pswitch_3
    const-string v1, "vendor.ril.special.ecclist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 5995
    nop

    .line 6006
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSpecialEccNumber() : mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSpecialEccNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 6008
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isUserPerfromedHangup()Z
    .locals 1

    .line 4812
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    if-lez v0, :cond_0

    .line 4813
    const/4 v0, 0x1

    return v0

    .line 4815
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 4627
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4628
    return v0

    .line 4630
    :cond_0
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 4632
    const/4 v0, 0x1

    return v0

    .line 4634
    :cond_1
    return v0
.end method

.method private logEventResult(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .line 5043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, " success"

    goto :goto_0

    :cond_0
    const-string v1, " failed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5044
    return-void
.end method

.method private logWithCallId(Ljava/lang/String;I)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "lvl"    # I

    .line 5027
    const-string v0, "] "

    const-string v1, "[callId = "

    const-string v2, "ImsCallSessionProxy"

    const/4 v3, 0x1

    if-ne v3, p2, :cond_0

    sget-boolean v3, Lcom/mediatek/ims/ImsCallSessionProxy;->TELDBG:Z

    if-eqz v3, :cond_0

    .line 5028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5029
    :cond_0
    const/4 v3, 0x2

    if-ne v3, p2, :cond_1

    .line 5030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5031
    :cond_1
    const/4 v3, 0x3

    if-ne v3, p2, :cond_2

    .line 5032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5033
    :cond_2
    const/4 v3, 0x4

    if-ne v3, p2, :cond_3

    .line 5034
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5035
    :cond_3
    const/4 v3, 0x5

    if-ne v3, p2, :cond_4

    .line 5036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5038
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5040
    :goto_0
    return-void
.end method

.method private mergeCompleted()V
    .locals 3

    .line 4075
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionMergeComplete()V

    .line 4076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 4077
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 4078
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedHideResumeEventDuringMerging:Z

    .line 4079
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantComplete()V

    .line 4081
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getConferenceHostCall()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v0

    .line 4082
    .local v0, "hostCallSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    if-eqz v0, :cond_0

    .line 4083
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->onAddParticipantComplete()V

    .line 4090
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 4091
    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 4092
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->setOngoingMergeCallIds([Ljava/lang/String;)V

    .line 4093
    return-void
.end method

.method private mergeFailed()V
    .locals 3

    .line 4096
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 4098
    :try_start_0
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4101
    goto :goto_0

    .line 4099
    :catch_0
    move-exception v0

    .line 4100
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x5

    const-string v2, "RuntimeException callSessionMergeFailed()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4103
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->setOngoingMergeCallIds([Ljava/lang/String;)V

    .line 4104
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 4105
    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 4106
    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 4107
    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 4109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 4110
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMerged:Z

    .line 4111
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 4112
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedHideResumeEventDuringMerging:Z

    .line 4113
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->closeConferenceSession()V

    .line 4114
    return-void
.end method

.method private notifyCachedVideoRingtoneButtonInfo()V
    .locals 3

    .line 4514
    const-string v0, "notifyCachedVideoRingtoneButtonInfo():"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4516
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4517
    const-string v0, "cached ringtone info is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4520
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_1

    .line 4521
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyVideoRingtoneEvent(ILjava/lang/String;)V

    .line 4524
    :cond_1
    return-void
.end method

.method private notifyCallSessionMergeComplete()V
    .locals 3

    .line 4772
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isStkCall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4773
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_0

    .line 4774
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    goto :goto_1

    .line 4776
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    goto :goto_1

    .line 4778
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_3

    .line 4780
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v1, :cond_2

    .line 4781
    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    goto :goto_0

    .line 4785
    :cond_2
    const/4 v1, 0x0

    .line 4787
    .local v1, "newSession":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4794
    .end local v1    # "newSession":Lcom/android/ims/internal/IImsCallSession;
    :goto_0
    goto :goto_1

    .line 4789
    :catch_0
    move-exception v0

    .line 4790
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x5

    const-string v2, "RuntimeException callSessionMergeComplete()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4793
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 4796
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_1
    return-void
.end method

.method private notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 4225
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4239
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalTerminateReason:I

    const/16 v3, 0x1f5

    if-eq v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRadioUnavailable:Z

    if-eqz v0, :cond_2

    .line 4240
    :cond_1
    const-string v0, "notifyCallSessionTerminated() : close while merging"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4241
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 4244
    :cond_2
    sget-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->$SwitchMap$com$mediatek$ims$ImsCallSessionProxy$CallErrorState:[I

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x5

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 4269
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_4

    .line 4273
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4274
    :catch_0
    move-exception v0

    .line 4275
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "RuntimeException callSessionTerminated()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4278
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 4279
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    goto :goto_1

    .line 4246
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_4

    .line 4252
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v3, 0xf1

    if-ne v0, v3, :cond_3

    .line 4253
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->needReportCallTerminatedForFdn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4254
    const-string v0, "65535"

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    .line 4255
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 4258
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4260
    :catch_1
    move-exception v0

    .line 4261
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string v3, "RuntimeException callSessionInitiatedFailed()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4264
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 4286
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsWaitingClose:Z

    .line 4287
    return-void

    .line 4226
    :cond_5
    :goto_2
    const-string v0, "notifyCallSessionTerminated() : mListener = NULL"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4228
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4229
    :try_start_2
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedTerminateReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 4230
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4232
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMTSetup:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    if-eq v0, v1, :cond_6

    .line 4233
    const-string v0, "has not received ECPI0, close here"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4234
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 4236
    :cond_6
    return-void

    .line 4230
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyCallSessionUpdated()V
    .locals 3

    .line 4563
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-nez v0, :cond_0

    .line 4564
    return-void

    .line 4567
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4570
    goto :goto_0

    .line 4568
    :catch_0
    move-exception v0

    .line 4569
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x5

    const-string v2, "RuntimeException callSessionUpdated()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4571
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private notifyNotRingingMtIfRequired()V
    .locals 6

    .line 1665
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1672
    const/16 v1, 0x640

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1671
    const-string v3, "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

    invoke-virtual {v0, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v0

    .line 1675
    .local v0, "serviceId":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1676
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    const-string v4, "android:imsCallID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    const-string v4, "android:imsDialString"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const-string v3, "android:imsServiceId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1679
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/mediatek/ims/ImsService;->notifyIncomingCallSession(ILcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 1680
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 1681
    return-void

    .line 1666
    .end local v0    # "serviceId":I
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNotRingingMtIfRequired: sipSessionProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContext = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1669
    return-void
.end method

.method private notifyNotificationRingtone(ILjava/lang/String;)V
    .locals 2
    .param p1, "causeNum"    # I
    .param p2, "causeText"    # Ljava/lang/String;

    .line 4527
    const-string v0, "notifyNotificationRingtone():"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4529
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_0

    .line 4530
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyNotificationRingtone(ILjava/lang/String;)V

    .line 4532
    :cond_0
    return-void
.end method

.method private notifyRemoteHeld()V
    .locals 4

    .line 4535
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4536
    return-void

    .line 4538
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 4540
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 4541
    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteState:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4544
    goto :goto_0

    .line 4542
    :catch_0
    move-exception v0

    .line 4543
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x5

    const-string v2, "RuntimeException callSessionHoldReceived()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4546
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method private notifyRemoteResumed()V
    .locals 4

    .line 4549
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4550
    return-void

    .line 4552
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 4554
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 4555
    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteState:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4558
    goto :goto_0

    .line 4556
    :catch_0
    move-exception v0

    .line 4557
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x5

    const-string v2, "RuntimeException callSessionResumeReceived()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4560
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method private onCallSessionActive()V
    .locals 3

    .line 6260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActive mCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 6261
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v0

    .line 6262
    .local v0, "videoState":I
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6263
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mStartDatausagePolling:Z

    .line 6264
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6265
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6267
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 6268
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6269
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 6270
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mStartDatausagePolling:Z

    .line 6272
    :goto_0
    return-void
.end method

.method private onCallSessionHold()V
    .locals 2

    .line 6275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHold mCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 6276
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mStartDatausagePolling:Z

    .line 6277
    return-void
.end method

.method private processMtRttWithoutPrecondition(I)V
    .locals 3
    .param p1, "remoteCapability"    # I

    .line 5490
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMtRttWithoutPrecondition()Z

    move-result v0

    .line 5492
    .local v0, "isWithoutPrecondition":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMtRttWithoutPrecondition: isWithoutPrecondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5495
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    if-nez v1, :cond_1

    .line 5496
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    .line 5498
    :cond_1
    return-void
.end method

.method private pullCall(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 4622
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4623
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->pullCall(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 4624
    return-void
.end method

.method private rejectDial()V
    .locals 2

    .line 4987
    const-string v0, "rejectDial()"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4988
    sget-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 4989
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 4990
    return-void
.end method

.method private removeRemoteCallVideoCapability()Z
    .locals 2

    .line 4905
    const-string v0, "removeRemoteCallVideoCapability()"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4907
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v0, v1, :cond_0

    .line 4908
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4909
    const/4 v0, 0x1

    return v0

    .line 4912
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendCallEventWithRat(I)V
    .locals 3
    .param p1, "msgType"    # I

    .line 5006
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5007
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "mediatek:callInfoMessageType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5008
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const-string v2, "mediatek:callType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5009
    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    const-string v2, "mediatek:ratType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5010
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingCall:Z

    const-string v2, "mediatek:incomingCall"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5011
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    const-string v2, "mediatek:emergencyCall"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5012
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->sendCallEventWithRat(Landroid/os/Bundle;)V

    .line 5013
    return-void
.end method

.method private sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 5047
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setImsPreCallInfo(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 21
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 6130
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    .line 6133
    .local v2, "mode":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6134
    .local v3, "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 6135
    .local v4, "headerValuePair":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 6136
    .local v5, "headerCount":I
    const/4 v6, 0x0

    .line 6138
    .local v6, "total":I
    const-string v7, "android.telephony.ims.extra.CALL_SUBJECT"

    invoke-virtual {v1, v7}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6139
    .local v7, "subject":Ljava/lang/String;
    const-string v8, "android.telephony.ims.extra.PRIORITY"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v8

    .line 6141
    .local v8, "priority":I
    const-string v9, "android.telephony.ims.extra.PICTURE_URL"

    invoke-virtual {v1, v9}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 6142
    .local v9, "pictureUrl":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setImsPreCallInfo Subject: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Priority: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Call-Info: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 6143
    invoke-direct {v0, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 6142
    const/4 v11, 0x2

    invoke-direct {v0, v10, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 6146
    const-string v10, ","

    if-eqz v7, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 6147
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Subject"

    invoke-direct {v0, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 6148
    invoke-direct {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6147
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6149
    add-int/lit8 v5, v5, 0x1

    .line 6152
    :cond_0
    if-eqz v9, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 6154
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 6156
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Call-Info"

    invoke-direct {v0, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 6157
    invoke-direct {v0, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6156
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6158
    add-int/lit8 v5, v5, 0x1

    .line 6161
    :cond_1
    const-string v11, "Priority"

    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    .line 6162
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 6163
    const-string v13, "urgent"

    invoke-direct {v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6162
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6164
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6166
    :cond_2
    if-nez v8, :cond_3

    if-eqz v5, :cond_3

    .line 6167
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 6168
    const-string v13, "normal"

    invoke-direct {v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6167
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6169
    add-int/lit8 v5, v5, 0x1

    .line 6172
    :cond_3
    :goto_0
    const-string v13, ""

    if-eqz v5, :cond_6

    .line 6174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 6178
    .local v14, "header":Ljava/lang/String;
    const/16 v15, 0x3e8

    .line 6179
    .local v15, "maxLength":I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    div-int v16, v16, v15

    add-int/lit8 v6, v16, 0x1

    .line 6180
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6181
    const-string v12, "1"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6182
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6183
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6184
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6185
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6186
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    if-gt v12, v6, :cond_5

    .line 6187
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v4

    const/4 v4, 0x3

    .end local v4    # "headerValuePair":Ljava/lang/StringBuilder;
    .local v18, "headerValuePair":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6188
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v4, v12, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    move/from16 v19, v5

    .end local v5    # "headerCount":I
    .local v19, "headerCount":I
    mul-int/lit16 v5, v12, 0x3e8

    move/from16 v20, v6

    .end local v6    # "total":I
    .local v20, "total":I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 6189
    mul-int/lit16 v5, v12, 0x3e8

    goto :goto_2

    :cond_4
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    .line 6188
    :goto_2
    invoke-virtual {v14, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6190
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 6186
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    goto :goto_1

    .end local v18    # "headerValuePair":Ljava/lang/StringBuilder;
    .end local v19    # "headerCount":I
    .end local v20    # "total":I
    .restart local v4    # "headerValuePair":Ljava/lang/StringBuilder;
    .restart local v5    # "headerCount":I
    .restart local v6    # "total":I
    :cond_5
    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    .end local v4    # "headerValuePair":Ljava/lang/StringBuilder;
    .end local v5    # "headerCount":I
    .end local v6    # "total":I
    .restart local v18    # "headerValuePair":Ljava/lang/StringBuilder;
    .restart local v19    # "headerCount":I
    .restart local v20    # "total":I
    goto :goto_3

    .line 6172
    .end local v12    # "i":I
    .end local v14    # "header":Ljava/lang/String;
    .end local v15    # "maxLength":I
    .end local v18    # "headerValuePair":Ljava/lang/StringBuilder;
    .end local v19    # "headerCount":I
    .end local v20    # "total":I
    .restart local v4    # "headerValuePair":Ljava/lang/StringBuilder;
    .restart local v5    # "headerCount":I
    .restart local v6    # "total":I
    :cond_6
    move-object/from16 v18, v4

    move/from16 v19, v5

    .line 6196
    .end local v4    # "headerValuePair":Ljava/lang/StringBuilder;
    .end local v5    # "headerCount":I
    .restart local v18    # "headerValuePair":Ljava/lang/StringBuilder;
    .restart local v19    # "headerCount":I
    :goto_3
    const-string v4, "android.telephony.ims.extra.LOCATION"

    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    .line 6197
    .local v4, "location":Landroid/location/Location;
    if-eqz v4, :cond_7

    .line 6198
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    .line 6199
    .local v11, "latitude":D
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    .line 6202
    .local v14, "longitude":D
    const/4 v5, 0x1

    .line 6203
    .local v5, "index":I
    const/4 v6, 0x1

    .line 6204
    const/4 v1, 0x1

    .line 6205
    .end local v19    # "headerCount":I
    .local v1, "headerCount":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v17

    .line 6206
    .local v19, "locationInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v17, v3

    .end local v3    # "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v17, "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v20, v2

    move-object/from16 v2, v19

    .end local v19    # "locationInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "locationInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v20, "mode":I
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6207
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6212
    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v3, v2, v10}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V

    move v5, v1

    goto :goto_4

    .line 6197
    .end local v1    # "headerCount":I
    .end local v5    # "index":I
    .end local v11    # "latitude":D
    .end local v14    # "longitude":D
    .end local v17    # "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "mode":I
    .local v2, "mode":I
    .restart local v3    # "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "headerCount":I
    :cond_7
    move/from16 v20, v2

    move-object/from16 v17, v3

    .end local v2    # "mode":I
    .end local v3    # "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "mode":I
    move/from16 v5, v19

    .line 6215
    .end local v19    # "headerCount":I
    .local v5, "headerCount":I
    :goto_4
    return-void
.end method

.method private setRttModeForDial(Z)V
    .locals 8
    .param p1, "isRtt"    # Z

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRttModeForDial + isRtt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1565
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1566
    return-void

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "rtt_calling_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1571
    .local v0, "isRttEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    .line 1572
    const-string v5, "carrier_config"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 1573
    .local v4, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    if-nez v4, :cond_2

    .line 1574
    const-string v2, "cacheCarrierConfiguration: No carrier config service found."

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1576
    return-void

    .line 1578
    :cond_2
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1579
    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 1578
    invoke-virtual {v4, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 1579
    const-string v6, "ignore_rtt_mode_setting_bool"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1581
    .local v5, "isRttAlwaysOnCarrierConfig":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRttEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CarrierConfig "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1583
    if-nez v0, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v6, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v2

    :goto_2
    move v0, v6

    .line 1589
    const/4 v6, 0x0

    if-eqz p1, :cond_5

    .line 1590
    const-string v3, "setRttModeForDial setRttMode 1"

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1591
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v2, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    .line 1592
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    goto :goto_3

    .line 1593
    :cond_5
    if-eqz v0, :cond_6

    .line 1594
    const-string v2, "setRttModeForDial setRttMode 2"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1595
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v1, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    goto :goto_3

    .line 1597
    :cond_6
    const-string v2, "setRttModeForDial setRttMode 0"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1598
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v3, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    .line 1601
    :goto_3
    return-void
.end method

.method private shouldNotifyCallDropByBadWifiQuality()Z
    .locals 3

    .line 4819
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4820
    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    .line 4821
    .local v0, "notifyWifiQualityDisconnectCause":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldNotifyCallDropByBadWifiQuality() :  carrier =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isUserPerfromedHangup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4823
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isUserPerfromedHangup()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRatType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4821
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4825
    if-eqz v0, :cond_0

    .line 4826
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isUserPerfromedHangup()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    if-ne v1, v2, :cond_0

    .line 4828
    const/4 v1, 0x1

    return v1

    .line 4830
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private terminateConferenceSession()V
    .locals 4

    .line 4728
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    const/16 v1, 0x66

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 4729
    const-string v0, "terminateConferenceSession() : Hangup Conference: Hangup host while merging (mtk)"

    invoke-direct {p0, v0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4732
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4734
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 4735
    .local v0, "confSession":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->terminate(I)V

    .line 4736
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/DefaultConferenceHandler;->closeConference(Ljava/lang/String;)V

    .line 4737
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4739
    .end local v0    # "confSession":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    goto :goto_0

    .line 4740
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupHostDuringMerge:Z

    .line 4741
    const-string v0, "terminateConferenceSession() : init conference object not compelted."

    invoke-direct {p0, v0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    goto :goto_0

    .line 4744
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_2

    .line 4745
    const-string v0, "terminateConferenceSession() : Hangup Conference: Hangup host while merging (aosp)"

    invoke-direct {p0, v0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4746
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 4747
    .local v0, "confSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 4748
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/DefaultConferenceHandler;->closeConference(Ljava/lang/String;)V

    .line 4749
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4751
    .end local v0    # "confSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    goto :goto_0

    .line 4752
    :cond_2
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupHostDuringMerge:Z

    .line 4755
    :goto_0
    return-void
.end method

.method private static toHex(I)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # I

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1449
    .local v0, "b":Ljava/lang/StringBuilder;
    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    .line 1450
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy;->HEX:Ljava/lang/String;

    shr-int/lit8 v2, p0, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1451
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy;->HEX:Ljava/lang/String;

    and-int/lit8 v2, p0, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "before"    # Ljava/lang/String;

    .line 6218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6219
    const-string v0, ""

    return-object v0

    .line 6222
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 6223
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6224
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 6225
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, v0, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6229
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toggleRttAudioIndication()V
    .locals 8

    .line 5509
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5510
    return-void

    .line 5514
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5515
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 5516
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 5515
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 5516
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 5517
    .local v1, "bundle":Landroid/os/PersistableBundle;
    const-string v2, "mtk_rtt_audio_indication_supported_bool"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x2

    if-nez v2, :cond_1

    .line 5519
    const-string v2, "toggleRttAudioIndication: carrier config not supported."

    invoke-direct {p0, v2, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5521
    return-void

    .line 5524
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5532
    .local v2, "callId":I
    iget-boolean v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 5533
    const-string v3, "toggleRttAudioIndication: enable RTT audio indication."

    invoke-direct {p0, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5534
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->toggleRttAudioIndication(IILandroid/os/Message;)V

    goto :goto_0

    .line 5535
    :cond_2
    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    .line 5536
    const-string v5, "toggleRttAudioIndication: disable RTT audio indication."

    invoke-direct {p0, v5, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5537
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, v2, v3, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->toggleRttAudioIndication(IILandroid/os/Message;)V

    .line 5539
    :cond_3
    :goto_0
    return-void
.end method

.method private tryTurnOnVolteForE911(Z)V
    .locals 11
    .param p1, "isEmergencyNumber"    # Z

    .line 5296
    if-eqz p1, :cond_8

    .line 5297
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 5298
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    .line 5299
    .local v1, "volteEnabledByPlatform":Z
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v2

    .line 5300
    .local v2, "volteEnabledByUser":Z
    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 5303
    .local v3, "isSimAbsent":Z
    :goto_0
    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 5304
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 5305
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    :cond_1
    move v4, v5

    .line 5306
    .local v4, "isSimLocked":Z
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isImsEccSupported()Z

    move-result v6

    .line 5308
    .local v6, "eccSupport":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tryTurnOnVolteForE911() : volteEnabledByPlatform "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", volteEnabledByUser "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", isImsEccSupported "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", isSimLocked "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", isSimAbsent "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5313
    if-nez v1, :cond_3

    if-nez v6, :cond_5

    :cond_3
    if-nez v2, :cond_4

    if-nez v3, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 5316
    :cond_5
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v7, v8, v9, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->triggerSendCfgForVolte(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;II)V

    .line 5317
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v7, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->setEnableVolteForImsEcc(Z)V

    .line 5321
    :cond_6
    sget-object v7, Lcom/mediatek/ims/OperatorUtils$OPID;->OP12:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v7, v8}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5322
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isEmergencyAddressRegistered()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v7

    if-nez v7, :cond_8

    .line 5323
    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const-string v8, "persist.vendor.mtk.volte.enable"

    invoke-static {v8, v7}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v7

    .line 5325
    .local v7, "volteOn":I
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v8}, Lcom/mediatek/ims/ImsServiceCallTracker;->getEnableVolteForImsEcc()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 5326
    const/4 v7, 0x1

    .line 5328
    :cond_7
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v8, v9, v10, v7, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->triggerSendCfgForVowifi(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;III)V

    .line 5329
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v8, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->setEnableVowifiForImsEcc(Z)V

    .line 5333
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v1    # "volteEnabledByPlatform":Z
    .end local v2    # "volteEnabledByUser":Z
    .end local v3    # "isSimAbsent":Z
    .end local v4    # "isSimLocked":Z
    .end local v6    # "eccSupport":Z
    .end local v7    # "volteOn":I
    :cond_8
    return-void
.end method

.method private turnOffAirplaneMode()V
    .locals 4

    .line 5133
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "turnOffAirplaneMode()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5135
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 5137
    const-string v1, "turnOffAirplaneMode() : Turning off airplane mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5140
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5144
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5145
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5147
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateCallStateForWifiOffload(I)V
    .locals 6
    .param p1, "callState"    # I

    .line 4174
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 4175
    const-string v0, "updateCallStateForWifiOffload() : skip, no WOS!"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4176
    return-void

    .line 4179
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4180
    const-string v0, "updateCallStateForWifiOffload() : skip, no call ID!"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4181
    return-void

    .line 4184
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4185
    .local v0, "callId":I
    const/4 v2, 0x1

    .line 4187
    .local v2, "callType":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v3, v1, :cond_3

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 4191
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 4189
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 4195
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 4212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallStateForWifiOffload() : skip, unexpected state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4214
    return-void

    .line 4204
    :pswitch_0
    const/4 v1, 0x1

    .line 4205
    .local v1, "wosCallState":I
    goto :goto_2

    .line 4201
    .end local v1    # "wosCallState":I
    :pswitch_1
    const/4 v1, 0x2

    .line 4202
    .restart local v1    # "wosCallState":I
    goto :goto_2

    .line 4209
    .end local v1    # "wosCallState":I
    :pswitch_2
    const/4 v1, 0x0

    .line 4210
    .restart local v1    # "wosCallState":I
    nop

    .line 4218
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-interface {v3, v4, v0, v2, v1}, Lcom/mediatek/wfo/IWifiOffloadService;->updateCallState(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4221
    goto :goto_3

    .line 4219
    :catch_0
    move-exception v3

    .line 4220
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v4, 0x5

    const-string v5, "updateCallStateForWifiOffload() : RemoteException in Wos.updateCallState()"

    invoke-direct {p0, v5, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4222
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateCallType(II)V
    .locals 4
    .param p1, "callMode"    # I
    .param p2, "videoState"    # I

    .line 4917
    const/4 v0, 0x2

    const/16 v1, 0x15

    if-eq p1, v1, :cond_2

    const/16 v1, 0x17

    if-eq p1, v1, :cond_2

    const/16 v1, 0x19

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 4951
    :cond_0
    const/16 v1, 0x14

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_3

    .line 4953
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v0, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4954
    const-string v1, "updateCallType() : mCallType = CALL_TYPE_VOICE"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    goto :goto_2

    .line 4919
    :cond_2
    :goto_0
    const-string v1, "updateCallType() : mCallType = CALL_TYPE_VT"

    const/4 v2, 0x4

    packed-switch p2, :pswitch_data_0

    .line 4940
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v2, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4941
    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    goto :goto_1

    .line 4935
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v2, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4936
    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4938
    goto :goto_1

    .line 4930
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x6

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4931
    const-string v1, "updateCallType() : mCallType = CALL_TYPE_VT_RX"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4933
    goto :goto_1

    .line 4925
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x5

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4926
    const-string v1, "updateCallType() : mCallType = CALL_TYPE_VT_TX"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4928
    goto :goto_1

    .line 4923
    :pswitch_3
    nop

    .line 4946
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4947
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x1

    const-string v3, "mediatek:wasVideoCall"

    invoke-virtual {v1, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 4948
    const-string v1, "updateCallType() : EXTRA_WAS_VIDEO_CALL = true"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4956
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4957
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateIncomingVideoRingtone(II)V
    .locals 2
    .param p1, "callMode"    # I
    .param p2, "isIbt"    # I

    .line 4064
    const/4 v0, 0x1

    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    .line 4065
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput p2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 4066
    :cond_0
    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    .line 4067
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput p2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0

    .line 4069
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 4072
    :goto_0
    return-void
.end method

.method private updateIsIbt([Ljava/lang/String;)I
    .locals 4
    .param p1, "callInfo"    # [Ljava/lang/String;

    .line 4665
    const/4 v0, 0x1

    .line 4667
    .local v0, "isIbt":I
    const/4 v1, 0x2

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 4668
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4670
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIsIbt() : isIbt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4672
    if-nez v0, :cond_1

    .line 4673
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    goto :goto_0

    .line 4676
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x1

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 4679
    :goto_0
    return v0
.end method

.method private updateOutgoingVideoRingtone(II)V
    .locals 3
    .param p1, "callMode"    # I
    .param p2, "isIbt"    # I

    .line 4029
    const-string v0, "persist.vendor.vilte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4031
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 4032
    .local v0, "callType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOutgoingVideoRingtone(): callType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4035
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4051
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, -0x1

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_1

    .line 4044
    :cond_1
    :goto_0
    const/16 v1, 0x15

    if-ne p1, v1, :cond_2

    if-lt p2, v2, :cond_2

    .line 4045
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput p2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_1

    .line 4047
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 4055
    .end local v0    # "callType":I
    :cond_3
    :goto_1
    return-void
.end method

.method private updateRat(II)Z
    .locals 8
    .param p1, "ratType"    # I
    .param p2, "callRat"    # I

    .line 4296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRat() : ratType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callRat is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4299
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    if-ne v0, p2, :cond_0

    .line 4300
    return v2

    .line 4304
    :cond_0
    const/4 v0, 0x0

    .line 4307
    .local v0, "newCallRat":I
    const/16 v3, 0x14

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    .line 4308
    move v0, p2

    goto :goto_2

    .line 4313
    :cond_1
    if-ne p1, v4, :cond_5

    .line 4314
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getDataNetworkType()I

    move-result v5

    .line 4315
    .local v5, "dataNetworkType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRat() : dataNetworkType is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4317
    const/16 v6, 0xd

    if-eq v5, v6, :cond_3

    const/16 v6, 0x13

    if-ne v5, v6, :cond_2

    goto :goto_0

    .line 4320
    :cond_2
    if-ne v5, v3, :cond_4

    .line 4321
    const/4 v0, 0x3

    goto :goto_1

    .line 4319
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 4323
    .end local v5    # "dataNetworkType":I
    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    if-ne p1, v1, :cond_6

    .line 4324
    const/4 v0, 0x2

    goto :goto_2

    .line 4326
    :cond_6
    const/4 v0, 0x0

    .line 4330
    :goto_2
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    .line 4331
    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    if-eq v5, v0, :cond_d

    .line 4332
    iput v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    .line 4337
    const/4 v5, 0x3

    if-ne v0, v4, :cond_7

    .line 4338
    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "radioTech":Ljava/lang/String;
    goto :goto_3

    .line 4339
    .end local v3    # "radioTech":Ljava/lang/String;
    :cond_7
    if-ne v0, v1, :cond_8

    .line 4340
    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "radioTech":Ljava/lang/String;
    goto :goto_3

    .line 4341
    .end local v3    # "radioTech":Ljava/lang/String;
    :cond_8
    if-ne v0, v5, :cond_9

    .line 4342
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "radioTech":Ljava/lang/String;
    goto :goto_3

    .line 4344
    .end local v3    # "radioTech":Ljava/lang/String;
    :cond_9
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 4346
    .restart local v3    # "radioTech":Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "CallRadioTech"

    invoke-virtual {v6, v7, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 4349
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    if-eqz v6, :cond_c

    .line 4350
    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    if-ne v7, v1, :cond_a

    .line 4351
    invoke-virtual {v6, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateCallRat(I)V

    goto :goto_4

    .line 4352
    :cond_a
    if-ne v7, v5, :cond_b

    .line 4353
    invoke-virtual {v6, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateCallRat(I)V

    goto :goto_4

    .line 4355
    :cond_b
    invoke-virtual {v6, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateCallRat(I)V

    .line 4358
    :cond_c
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRat() : mRatType is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", mCallRat is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallRat:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4360
    return v4

    .line 4334
    .end local v3    # "radioTech":Ljava/lang/String;
    :cond_d
    return v2
.end method

.method private updateShouldUpdateAddress()V
    .locals 4

    .line 4639
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP06:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4640
    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4641
    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP_EIOT:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4642
    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByPau:Z

    .line 4646
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateDisplayNameByPau:Z

    .line 4648
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP130:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4649
    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP120:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4650
    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP132:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4651
    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OPOi:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4652
    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByEcpi:Z

    .line 4654
    return-void
.end method

.method private updateShouldUseSipField()V
    .locals 2

    .line 4657
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP236:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 4658
    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressBySipField:Z

    .line 4660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateShouldUseSipField() : mShouldUpdateAddressBySipField = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressBySipField:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4662
    return-void
.end method

.method private updateVideoDirection()V
    .locals 3

    .line 4000
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mFwkPause:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOverallPause:Z

    .line 4001
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 4002
    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOverallPause:Z

    if-eqz v2, :cond_2

    .line 4003
    goto :goto_2

    .line 4004
    :cond_2
    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getVideoDirectionFromVideoState(I)I

    move-result v1

    :goto_2
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 4006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoDirection() : mOverallPause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOverallPause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 4009
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 6
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept() : original call Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accept as: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1038
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v4, 0x1

    invoke-virtual {v0, p0, v4, v2, v3}, Lcom/mediatek/ims/ImsService;->cleanMtkCallSessionProxyIfNeed(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;I)V

    .line 1041
    invoke-virtual {p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1043
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1044
    invoke-static {v0, v2}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    const-string v0, "accept() : need to auto upgrade to RTT call later."

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1046
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNeedUpgradeToRTT:Z

    goto :goto_0

    .line 1048
    :cond_0
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->setRttModeForDial(Z)V

    .line 1055
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    const-string v3, "dialstring"

    invoke-virtual {v0, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1057
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "m"

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1058
    .local v0, "m":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "str"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1060
    .local v2, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accept() : m = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", str = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1062
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v3, :cond_2

    .line 1063
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 1065
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1066
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v3, :cond_2

    .line 1067
    const-string v3, "callSessionTerminated !"

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1068
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1072
    :cond_2
    return-void

    .line 1076
    .end local v0    # "m":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v0, v1, :cond_4

    .line 1077
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->accept()V

    goto :goto_2

    .line 1087
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 1101
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "videoMode":I
    goto :goto_1

    .line 1095
    .end local v0    # "videoMode":I
    :pswitch_1
    const/4 v0, 0x2

    .line 1096
    .restart local v0    # "videoMode":I
    goto :goto_1

    .line 1098
    .end local v0    # "videoMode":I
    :pswitch_2
    const/4 v0, 0x3

    .line 1099
    .restart local v0    # "videoMode":I
    goto :goto_1

    .line 1089
    .end local v0    # "videoMode":I
    :pswitch_3
    const/4 v0, 0x0

    .line 1090
    .restart local v0    # "videoMode":I
    goto :goto_1

    .line 1092
    .end local v0    # "videoMode":I
    :pswitch_4
    const/4 v0, 0x1

    .line 1093
    .restart local v0    # "videoMode":I
    nop

    .line 1104
    :goto_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->acceptVideoCall(II)V

    .line 1106
    .end local v0    # "videoMode":I
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public approveEccRedial(Z)V
    .locals 4
    .param p1, "isAprroved"    # Z

    .line 1439
    move v0, p1

    .line 1440
    .local v0, "approve":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->approveEccRedial(IILandroid/os/Message;)V

    .line 1441
    if-eqz p1, :cond_0

    .line 1442
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->turnOffAirplaneMode()V

    .line 1444
    :cond_0
    return-void
.end method

.method public callTerminated()V
    .locals 5

    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callTerminated() : mCallNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->detailLog(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/DefaultConferenceHandler;->closeConference(Ljava/lang/String;)V

    .line 1612
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRttEnabledForCallSession:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    if-eqz v0, :cond_1

    .line 1613
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsService;->getRttEmcGuardTimerUtil(I)Lcom/mediatek/ims/RttEmcGuardTimerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->startRttEmcGuardTimer()V

    .line 1615
    :cond_1
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto/16 :goto_3

    .line 1621
    :cond_2
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    .line 1622
    .local v0, "reportNotRingingMt":Z
    if-eqz v0, :cond_3

    .line 1623
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyNotRingingMtIfRequired()V

    .line 1625
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    .line 1627
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-nez v4, :cond_4

    .line 1628
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1629
    :try_start_0
    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    .line 1630
    const-string v3, "callTerminated() :mIsNeedCacheTerminationEarly is true"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1632
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1635
    :cond_4
    :goto_0
    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 1636
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    if-eqz v1, :cond_5

    .line 1637
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 1638
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    goto :goto_1

    .line 1640
    :cond_5
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 1642
    :goto_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v1, :cond_6

    .line 1643
    const-string v1, "callTerminated() : get disconnect cause directly from +ESIPCPI"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1645
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    .line 1646
    :cond_6
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInMergeProgress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isUserPerfromedHangup()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1651
    const-string v1, "callTerminated() : No need notify disconnect when call is in merge progress"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    goto :goto_2

    .line 1654
    :cond_7
    const-string v1, "callTerminated() : get disconnect cause from AT+CEER"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1656
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1657
    .local v1, "result":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-interface {v2, v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getLastCallFailCause(ILandroid/os/Message;)V

    .line 1661
    .end local v1    # "result":Landroid/os/Message;
    :goto_2
    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallStateForWifiOffload(I)V

    .line 1662
    return-void

    .line 1617
    .end local v0    # "reportNotRingingMt":Z
    :cond_8
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callTerminated() : mState is INVALID, return: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1619
    return-void
.end method

.method public close()V
    .locals 6

    .line 743
    const-string v0, "close() : ImsCallSessionProxy is closed!!! "

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 746
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 747
    const-string v0, "close() : ImsCallSessionProxy already closed"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 748
    return-void

    .line 750
    :cond_0
    iput v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 751
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/mediatek/ims/ImsServiceCallTracker;->removeCallConnection(Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 752
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallInfo(Landroid/os/Handler;)V

    .line 753
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForEconfResult(Landroid/os/Handler;)V

    .line 754
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallProgressIndicator(Landroid/os/Handler;)V

    .line 755
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallModeChangeIndicator(Landroid/os/Handler;)V

    .line 756
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForVideoCapabilityIndicator(Landroid/os/Handler;)V

    .line 757
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForEctResult(Landroid/os/Handler;)V

    .line 758
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForImsConfInfoUpdate(Landroid/os/Handler;)V

    .line 760
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 761
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForSpeechCodecInfo(Landroid/os/Handler;)V

    .line 762
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForImsRedialEccInd(Landroid/os/Handler;)V

    .line 763
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForSipHeaderInd(Landroid/os/Handler;)V

    .line 764
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallRatIndication(Landroid/os/Handler;)V

    .line 765
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallAdditionalInfo(Landroid/os/Handler;)V

    .line 766
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForDetailImsRegistrationInd(Landroid/os/Handler;)V

    .line 769
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForRttCapabilityIndicator(Landroid/os/Handler;)V

    .line 770
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForRttModifyResponse(Landroid/os/Handler;)V

    .line 771
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForRttTextReceive(Landroid/os/Handler;)V

    .line 772
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForRttModifyRequestReceive(Landroid/os/Handler;)V

    .line 773
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForRttAudioIndicator(Landroid/os/Handler;)V

    .line 775
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 776
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForVideoRingtoneInfo(Landroid/os/Handler;)V

    .line 777
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 779
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mStartDatausagePolling:Z

    .line 780
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v2

    .line 782
    .local v2, "vtProvider":Lcom/android/ims/internal/IImsVideoCallProvider;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 783
    const-string v4, "close() : Start VtProvider setUIMode"

    invoke-direct {p0, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 785
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    const/high16 v4, 0x10000

    invoke-virtual {v1, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSetUIMode(I)V

    .line 786
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVtProviderListener:Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

    invoke-virtual {v1, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->removeVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V

    .line 787
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 790
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/mediatek/ims/DefaultConferenceHandler;->closeConference(Ljava/lang/String;)V

    .line 791
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    .line 792
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    .line 795
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    if-eqz v4, :cond_2

    .line 797
    :try_start_0
    invoke-interface {v1, v4}, Lcom/mediatek/wfo/IWifiOffloadService;->unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    goto :goto_0

    .line 798
    :catch_0
    move-exception v1

    .line 799
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v4, 0x5

    const-string v5, "close() : RemoteException when unregisterForHandoverEvent"

    invoke-direct {p0, v5, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 803
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    if-eqz v1, :cond_3

    .line 804
    invoke-virtual {v1}, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;->close()V

    .line 805
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    .line 808
    :cond_3
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    .line 809
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 810
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedUserInfo:Landroid/os/AsyncResult;

    .line 811
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedSuppServiceInfo:Landroid/os/AsyncResult;

    .line 813
    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

    .line 814
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    .line 815
    return-void
.end method

.method explicitCallTransferWithCallback(Landroid/os/Message;Landroid/os/Messenger;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "target"    # Landroid/os/Messenger;

    .line 1335
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctMsg:Landroid/os/Message;

    .line 1336
    iput-object p2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctTarget:Landroid/os/Messenger;

    .line 1337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    .line 1338
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1332
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    .locals 1

    .line 4574
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    if-nez v0, :cond_0

    .line 4575
    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    .line 4577
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    return-object v0
.end method

.method public getHeaderCallId()Ljava/lang/String;
    .locals 1

    .line 5417
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHeaderCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getImsExtSelfActivator(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callSessionProxy"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p4, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p5, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p6, "phoneId"    # I

    .line 5290
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    move-result-object v0

    .line 5291
    .local v0, "facotry":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/mediatek/ims/plugin/ExtensionPluginFactory;->makeImsSelfActivator(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    move-result-object v1

    return-object v1
.end method

.method public getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;
    .locals 2

    .line 5282
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 5283
    .local v0, "facotry":Lcom/mediatek/ims/plugin/OemPluginFactory;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v1

    return-object v1
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getMtkCallSessionProxy()Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 1

    .line 5274
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 839
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 844
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoCallProvider() : mVTProvider = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1422
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    if-eqz v0, :cond_0

    .line 1423
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0

    .line 1425
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1190
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1191
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hold(ILandroid/os/Message;)V

    .line 1192
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1342
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1343
    .local v0, "result":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 1344
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    .line 1345
    array-length v1, p1

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 1346
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1347
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/DefaultConferenceHandler;->tryAddParticipant(Ljava/lang/String;)V

    .line 1349
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1352
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inviteParticipants() : fail since no call ID or participants is null CallID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Participant number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1356
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 1358
    :try_start_0
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    goto :goto_0

    .line 1359
    :catch_0
    move-exception v1

    .line 1360
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "RuntimeException callSessionInviteParticipantsRequestFailed()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1365
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public isInCall()Z
    .locals 1

    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public isIncomingCallMultiparty()Z
    .locals 3

    .line 1435
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "incoming_mpty"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public isMultiparty()Z
    .locals 3

    .line 1431
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "mpty"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public merge()V
    .locals 12

    .line 1203
    const-string v0, "merge()"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1204
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getMaximumConferenceSize()I

    move-result v0

    .line 1205
    .local v0, "maximumConferenceSize":I
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isNeedBlockMergeAction()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mActiveParticipantsNum:I

    if-ne v2, v0, :cond_0

    .line 1206
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 1207
    return-void

    .line 1209
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    .line 1210
    .local v2, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v3, 0x0

    .line 1212
    .local v3, "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP165:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1213
    invoke-static {v4, v5}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP152:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1214
    invoke-static {v4, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP117:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1215
    invoke-static {v4, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP131:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1216
    invoke-static {v4, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP125:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1217
    invoke-static {v4, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP136_Peru:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1218
    invoke-static {v4, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/mediatek/ims/OperatorUtils$OPID;->OP18:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1219
    invoke-static {v4, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    .line 1222
    .local v4, "needSwapConfToFg":Z
    :goto_1
    sget-object v7, Lcom/mediatek/ims/OperatorUtils$OPID;->OP16:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1223
    invoke-static {v7, v8}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/mediatek/ims/OperatorUtils$OPID;->OP18:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1224
    invoke-static {v7, v8}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/mediatek/ims/OperatorUtils$OPID;->OP147:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1225
    invoke-static {v7, v8}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v6

    .line 1228
    .local v7, "needSwapVtConfToFg":Z
    :goto_3
    const/4 v8, 0x5

    if-nez v2, :cond_5

    .line 1229
    const-string v1, "merge() : can\'t find this call callInfo"

    invoke-direct {p0, v1, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1230
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 1231
    return-void

    .line 1234
    :cond_5
    iget-object v9, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v10, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v9, v10, :cond_6

    .line 1235
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    sget-object v10, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v3

    goto :goto_4

    .line 1236
    :cond_6
    iget-object v9, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v10, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v9, v10, :cond_7

    .line 1237
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    sget-object v10, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v3

    .line 1240
    :cond_7
    :goto_4
    if-nez v3, :cond_8

    .line 1241
    const-string v1, "merge() : can\'t find another call\'s callInfo"

    invoke-direct {p0, v1, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1242
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 1243
    return-void

    .line 1246
    :cond_8
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v8

    if-ne v8, v6, :cond_9

    .line 1247
    move v4, v7

    .line 1249
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "merge() : merge command- my call: conference type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " call status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " beMergedCall: conference type="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, v3, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " needSwapConfToFg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1254
    iget-object v8, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iput-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 1255
    iget-object v8, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 1256
    iget-object v8, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iput-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 1257
    iget-object v8, v3, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 1259
    iput-boolean v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 1261
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v8

    .line 1263
    .local v8, "confHdler":Lcom/mediatek/ims/DefaultConferenceHandler;
    iget-boolean v9, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-nez v9, :cond_a

    iget-boolean v9, v3, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-nez v9, :cond_a

    .line 1265
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    new-array v1, v1, [Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    aput-object v10, v1, v5

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    aput-object v5, v1, v6

    invoke-virtual {v9, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->setOngoingMergeCallIds([Ljava/lang/String;)V

    .line 1266
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xcd

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1267
    .local v1, "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->merge(Landroid/os/Message;)V

    .line 1268
    iput-boolean v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 1269
    iput-boolean v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    .line 1271
    iget-object v5, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iget-object v6, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iget-object v9, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    iget-object v10, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {v8, v5, v6, v9, v10}, Lcom/mediatek/ims/DefaultConferenceHandler;->firstMerge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1273
    .end local v1    # "result":Landroid/os/Message;
    :cond_a
    iget-boolean v5, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    const/16 v9, 0xce

    if-ne v5, v6, :cond_b

    iget-boolean v5, v3, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-ne v5, v6, :cond_b

    .line 1275
    const-string v5, "merge() : conference call merge conference call"

    invoke-direct {p0, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1276
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1277
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6, v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    .line 1279
    return-void

    .line 1282
    .end local v1    # "result":Landroid/os/Message;
    :cond_b
    nop

    .line 1283
    iget-boolean v5, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v5, :cond_c

    iget-object v5, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    goto :goto_5

    :cond_c
    iget-object v5, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 1282
    :goto_5
    invoke-virtual {v8, v5}, Lcom/mediatek/ims/DefaultConferenceHandler;->tryAddParticipant(Ljava/lang/String;)V

    .line 1284
    const-string v5, "merge() : active conference call merge background normal call"

    if-nez v4, :cond_e

    .line 1286
    iget-boolean v6, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v6, :cond_d

    .line 1287
    invoke-direct {p0, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1288
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1289
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6, v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    goto :goto_6

    .line 1292
    .end local v1    # "result":Landroid/os/Message;
    :cond_d
    const-string v5, "merge() : active normal call merge background conference call"

    invoke-direct {p0, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1293
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1294
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v6, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 1295
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1294
    invoke-interface {v5, v6, v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    goto :goto_6

    .line 1300
    .end local v1    # "result":Landroid/os/Message;
    :cond_e
    iget-boolean v10, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v10, :cond_f

    iget-object v10, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v11, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v10, v11, :cond_f

    .line 1301
    invoke-direct {p0, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1302
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1303
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6, v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    goto :goto_6

    .line 1305
    .end local v1    # "result":Landroid/os/Message;
    :cond_f
    iget-boolean v5, v3, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v5, :cond_10

    iget-object v5, v3, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v10, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v5, v10, :cond_10

    .line 1308
    const-string v5, "merge() : beMergedCall in foreground merge bg normal call"

    invoke-direct {p0, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1309
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1310
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v6, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 1311
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1310
    invoke-interface {v5, v6, v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    goto :goto_6

    .line 1314
    .end local v1    # "result":Landroid/os/Message;
    :cond_10
    const-string v5, "merge() : swapping before merge"

    invoke-direct {p0, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1315
    iput-boolean v6, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    .line 1316
    iput-boolean v6, v3, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    .line 1317
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xd2

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1318
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->swap(Landroid/os/Message;)V

    .line 1322
    :goto_6
    return-void
.end method

.method public onAddParticipantComplete()V
    .locals 2

    .line 4603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddParticipantComplete(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCallSessionProxy"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    if-eqz v0, :cond_0

    .line 4605
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->resetWrapper(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    .line 4607
    :cond_0
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 1

    .line 6280
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    if-eqz v0, :cond_0

    .line 6281
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->onRequestCallDataUsage()V

    .line 6283
    :cond_0
    return-void
.end method

.method public reject(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 1110
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1111
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getHangupCause(I)I

    move-result v0

    .line 1114
    .local v0, "cause":I
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalTerminateReason:I

    .line 1116
    if-gtz v0, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->reject(I)V

    goto :goto_0

    .line 1119
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->reject(II)V

    .line 1121
    .end local v0    # "cause":I
    :goto_0
    goto :goto_1

    .line 1122
    :cond_1
    const/4 v0, 0x5

    const-string v1, "reject() : Reject Call fail since there is no call ID. Abnormal Case"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1124
    :goto_1
    return-void
.end method

.method public removeLastParticipant()V
    .locals 6

    .line 5393
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 5394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLastParticipant() : fail since no call ID CallID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5396
    return-void

    .line 5399
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5400
    .local v0, "size":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 5402
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipantsList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5403
    .local v1, "addr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getConfParticipantUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5404
    .local v2, "participantUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xcf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 5405
    .local v3, "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 5408
    .end local v1    # "addr":Ljava/lang/String;
    .end local v2    # "participantUri":Ljava/lang/String;
    .end local v3    # "result":Landroid/os/Message;
    goto :goto_0

    .line 5409
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeLastParticipant() : Participant number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5411
    const/4 v1, 0x2

    const-string v2, "removeLastParticipant() : terminate"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5412
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 5414
    :goto_0
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1369
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1370
    .local v0, "result":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 1371
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    .line 1372
    array-length v2, p1

    iput v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 1373
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 1374
    aget-object v1, p1, v1

    .line 1375
    .local v1, "addr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getConfParticipantUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1376
    .local v2, "participantUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 1378
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/ims/DefaultConferenceHandler;->tryRemoveParticipant(Ljava/lang/String;)V

    .line 1379
    .end local v1    # "addr":Ljava/lang/String;
    .end local v2    # "participantUri":Ljava/lang/String;
    goto :goto_0

    .line 1380
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeParticipants() : fail since no call ID or participants is null CallID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Participant number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1384
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 1386
    :try_start_0
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    goto :goto_0

    .line 1387
    :catch_0
    move-exception v1

    .line 1388
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "RuntimeException callSessionRemoveParticipantsRequestFailed()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1393
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1196
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1197
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->resume(ILandroid/os/Message;)V

    .line 1198
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1397
    iput-object p2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    .line 1398
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1399
    .local v0, "local_result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 1400
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 10
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1461
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1462
    return-void

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1466
    .local v0, "callId":I
    if-nez p1, :cond_1

    return-void

    .line 1469
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1470
    .local v1, "length":I
    const/4 v2, 0x0

    .line 1471
    .local v2, "encodeText":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1473
    .local v3, "utf8_len":I
    :try_start_0
    const-string v4, "utf-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1474
    .local v4, "bytes_utf8":[B
    if-eqz v4, :cond_2

    array-length v5, v4

    move v3, v5

    .line 1475
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1476
    .local v5, "sbuild":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_3

    .line 1477
    new-instance v7, Ljava/lang/Byte;

    aget-byte v8, v4, v6

    invoke-direct {v7, v8}, Ljava/lang/Byte;-><init>(B)V

    .line 1478
    .local v7, "b":Ljava/lang/Byte;
    invoke-virtual {v7}, Ljava/lang/Byte;->intValue()I

    move-result v8

    .line 1479
    .local v8, "ch":I
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->toHex(I)Ljava/lang/String;

    move-result-object v9

    .line 1480
    .local v9, "bb":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    nop

    .end local v7    # "b":Ljava/lang/Byte;
    .end local v8    # "ch":I
    .end local v9    # "bb":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1482
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1483
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendRttMessage rttMessage= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " len ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1484
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1485
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " encodeText.length= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    .line 1486
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 1483
    invoke-direct {p0, v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    .end local v4    # "bytes_utf8":[B
    .end local v5    # "sbuild":Ljava/lang/StringBuilder;
    nop

    .line 1492
    if-eqz v2, :cond_4

    if-lez v3, :cond_4

    .line 1493
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v0, v2, v3, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendRttText(ILjava/lang/String;ILandroid/os/Message;)V

    .line 1495
    :cond_4
    return-void

    .line 1488
    :catch_0
    move-exception v4

    .line 1489
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v5, 0x5

    const-string v6, "sendRttMessage: UnSupportedEncodingException"

    invoke-direct {p0, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1490
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "to"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1504
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1505
    const-string v0, "sendRttModifyRequest() :call already gone"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1506
    return-void

    .line 1509
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRttModifyRequest() : to = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1510
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1511
    return-void

    .line 1513
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1514
    .local v0, "callId":I
    if-nez p1, :cond_2

    .line 1515
    const/4 v1, 0x5

    const-string v2, "sendRttModifyRequest invalid ImsCallProfile"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1517
    return-void

    .line 1519
    :cond_2
    iget-object v2, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 1520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendRttModifyRequest upgrade mCallId= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1522
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0, v4, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendRttModifyRequest(IILandroid/os/Message;)V

    .line 1523
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    goto :goto_0

    .line 1525
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRttModifyRequest downgrade mCallId= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1527
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendRttModifyRequest(IILandroid/os/Message;)V

    .line 1529
    :goto_0
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 4
    .param p1, "response"    # Z

    .line 1537
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1538
    return-void

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1541
    .local v0, "callId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRttModifyResponse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1543
    xor-int/lit8 v1, p1, 0x1

    .line 1544
    .local v1, "intResponse":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttModifyRequestResponse(IILandroid/os/Message;)V

    .line 1545
    if-eqz p1, :cond_1

    .line 1546
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEnableSendRttBom:Z

    .line 1548
    :cond_1
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 1414
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1415
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendUSSI(Ljava/lang/String;Landroid/os/Message;)V

    .line 1416
    return-void
.end method

.method public setImsCallMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 5384
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsCallMode:I

    .line 5385
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5386
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsRingingRedirect:Z

    .line 5387
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCallMode(ILandroid/os/Message;)V

    .line 5389
    :cond_0
    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 854
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 856
    const/4 v0, 0x2

    if-eqz p1, :cond_5

    .line 859
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 860
    const-string v1, "setListener(), session terminated, notify terminated again."

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 864
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 865
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe6

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedTerminateReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 867
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 868
    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedTerminateReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 869
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsNeedCacheTerminationEarly:Z

    .line 871
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 873
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedUserInfo:Landroid/os/AsyncResult;

    if-eqz v1, :cond_3

    .line 874
    const-string v1, "setListener(), has unhandled ImsConference CEP"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 875
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 876
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedUserInfo:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 878
    :cond_2
    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedUserInfo:Landroid/os/AsyncResult;

    .line 886
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 887
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedSuppServiceInfo:Landroid/os/AsyncResult;

    if-eqz v0, :cond_4

    .line 888
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 890
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 891
    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedSuppServiceInfo:Landroid/os/AsyncResult;

    .line 893
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 897
    :cond_5
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    if-eqz v1, :cond_6

    .line 898
    const-string v1, "setListener(), session terminated and no listener, close it."

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 900
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 903
    :cond_6
    :goto_1
    return-void
.end method

.method public setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V
    .locals 0
    .param p1, "callSessionProxy"    # Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 5278
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 5279
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .line 907
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 908
    return-void
.end method

.method public setWifiPdnOOSState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 6288
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWifiPdnOOSState:I

    iput v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPreWifiPdnOOSState:I

    .line 6289
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWifiPdnOOSState:I

    .line 6290
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 15
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 913
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    invoke-direct {p0, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->isCallPull(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    .line 914
    invoke-direct/range {p0 .. p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->pullCall(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 915
    iput-boolean v9, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 916
    iput-object v1, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    .line 917
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateShouldUpdateAddress()V

    .line 918
    return-void

    .line 923
    :cond_0
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    iget v4, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5, v3, v4}, Lcom/mediatek/ims/ImsService;->cleanMtkCallSessionProxyIfNeed(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;I)V

    .line 925
    const-string v2, "oir"

    invoke-virtual {v8, v2, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v2

    .line 926
    .local v2, "clirMode":I
    iget v3, v8, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v9

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iput-boolean v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    .line 927
    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v3, v6}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v10

    .line 929
    .local v10, "subId":I
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v3

    if-nez v3, :cond_4

    .line 931
    sget-object v3, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 932
    invoke-static {v3, v6}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v3

    .line 933
    .local v3, "isNAPriorityClirSupported":Z
    sget-object v6, Lcom/mediatek/ims/OperatorUtils$OPID;->OP50:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v7, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v6, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v6

    xor-int/2addr v6, v9

    .line 935
    .local v6, "ignoreClirWhenEcc":Z
    if-eqz v3, :cond_2

    if-ne v2, v9, :cond_2

    .line 937
    const-string v7, "*82"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    iget-boolean v7, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    .line 940
    :cond_3
    const-string v7, "start() : Prior CLIR supported, *82 or ECC is higher priority than CLIR invocation."

    invoke-direct {p0, v7, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 942
    const/4 v2, 0x0

    move v11, v2

    goto :goto_1

    .line 946
    .end local v3    # "isNAPriorityClirSupported":Z
    .end local v6    # "ignoreClirWhenEcc":Z
    :cond_4
    move v11, v2

    .end local v2    # "clirMode":I
    .local v11, "clirMode":I
    :goto_1
    iget-boolean v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    if-eqz v2, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isSpecialEccNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 948
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isImsEccSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 949
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->needHangupOtherCallWhenEccDialing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 950
    :cond_5
    const-string v2, "start() : Hangup all if IMS Ecc not supported"

    invoke-direct {p0, v2, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 951
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hangupAllCall(Landroid/os/Message;)V

    .line 956
    :cond_6
    invoke-direct {p0, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 957
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    invoke-interface {v2, v1}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->isValidVtDialString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 958
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->rejectDial()V

    .line 959
    return-void

    .line 964
    :cond_7
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    if-eqz v2, :cond_8

    iget-boolean v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasTriedSelfActivation:Z

    if-nez v3, :cond_8

    iget v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 965
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;->shouldProcessSelfActivation(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 966
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    iget-boolean v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    invoke-virtual {v2, v1, v8, v3}, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;->doSelfActivationDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;Z)V

    .line 968
    iput-boolean v9, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasTriedSelfActivation:Z

    .line 969
    return-void

    .line 973
    :cond_8
    const-string v2, "dialstring"

    invoke-virtual {v8, v2, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_9

    .line 975
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd5

    invoke-virtual {v2, v3, v9, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 976
    .local v2, "msg":Landroid/os/Message;
    iput-object v8, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 977
    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v3, v1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendUSSI(Ljava/lang/String;Landroid/os/Message;)V

    .line 978
    return-void

    .line 983
    .end local v2    # "msg":Landroid/os/Message;
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->needTurnOnVolteBeforeE911()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 984
    iget-boolean v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->tryTurnOnVolteForE911(Z)V

    .line 989
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isEnrichedCallingSupported()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 990
    invoke-direct {p0, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->setImsPreCallInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 994
    :cond_b
    iget-object v2, v8, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->setRttModeForDial(Z)V

    .line 996
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 997
    .local v12, "response":Landroid/os/Message;
    iget-boolean v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    .line 998
    .local v2, "useEmergencyDial":Z
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->useNormalDialForEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 999
    const/4 v2, 0x0

    move v13, v2

    goto :goto_2

    .line 998
    :cond_c
    move v13, v2

    .line 1001
    .end local v2    # "useEmergencyDial":Z
    .local v13, "useEmergencyDial":Z
    :goto_2
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isSelfAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/mediatek/ims/OperatorUtils$OPID;->OP204:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 1002
    invoke-static {v2, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1003
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1004
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 1005
    .local v3, "vmNumber":Ljava/lang/String;
    if-eqz v3, :cond_d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1006
    move-object v1, v3

    move-object v14, v1

    .end local p1    # "callee":Ljava/lang/String;
    .local v1, "callee":Ljava/lang/String;
    goto :goto_3

    .line 1009
    .end local v1    # "callee":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    .end local v3    # "vmNumber":Ljava/lang/String;
    .restart local p1    # "callee":Ljava/lang/String;
    :cond_d
    move-object v14, v1

    .end local p1    # "callee":Ljava/lang/String;
    .local v14, "callee":Ljava/lang/String;
    :goto_3
    iget-object v1, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v6

    move-object v2, v14

    move-object/from16 v3, p2

    move v4, v11

    move v5, v13

    move-object v7, v12

    invoke-interface/range {v1 .. v7}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;IZZLandroid/os/Message;)V

    .line 1011
    iput-boolean v9, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 1012
    iput-object v14, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    .line 1013
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateShouldUpdateAddress()V

    .line 1014
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1019
    const-string v0, "oir"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    .line 1020
    .local v0, "clirMode":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1022
    .local v1, "result":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v5

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    move-object v3, p1

    move v4, v0

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->startConference([Ljava/lang/String;IZILandroid/os/Message;)V

    .line 1025
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 1026
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOneKeyConf:Z

    .line 1027
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    .line 1028
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 1404
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->startDtmf(CLandroid/os/Message;)V

    .line 1405
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 1409
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1410
    return-void
.end method

.method public terminate(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 1143
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    invoke-interface {v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->handleHangup()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    const-string v3, "dialstring"

    invoke-virtual {v0, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1148
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->cancelPendingUssi(Landroid/os/Message;)V

    .line 1149
    return-void

    .line 1153
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1155
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getHangupCause(I)I

    move-result v0

    .line 1156
    .local v0, "cause":I
    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    if-lez v2, :cond_3

    .line 1157
    if-gtz v0, :cond_2

    .line 1158
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->forceHangup(I)V

    goto :goto_1

    .line 1160
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->forceHangup(II)V

    goto :goto_1

    .line 1163
    :cond_3
    if-gtz v0, :cond_4

    .line 1164
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->terminate(I)V

    goto :goto_0

    .line 1166
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->terminate(II)V

    .line 1168
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    if-eqz v2, :cond_5

    .line 1169
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->setOngoingMergeCallIds([Ljava/lang/String;)V

    .line 1170
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminateConferenceSession()V

    .line 1175
    :cond_5
    :goto_1
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalTerminateReason:I

    .line 1176
    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    .line 1177
    const/4 v1, 0x7

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 1178
    .end local v0    # "cause":I
    goto :goto_2

    .line 1179
    :cond_6
    const-string v0, "terminate() : Terminate Call fail since there is no call ID. Abnormal Case"

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1180
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    if-eqz v0, :cond_7

    .line 1181
    const-string v0, "terminate() : Pending M0, wait for assign call id"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1182
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingDisconnect:Z

    .line 1183
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingDisconnectReason:I

    .line 1186
    :cond_7
    :goto_2
    return-void
.end method

.method public transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .locals 2
    .param p1, "otherSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 1136
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1137
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 1138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    .line 1139
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 1128
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1129
    .local v0, "result":Landroid/os/Message;
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1130
    .local v2, "type":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v3, p1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unattendedCallTransfer(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1131
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    .line 1132
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1327
    return-void
.end method

.method public videoRingtoneOperation(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "operation"    # Ljava/lang/String;

    .line 5421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoRingtoneOperation(): CallID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 5423
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 5424
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCachedVideoRingtoneButtonInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5426
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5427
    :cond_0
    return-void

    .line 5429
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5430
    .local v0, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5431
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5432
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5433
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5434
    .local v1, "result":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->videoRingtoneEventRequest(Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 5435
    return-void
.end method
