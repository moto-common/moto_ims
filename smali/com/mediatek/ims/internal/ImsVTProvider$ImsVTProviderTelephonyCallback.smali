.class public Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "ImsVTProvider.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImsVTProviderTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProvider;


# direct methods
.method protected constructor <init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 391
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 10
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 397
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v0

    .line 398
    .local v0, "cellSignalStrengthList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    if-nez v0, :cond_0

    .line 399
    return-void

    .line 402
    :cond_0
    const v1, 0x7fffffff

    .line 403
    .local v1, "rsrp":I
    const v2, 0x7fffffff

    .line 405
    .local v2, "snr":I
    const-class v3, Landroid/telephony/CellSignalStrengthLte;

    .line 406
    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 407
    .local v3, "signalStrengthLte":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrengthLte;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, ", snr:"

    const-string v6, "ImsVT"

    const/4 v7, 0x0

    if-nez v4, :cond_1

    .line 408
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v1

    .line 409
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result v2

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "signalStrengthLte, rsrp:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    const v4, 0x7fffffff

    if-ne v1, v4, :cond_2

    .line 414
    const-class v8, Landroid/telephony/CellSignalStrengthNr;

    .line 415
    invoke-virtual {p1, v8}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 416
    .local v8, "signalStrengthNr":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrengthNr;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 417
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result v1

    .line 418
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthNr;->getSsSinr()I

    move-result v2

    .line 419
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "signalStrengthNr, rsrp:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v8    # "signalStrengthNr":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrengthNr;>;"
    :cond_2
    if-ne v1, v4, :cond_3

    .line 424
    return-void

    .line 427
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v4, "prop":Ljava/lang/StringBuilder;
    const-string v5, "vendor.ims.vt.signalstrength."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget v5, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v5, "value":Ljava/lang/StringBuilder;
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v7, "set signalstrength property done"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void
.end method
