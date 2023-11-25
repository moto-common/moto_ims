.class Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;
.super Lcom/mediatek/wfo/WifiOffloadManager$Listener;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWifiOffloadListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .locals 0

    .line 1866
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Lcom/mediatek/wfo/WifiOffloadManager$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p2, "x1"    # Lcom/mediatek/ims/ImsService$1;

    .line 1866
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsService;)V

    return-void
.end method


# virtual methods
.method public onHandover(III)V
    .locals 10
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I

    .line 1870
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandover simIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", stage="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ratType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mImsRegInfo[simIdx]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1871
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    .line 1872
    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    aget v1, v1, p1

    if-nez v1, :cond_2

    .line 1878
    const/4 v1, 0x3

    if-le p3, v1, :cond_0

    .line 1879
    const/4 p3, 0x2

    .line 1882
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$1800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    aput p3, v1, p1

    .line 1884
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mImsExtInfo[simIdx]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1885
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v2

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/mediatek/ims/ImsService;->access$1900(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 1886
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-static {v1, p1, v2, v3}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 1887
    iget-object v4, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$2100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    aget v6, v1, p1

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    aget v8, v1, p1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    move v9, v0

    goto :goto_0

    :cond_1
    move v9, v3

    :goto_0
    move v5, p1

    invoke-static/range {v4 .. v9}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;IILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 1890
    :cond_2
    return-void
.end method

.method public onRequestImsSwitch(IZ)V
    .locals 5
    .param p1, "simIdx"    # I
    .param p2, "isImsOn"    # Z

    .line 1931
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1932
    return-void

    .line 1934
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1935
    .local v0, "mainCapabilityPhoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestImsSwitch simIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isImsOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mainCapabilityPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1938
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$600(Lcom/mediatek/ims/ImsService;)I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1939
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v2, "onRequestImsSwitch can\'t enable/disable ims due to wrong sim id"

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$2300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1942
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1943
    if-eq p1, v0, :cond_2

    .line 1944
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v2, "onRequestImsSwitch, ignore not MainCapabilityPhoneId request"

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1945
    return-void

    .line 1949
    :cond_2
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    .line 1950
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    aget v3, v3, p1

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    .line 1951
    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$2800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    aget v3, v3, p1

    if-nez v3, :cond_3

    goto :goto_0

    .line 1957
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v2, "Ims already enable and ignore to send AT command."

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto :goto_2

    .line 1952
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$2900(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v3

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    .line 1953
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1952
    invoke-interface {v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnIms(Landroid/os/Message;)V

    .line 1954
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$2800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    aput v2, v1, p1

    .line 1955
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    const/4 v2, 0x2

    aput v2, v1, p1

    goto :goto_2

    .line 1960
    :cond_5
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    aget v3, v3, p1

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    .line 1961
    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$2800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    aget v3, v3, p1

    if-ne v3, v2, :cond_6

    goto :goto_1

    .line 1967
    :cond_6
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v2, "Ims already disabled and ignore to send AT command."

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto :goto_2

    .line 1962
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$2900(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v2

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    .line 1963
    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1962
    invoke-interface {v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffIms(Landroid/os/Message;)V

    .line 1964
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$2800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v2

    const/4 v3, 0x0

    aput v3, v2, p1

    .line 1965
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v2

    aput v1, v2, p1

    .line 1970
    :goto_2
    return-void
.end method

.method public onWfcRegError(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 8
    .param p1, "simIdx"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1895
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWfcRegError simIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1896
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v3, p1

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;IILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 1897
    nop

    .line 1898
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x578

    if-ne v0, v2, :cond_0

    .line 1899
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v0

    const/16 v2, 0x580

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1900
    .local v0, "isIkev2AuthFailure":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1901
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$2200()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/MtkImsRegistrationImpl;

    .line 1902
    .local v2, "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    if-eqz v2, :cond_1

    .line 1904
    :try_start_0
    invoke-virtual {v2, v1, p2}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1908
    :goto_1
    goto :goto_2

    .line 1906
    :catch_0
    move-exception v1

    .line 1907
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to notify TechnologyChangeFailed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$2300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 1910
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No slot to notify TechnologyChangeFailed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/ims/ImsService;->access$2300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1913
    .end local v2    # "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    :cond_2
    :goto_2
    return-void
.end method

.method public onWfcStateChanged(II)V
    .locals 4
    .param p1, "simIdx"    # I
    .param p2, "state"    # I

    .line 1918
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWfcStateChanged simIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1919
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$2400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    aput v3, v0, p1

    .line 1920
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    if-ne p2, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$2500(Lcom/mediatek/ims/ImsService;Z)V

    .line 1923
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, p1}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, p1}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1924
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, p1

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1925
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v1

    aget-object v1, v1, p1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1927
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method public onWifiPdnOOSStateChanged(II)V
    .locals 3
    .param p1, "simId"    # I
    .param p2, "oosState"    # I

    .line 1974
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiPdnOOSStateChanged simIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oosState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1975
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->access$3000(Lcom/mediatek/ims/ImsService;II)V

    .line 1976
    return-void
.end method
