.class public Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
.super Ljava/lang/Object;
.source "ImsLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/ImsLocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationInfo"
.end annotation


# instance fields
.field mAccountId:I

.field mAccuracy:F

.field mAltitude:D

.field mBroadcastFlag:I

.field mCity:Ljava/lang/String;

.field mConfidence:I

.field mCountryCode:Ljava/lang/String;

.field mLatitude:D

.field mLongitude:D

.field mMajorAxisAccuracy:F

.field mMethod:Ljava/lang/String;

.field mMinorAxisAccuracy:F

.field mSimIdx:I

.field mState:Ljava/lang/String;

.field mTime:J

.field mVericalAxisAccuracy:F

.field mZip:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/ImsLocationHandler;
    .param p2, "simIdx"    # I
    .param p3, "accountId"    # I
    .param p4, "broadcastFlag"    # I
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D
    .param p9, "accuracy"    # F

    .line 351
    iput-object p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 344
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 345
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 346
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    .line 347
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 352
    iput p2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    .line 353
    iput p3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    .line 354
    iput p4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mConfidence:I

    .line 356
    iput-wide p5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 357
    iput-wide p7, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 358
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAltitude:D

    .line 359
    iput p9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 360
    iput p9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 361
    iput p9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 362
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 363
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    .line 364
    return-void
.end method

.method constructor <init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDFI)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/ImsLocationHandler;
    .param p2, "simIdx"    # I
    .param p3, "accountId"    # I
    .param p4, "broadcastFlag"    # I
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D
    .param p9, "accuracy"    # F
    .param p10, "confidence"    # I

    .line 367
    iput-object p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 344
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 345
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 346
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    .line 347
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 368
    iput p2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    .line 369
    iput p3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    .line 370
    iput p4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 371
    iput p10, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mConfidence:I

    .line 372
    iput-wide p5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 373
    iput-wide p7, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 374
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAltitude:D

    .line 375
    iput p9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 376
    iput p9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 377
    iput p9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 379
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    .line 380
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[LocationInfo objId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", transationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", accuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", confidence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mConfidence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", vericalAxisAccuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", broadcastFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", city: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mmaskString(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mmaskString(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", zip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mmaskString(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", countryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mmaskString(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
