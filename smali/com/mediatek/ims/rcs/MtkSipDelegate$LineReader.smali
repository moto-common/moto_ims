.class Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;
.super Ljava/lang/Object;
.source "MtkSipDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/MtkSipDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineReader"
.end annotation


# instance fields
.field private buffer:[B

.field private currPos:I

.field private nextPos:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->buffer:[B

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->currPos:I

    .line 501
    iput v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->nextPos:I

    .line 502
    return-void
.end method


# virtual methods
.method getCurrPosition()I
    .locals 1

    .line 606
    iget v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->currPos:I

    return v0
.end method

.method getNextPosition()I
    .locals 1

    .line 608
    iget v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->nextPos:I

    return v0
.end method

.method read()[C
    .locals 14

    .line 505
    iget v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->nextPos:I

    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 506
    const/4 v0, 0x0

    return-object v0

    .line 508
    :cond_0
    iput v0, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->currPos:I

    .line 509
    const/16 v0, 0x8

    .line 510
    .local v0, "MAX_LINES":I
    const/16 v1, 0x8

    new-array v2, v1, [I

    .line 511
    .local v2, "bofs":[I
    new-array v1, v1, [I

    .line 512
    .local v1, "eofs":[I
    const/4 v3, 0x0

    .line 513
    .local v3, "lineIdx":I
    const/4 v4, 0x0

    .line 514
    .local v4, "dataLen":I
    const/4 v5, 0x0

    .line 516
    .local v5, "nextOffset":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_1

    .line 517
    const/4 v7, -0x1

    aput v7, v2, v6

    .line 518
    aput v7, v1, v6

    .line 516
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 521
    .end local v6    # "i":I
    :cond_1
    iget v6, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->currPos:I

    aput v6, v2, v3

    .line 523
    iget v6, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->currPos:I

    .restart local v6    # "i":I
    :goto_1
    iget-object v7, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->buffer:[B

    array-length v8, v7

    const/16 v9, 0x20

    if-ge v6, v8, :cond_d

    .line 524
    if-lez v5, :cond_2

    .line 525
    goto/16 :goto_5

    .line 527
    :cond_2
    aget-byte v7, v7, v6

    sparse-switch v7, :sswitch_data_0

    .line 562
    aget v7, v1, v3

    if-ltz v7, :cond_a

    .line 563
    move v5, v6

    .line 564
    goto :goto_4

    .line 529
    :sswitch_0
    aget v7, v2, v3

    if-gez v7, :cond_3

    aput v6, v2, v3

    .line 530
    :cond_3
    aget v7, v1, v3

    if-gez v7, :cond_4

    aput v6, v1, v3

    goto :goto_4

    .line 532
    :cond_4
    move v5, v6

    .line 533
    goto :goto_4

    .line 536
    :sswitch_1
    aget v7, v2, v3

    if-gez v7, :cond_5

    aput v6, v2, v3

    .line 537
    :cond_5
    aget v7, v1, v3

    if-gez v7, :cond_c

    aput v6, v1, v3

    goto :goto_4

    .line 542
    :sswitch_2
    aget v7, v1, v3

    if-ltz v7, :cond_9

    .line 543
    add-int/lit8 v7, v3, 0x1

    array-length v8, v2

    if-ge v7, v8, :cond_c

    .line 544
    add-int/lit8 v3, v3, 0x1

    .line 546
    add-int/lit8 v7, v6, 0x1

    .line 547
    .local v7, "j":I
    :goto_2
    iget-object v8, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->buffer:[B

    array-length v10, v8

    if-ge v7, v10, :cond_7

    aget-byte v10, v8, v7

    if-eq v10, v9, :cond_6

    const/16 v11, 0x9

    if-ne v10, v11, :cond_7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 548
    :cond_7
    array-length v8, v8

    if-ge v7, v8, :cond_8

    .line 549
    add-int/lit8 v6, v7, -0x1

    .line 550
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 552
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 553
    move v5, v7

    .line 555
    .end local v7    # "j":I
    :goto_3
    goto :goto_4

    .line 557
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 559
    goto :goto_4

    .line 567
    :cond_a
    aget v7, v2, v3

    if-gez v7, :cond_b

    .line 568
    aput v6, v2, v3

    .line 569
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 523
    :cond_c
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 575
    .end local v6    # "i":I
    :cond_d
    :goto_5
    if-lez v5, :cond_e

    .line 576
    iput v5, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->nextPos:I

    goto :goto_6

    .line 578
    :cond_e
    aget v6, v2, v3

    if-ltz v6, :cond_f

    aget v6, v1, v3

    if-gez v6, :cond_f

    .line 579
    array-length v6, v7

    aput v6, v1, v3

    .line 580
    :cond_f
    array-length v6, v7

    iput v6, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->nextPos:I

    .line 583
    :goto_6
    if-nez v4, :cond_10

    .line 584
    const/4 v6, 0x0

    new-array v6, v6, [C

    return-object v6

    .line 587
    :cond_10
    new-array v6, v4, [B

    .line 588
    .local v6, "bb":[B
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x0

    .local v8, "pos":I
    :goto_7
    add-int/lit8 v10, v3, 0x1

    if-ge v7, v10, :cond_13

    .line 589
    aget v10, v2, v7

    .line 590
    .local v10, "begin":I
    if-gez v10, :cond_11

    .line 591
    goto :goto_8

    .line 592
    :cond_11
    aget v11, v1, v7

    .line 593
    .local v11, "end":I
    if-lez v7, :cond_12

    .line 594
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "pos":I
    .local v12, "pos":I
    aput-byte v9, v6, v8

    move v8, v12

    .line 596
    .end local v12    # "pos":I
    .restart local v8    # "pos":I
    :cond_12
    iget-object v12, p0, Lcom/mediatek/ims/rcs/MtkSipDelegate$LineReader;->buffer:[B

    sub-int v13, v11, v10

    invoke-static {v12, v10, v6, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    sub-int v12, v11, v10

    add-int/2addr v8, v12

    .line 588
    .end local v10    # "begin":I
    .end local v11    # "end":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 599
    .end local v7    # "i":I
    .end local v8    # "pos":I
    :cond_13
    :goto_8
    array-length v7, v6

    new-array v7, v7, [C

    .line 600
    .local v7, "chars":[C
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9
    array-length v9, v7

    if-ge v8, v9, :cond_14

    .line 601
    aget-byte v9, v6, v8

    and-int/lit16 v9, v9, 0xff

    int-to-char v9, v9

    aput-char v9, v7, v8

    .line 600
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 603
    .end local v8    # "i":I
    :cond_14
    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method
