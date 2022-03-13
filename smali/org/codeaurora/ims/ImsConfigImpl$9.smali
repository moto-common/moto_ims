.class Lorg/codeaurora/ims/ImsConfigImpl$9;
.super Landroid/telephony/PhoneStateListener;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 1013
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 8
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1016
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onServiceStateChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$2400(Lorg/codeaurora/ims/ImsConfigImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    return-void

    .line 1021
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1022
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 1024
    .local v0, "isInService":Z
    :goto_1
    if-nez v0, :cond_3

    .line 1025
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v2, "OUT_OF_SERVICE, ignore WFC mode change"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    return-void

    .line 1029
    :cond_3
    nop

    .line 1030
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    if-nez v3, :cond_4

    .line 1031
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    nop

    .line 1032
    .local v1, "isWlanOnly":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 1033
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v3, "IWLAN only, ignore WFC mode change"

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    return-void

    .line 1037
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 1041
    .local v2, "isRoaming":Z
    if-eqz v2, :cond_6

    .line 1042
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$100(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v3

    .local v3, "mode":I
    goto :goto_3

    .line 1044
    .end local v3    # "mode":I
    :cond_6
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$100(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .restart local v3    # "mode":I
    :goto_3
    nop

    .line 1051
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$2500(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    move-result v4

    .line 1053
    .local v4, "adjMode":I
    if-eqz v2, :cond_7

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$700(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1054
    const/16 v5, 0x3eb

    .local v5, "item":I
    goto :goto_4

    .line 1056
    .end local v5    # "item":I
    :cond_7
    const/16 v5, 0x1b

    .line 1058
    .restart local v5    # "item":I
    :goto_4
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v6, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v6

    .line 1059
    .local v6, "bpMode":I
    if-eq v4, v6, :cond_8

    const/4 v7, -0x1

    if-eq v4, v7, :cond_8

    .line 1060
    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v7, v5, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequestAsync(II)V

    .line 1062
    :cond_8
    return-void

    .line 1046
    .end local v3    # "mode":I
    .end local v4    # "adjMode":I
    .end local v5    # "item":I
    .end local v6    # "bpMode":I
    :catch_0
    move-exception v3

    .line 1047
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not update WFCMode: invalid sub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1048
    return-void
.end method
