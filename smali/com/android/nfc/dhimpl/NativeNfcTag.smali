.class public Lcom/android/nfc/dhimpl/NativeNfcTag;
.super Ljava/lang/Object;
.source "NativeNfcTag.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$TagEndpoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final STATUS_CODE_TARGET_LOST:I = 0x92


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectedHandle:I

.field private mConnectedTechIndex:I

.field private mIsPresent:Z

.field private mTechActBytes:[[B

.field private mTechExtras:[Landroid/os/Bundle;

.field private mTechHandles:[I

.field private mTechLibNfcTypes:[I

.field private mTechList:[I

.field private mTechPollBytes:[[B

.field private mUid:[B

.field private mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "NativeNfcTag"

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/dhimpl/NativeNfcTag;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/nfc/dhimpl/NativeNfcTag;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .line 41
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method private addTechnology(III)V
    .locals 6
    .param p1, "tech"    # I
    .param p2, "handle"    # I
    .param p3, "libnfctype"    # I

    .line 475
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 476
    .local v1, "mNewTechList":[I
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v0, v0

    aput p1, v1, v0

    .line 478
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 480
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 481
    .local v2, "mNewHandleList":[I
    array-length v4, v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v0, v0

    aput p2, v2, v0

    .line 483
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 485
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    .line 486
    .local v4, "mNewTypeList":[I
    array-length v5, v0

    invoke-static {v0, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v0, v0

    aput p3, v4, v0

    .line 488
    iput-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 489
    return-void
.end method

.method private declared-synchronized checkNdefWithStatus([I)I
    .locals 2
    .param p1, "ndefinfo"    # [I

    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 336
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doCheckNdef([I)I

    move-result v0

    .line 337
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_1
    monitor-exit p0

    return v0

    .line 332
    .end local v0    # "status":I
    .end local p1    # "ndefinfo":[I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private native doCheckNdef([I)I
.end method

.method private native doConnect(I)I
.end method

.method private native doRead()[B
.end method

.method private native doTransceive([BZ[I)[B
.end method

.method private native doWrite([B)Z
.end method

.method private getConnectedHandle()I
    .locals 1

    .line 450
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method private getConnectedLibNfcType()I
    .locals 3

    .line 454
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 455
    aget v0, v1, v0

    return v0

    .line 457
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getNdefType(II)I
    .locals 1
    .param p1, "libnfctype"    # I
    .param p2, "javatype"    # I

    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doGetNdefType(II)I

    move-result v0

    return v0
.end method

.method private getTechIndex(I)I
    .locals 4
    .param p1, "tech"    # I

    .line 572
    const/4 v0, -0x1

    .line 573
    .local v0, "techIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 574
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 575
    move v0, v1

    .line 576
    goto :goto_1

    .line 573
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private hasTech(I)Z
    .locals 4
    .param p1, "tech"    # I

    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 585
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 586
    const/4 v0, 0x1

    .line 587
    goto :goto_1

    .line 584
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private hasTechOnHandle(II)Z
    .locals 4
    .param p1, "tech"    # I
    .param p2, "handle"    # I

    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 596
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_0

    .line 597
    const/4 v0, 0x1

    .line 598
    goto :goto_1

    .line 595
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isUltralightC()Z
    .locals 9

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "isUltralightC":Z
    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    .line 619
    .local v2, "readCmd":[B
    new-array v3, v1, [I

    .line 620
    .local v3, "retCode":[I
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->transceive([BZ[I)[B

    move-result-object v4

    .line 621
    .local v4, "respData":[B
    if-eqz v4, :cond_3

    array-length v5, v4

    const/16 v6, 0x10

    if-ne v5, v6, :cond_3

    .line 624
    aget-byte v5, v4, v1

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x6

    if-nez v5, :cond_1

    const/4 v5, 0x3

    aget-byte v5, v4, v5

    if-nez v5, :cond_1

    aget-byte v5, v4, v7

    if-nez v5, :cond_1

    aget-byte v5, v4, v6

    if-nez v5, :cond_1

    aget-byte v5, v4, v8

    if-nez v5, :cond_1

    const/4 v5, 0x7

    aget-byte v5, v4, v5

    if-nez v5, :cond_1

    .line 628
    const/16 v5, 0x8

    aget-byte v5, v4, v5

    if-ne v5, v1, :cond_0

    const/16 v1, 0x9

    aget-byte v1, v4, v1

    if-nez v1, :cond_0

    .line 630
    const/4 v0, 0x1

    goto :goto_0

    .line 634
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 639
    :cond_1
    aget-byte v1, v4, v7

    const/16 v5, -0x1f

    if-ne v1, v5, :cond_2

    aget-byte v1, v4, v6

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0x20

    if-ge v1, v5, :cond_2

    .line 646
    aget-byte v1, v4, v8

    and-int/lit16 v1, v1, 0xff

    if-le v1, v8, :cond_3

    .line 647
    const/4 v0, 0x1

    goto :goto_0

    .line 651
    :cond_2
    const/4 v0, 0x0

    .line 655
    :cond_3
    :goto_0
    return v0

    :array_0
    .array-data 1
        0x30t
        0x2t
    .end array-data
.end method


# virtual methods
.method public addNdefFormatableTechnology(II)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "libnfcType"    # I

    .line 531
    monitor-enter p0

    .line 532
    const/4 v0, 0x7

    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 533
    monitor-exit p0

    .line 534
    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V
    .locals 5
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "handle"    # I
    .param p3, "libnfcType"    # I
    .param p4, "javaType"    # I
    .param p5, "maxLength"    # I
    .param p6, "cardState"    # I

    .line 543
    monitor-enter p0

    .line 544
    const/4 v0, 0x6

    :try_start_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 546
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 547
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "ndefmsg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 548
    const-string v1, "ndefmaxlength"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 549
    const-string v1, "ndefcardstate"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 550
    const-string v1, "ndeftype"

    invoke-direct {p0, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getNdefType(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v1

    .line 556
    .local v1, "builtTechExtras":[Landroid/os/Bundle;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 557
    .end local v1    # "builtTechExtras":[Landroid/os/Bundle;
    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v1

    .line 561
    .local v1, "oldTechExtras":[Landroid/os/Bundle;
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    .line 562
    .local v2, "newTechExtras":[Landroid/os/Bundle;
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    array-length v3, v1

    aput-object v0, v2, v3

    .line 564
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 568
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "oldTechExtras":[Landroid/os/Bundle;
    .end local v2    # "newTechExtras":[Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized checkNdef([I)Z
    .locals 1
    .param p1, "ndefinfo"    # [I

    monitor-enter p0

    .line 344
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    .end local p1    # "ndefinfo":[I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized connect(I)Z
    .locals 1
    .param p1, "technology"    # I

    monitor-enter p0

    .line 231
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    .end local p1    # "technology":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized connectWithStatus(I)I
    .locals 4
    .param p1, "technology"    # I

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 157
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    const/4 v0, -0x1

    .line 158
    .local v0, "status":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 159
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_5

    .line 161
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_2

    .line 168
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 171
    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doConnect(I)I

    move-result v2

    move v0, v2

    goto :goto_1

    .line 174
    :cond_1
    const-string v2, "NativeNfcTag"

    const-string v3, "Connect to a tech with a different handle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v2

    move v0, v2

    .line 178
    :goto_1
    if-nez v0, :cond_6

    .line 179
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    .line 180
    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    goto :goto_2

    .line 189
    :cond_2
    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    const/4 v2, 0x7

    if-ne p1, v2, :cond_4

    .line 192
    :cond_3
    const/4 v1, 0x0

    .line 195
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v2

    move v0, v2

    .line 216
    if-nez v0, :cond_6

    .line 217
    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    goto :goto_2

    .line 158
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_7

    .line 225
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_7
    monitor-exit p0

    return v0

    .line 153
    .end local v0    # "status":I
    .end local p1    # "technology":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public disconnect()Z
    .locals 3

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "result":Z
    monitor-enter p0

    .line 266
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 267
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 268
    .local v2, "watchdog":Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 269
    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {v2, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->end(Z)V

    .line 273
    :try_start_1
    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    .line 277
    :goto_0
    monitor-enter p0

    .line 278
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 279
    monitor-exit p0

    .line 280
    const/4 v0, 0x1

    goto :goto_1

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doDisconnect()Z

    move-result v0

    .line 285
    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    .line 286
    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    .line 287
    return v0

    .line 268
    .end local v2    # "watchdog":Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method native doDisconnect()Z
.end method

.method native doGetNdefType(II)I
.end method

.method native doHandleReconnect(I)I
.end method

.method native doIsIsoDepNdefFormatable([B[B)Z
.end method

.method native doMakeReadonly([B)Z
.end method

.method native doNdefFormat([B)Z
.end method

.method native doPresenceCheck()Z
.end method

.method native doReconnect()I
.end method

.method public findAndReadNdef()Landroid/nfc/NdefMessage;
    .locals 21

    .line 765
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechList()[I

    move-result-object v9

    .line 766
    .local v9, "technologies":[I
    iget-object v10, v8, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 767
    .local v10, "handles":[I
    const/4 v1, 0x0

    .line 768
    .local v1, "ndefMsg":Landroid/nfc/NdefMessage;
    const/4 v0, 0x0

    .line 769
    .local v0, "foundFormattable":Z
    const/4 v2, 0x0

    .line 770
    .local v2, "formattableHandle":I
    const/4 v3, 0x0

    .line 773
    .local v3, "formattableLibNfcType":I
    const/4 v4, 0x0

    move v11, v4

    .local v11, "techIndex":I
    :goto_0
    array-length v4, v9

    if-ge v11, v4, :cond_9

    .line 775
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v11, :cond_0

    .line 776
    aget v5, v10, v4

    aget v5, v10, v11

    .line 775
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 781
    .end local v4    # "i":I
    :cond_0
    aget v4, v9, v11

    invoke-virtual {v8, v4}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I

    move-result v4

    .line 782
    .local v4, "status":I
    const/16 v5, 0x92

    const-string v6, "NativeNfcTag"

    if-eqz v4, :cond_1

    .line 783
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connect Failed - status = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    if-ne v4, v5, :cond_5

    .line 785
    goto/16 :goto_6

    .line 790
    :cond_1
    if-nez v0, :cond_3

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isNdefFormatable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 792
    const/4 v0, 0x1

    .line 793
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v2

    .line 794
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v3

    .line 799
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    move v12, v0

    move v13, v2

    move v14, v3

    goto :goto_2

    .line 790
    :cond_3
    move v12, v0

    move v13, v2

    move v14, v3

    .line 802
    .end local v0    # "foundFormattable":Z
    .end local v2    # "formattableHandle":I
    .end local v3    # "formattableLibNfcType":I
    .local v12, "foundFormattable":Z
    .local v13, "formattableHandle":I
    .local v14, "formattableLibNfcType":I
    :goto_2
    const/4 v0, 0x2

    new-array v15, v0, [I

    .line 803
    .local v15, "ndefinfo":[I
    invoke-direct {v8, v15}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I

    move-result v7

    .line 804
    .end local v4    # "status":I
    .local v7, "status":I
    if-eqz v7, :cond_6

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check NDEF Failed - status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    if-ne v7, v5, :cond_4

    .line 807
    goto/16 :goto_7

    .line 806
    :cond_4
    move v4, v7

    move v0, v12

    move v2, v13

    move v3, v14

    .line 773
    .end local v7    # "status":I
    .end local v12    # "foundFormattable":Z
    .end local v13    # "formattableHandle":I
    .end local v14    # "formattableLibNfcType":I
    .end local v15    # "ndefinfo":[I
    .restart local v0    # "foundFormattable":Z
    .restart local v2    # "formattableHandle":I
    .restart local v3    # "formattableLibNfcType":I
    .restart local v4    # "status":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 813
    .end local v0    # "foundFormattable":Z
    .end local v2    # "formattableHandle":I
    .end local v3    # "formattableLibNfcType":I
    .end local v4    # "status":I
    .restart local v7    # "status":I
    .restart local v12    # "foundFormattable":Z
    .restart local v13    # "formattableHandle":I
    .restart local v14    # "formattableLibNfcType":I
    .restart local v15    # "ndefinfo":[I
    :cond_6
    const/16 v16, 0x0

    .line 815
    .local v16, "generateEmptyNdef":Z
    const/4 v0, 0x0

    aget v17, v15, v0

    .line 816
    .local v17, "supportedNdefLength":I
    const/4 v0, 0x1

    aget v18, v15, v0

    .line 817
    .local v18, "cardState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->readNdef()[B

    move-result-object v6

    .line 818
    .local v6, "buff":[B
    if-eqz v6, :cond_7

    array-length v0, v6

    if-lez v0, :cond_7

    .line 820
    :try_start_0
    new-instance v2, Landroid/nfc/NdefMessage;

    invoke-direct {v2, v6}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 821
    .end local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v2, "ndefMsg":Landroid/nfc/NdefMessage;
    nop

    .line 822
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v3

    .line 823
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v4

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v5
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 821
    move-object/from16 v1, p0

    move-object/from16 v19, v6

    .end local v6    # "buff":[B
    .local v19, "buff":[B
    move/from16 v6, v17

    move/from16 v20, v7

    .end local v7    # "status":I
    .local v20, "status":I
    move/from16 v7, v18

    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z
    :try_end_2
    .catch Landroid/nfc/FormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 827
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v19    # "buff":[B
    .end local v20    # "status":I
    .restart local v6    # "buff":[B
    .restart local v7    # "status":I
    :catch_1
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "buff":[B
    .end local v7    # "status":I
    .restart local v19    # "buff":[B
    .restart local v20    # "status":I
    goto :goto_3

    .end local v2    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v19    # "buff":[B
    .end local v20    # "status":I
    .restart local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v6    # "buff":[B
    .restart local v7    # "status":I
    :catch_2
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object v2, v1

    .line 829
    .end local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v6    # "buff":[B
    .end local v7    # "status":I
    .local v0, "e":Landroid/nfc/FormatException;
    .restart local v2    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v19    # "buff":[B
    .restart local v20    # "status":I
    :goto_3
    const/16 v16, 0x1

    .line 830
    .end local v0    # "e":Landroid/nfc/FormatException;
    :goto_4
    move-object v1, v2

    goto :goto_5

    .line 818
    .end local v2    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v19    # "buff":[B
    .end local v20    # "status":I
    .restart local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v6    # "buff":[B
    .restart local v7    # "status":I
    :cond_7
    move-object/from16 v19, v6

    move/from16 v20, v7

    .line 831
    .end local v6    # "buff":[B
    .end local v7    # "status":I
    .restart local v19    # "buff":[B
    .restart local v20    # "status":I
    if-eqz v19, :cond_8

    .line 833
    const/16 v16, 0x1

    .line 836
    :cond_8
    :goto_5
    if-eqz v16, :cond_a

    .line 837
    const/4 v0, 0x0

    .line 838
    .end local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v0, "ndefMsg":Landroid/nfc/NdefMessage;
    const/4 v2, 0x0

    .line 839
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v3

    .line 840
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v4

    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v5

    .line 838
    move-object/from16 v1, p0

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 843
    const/4 v1, 0x0

    .line 844
    .end local v12    # "foundFormattable":Z
    .local v1, "foundFormattable":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    move v12, v1

    move-object v1, v0

    goto :goto_7

    .line 849
    .end local v11    # "techIndex":I
    .end local v13    # "formattableHandle":I
    .end local v14    # "formattableLibNfcType":I
    .end local v15    # "ndefinfo":[I
    .end local v16    # "generateEmptyNdef":Z
    .end local v17    # "supportedNdefLength":I
    .end local v18    # "cardState":I
    .end local v19    # "buff":[B
    .end local v20    # "status":I
    .local v0, "foundFormattable":Z
    .local v1, "ndefMsg":Landroid/nfc/NdefMessage;
    .local v2, "formattableHandle":I
    .restart local v3    # "formattableLibNfcType":I
    :cond_9
    :goto_6
    move v12, v0

    move v13, v2

    move v14, v3

    .end local v0    # "foundFormattable":Z
    .end local v2    # "formattableHandle":I
    .end local v3    # "formattableLibNfcType":I
    .restart local v12    # "foundFormattable":Z
    .restart local v13    # "formattableHandle":I
    .restart local v14    # "formattableLibNfcType":I
    :cond_a
    :goto_7
    if-nez v1, :cond_b

    if-eqz v12, :cond_b

    .line 852
    invoke-virtual {v8, v13, v14}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefFormatableTechnology(II)V

    .line 857
    :cond_b
    return-object v1
.end method

.method public declared-synchronized formatNdef([B)Z
    .locals 2
    .param p1, "key"    # [B

    monitor-enter p0

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 392
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doNdefFormat([B)Z

    move-result v0

    .line 393
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :cond_1
    monitor-exit p0

    return v0

    .line 388
    .end local v0    # "result":Z
    .end local p1    # "key":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getConnectedTechnology()I
    .locals 3

    .line 463
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 464
    aget v0, v1, v0

    return v0

    .line 466
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHandle()I
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 433
    aget v0, v0, v2

    return v0

    .line 435
    :cond_0
    return v2
.end method

.method public getTechExtras()[Landroid/os/Bundle;
    .locals 9

    .line 660
    monitor-enter p0

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    monitor-exit p0

    return-object v0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 663
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 664
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 665
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v3, v3, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    .line 753
    :pswitch_0
    goto/16 :goto_2

    .line 747
    :pswitch_1
    const-string v3, "barcodetype"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 748
    goto/16 :goto_1

    .line 729
    :pswitch_2
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isUltralightC()Z

    move-result v3

    .line 730
    .local v3, "isUlc":Z
    const-string v4, "isulc"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 731
    goto/16 :goto_1

    .line 735
    .end local v3    # "isUlc":Z
    :pswitch_3
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v3, v3, v1

    .line 736
    .local v3, "actBytes":[B
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 737
    const-string v4, "sak"

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 741
    :cond_1
    const-string v4, "atqa"

    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v5, v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 742
    goto/16 :goto_1

    .line 721
    .end local v3    # "actBytes":[B
    :pswitch_4
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    if-lt v3, v4, :cond_5

    .line 722
    const-string v3, "respflags"

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v4, v4, v1

    aget-byte v4, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 723
    const-string v3, "dsfid"

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v4, v4, v1

    aget-byte v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_1

    .line 695
    :pswitch_5
    const/16 v3, 0x8

    new-array v5, v3, [B

    .line 696
    .local v5, "pmm":[B
    new-array v6, v4, [B

    .line 697
    .local v6, "sc":[B
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    array-length v7, v7

    if-lt v7, v3, :cond_2

    .line 699
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    invoke-static {v7, v0, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    const-string v7, "pmm"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 702
    :cond_2
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    array-length v7, v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_5

    .line 703
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    invoke-static {v7, v3, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    const-string v3, "systemcode"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    .line 710
    .end local v5    # "pmm":[B
    .end local v6    # "sc":[B
    :pswitch_6
    invoke-direct {p0, v5}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 711
    const-string v3, "histbytes"

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    .line 714
    :cond_3
    const-string v3, "hiresp"

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 716
    goto :goto_1

    .line 682
    :pswitch_7
    const/4 v3, 0x4

    new-array v4, v3, [B

    .line 683
    .local v4, "appData":[B
    const/4 v5, 0x3

    new-array v6, v5, [B

    .line 684
    .local v6, "protInfo":[B
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    array-length v7, v7

    const/4 v8, 0x7

    if-lt v7, v8, :cond_5

    .line 685
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    invoke-static {v7, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    invoke-static {v7, v3, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    const-string v3, "appdata"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 689
    const-string v3, "protinfo"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    .line 667
    .end local v4    # "appData":[B
    .end local v6    # "protInfo":[B
    :pswitch_8
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v3, v3, v1

    .line 668
    .restart local v3    # "actBytes":[B
    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    .line 669
    const-string v4, "sak"

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 674
    :cond_4
    const-string v4, "atqa"

    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v5, v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 675
    nop

    .line 756
    .end local v3    # "actBytes":[B
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    aput-object v2, v3, v1

    .line 663
    .end local v2    # "extras":Landroid/os/Bundle;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 758
    .end local v1    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    monitor-exit p0

    return-object v0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getTechList()[I
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    return-object v0
.end method

.method public getUid()[B
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mUid:[B

    return-object v0
.end method

.method public declared-synchronized isNdefFormatable()Z
    .locals 3

    monitor-enter p0

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doIsIsoDepNdefFormatable([B[B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPresent()Z
    .locals 1

    monitor-enter p0

    .line 258
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeReadOnly()Z
    .locals 2

    monitor-enter p0

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 406
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    sget-object v0, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 410
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z

    move-result v0

    .line 412
    .restart local v0    # "result":Z
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_2
    monitor-exit p0

    return v0

    .line 401
    .end local v0    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized presenceCheck()Z
    .locals 2

    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 379
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doPresenceCheck()Z

    move-result v0

    .line 380
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_1
    monitor-exit p0

    return v0

    .line 375
    .end local v0    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readNdef()[B
    .locals 2

    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 353
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doRead()[B

    move-result-object v0

    .line 354
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_1
    monitor-exit p0

    return-object v0

    .line 349
    .end local v0    # "result":[B
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnect()Z
    .locals 1

    monitor-enter p0

    .line 303
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnectWithStatus()I
    .locals 2

    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 295
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doReconnect()I

    move-result v0

    .line 296
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_1
    monitor-exit p0

    return v0

    .line 291
    .end local v0    # "status":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnectWithStatus(I)I
    .locals 2
    .param p1, "handle"    # I

    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 311
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doHandleReconnect(I)I

    move-result v0

    .line 312
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_1
    monitor-exit p0

    return v0

    .line 307
    .end local v0    # "status":I
    .end local p1    # "handle":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeTechnology(I)V
    .locals 8
    .param p1, "tech"    # I

    .line 493
    monitor-enter p0

    .line 494
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechIndex(I)I

    move-result v0

    .line 495
    .local v0, "techIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [I

    .line 497
    .local v1, "mNewTechList":[I
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v5, v5

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 502
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [I

    .line 503
    .local v2, "mNewHandleList":[I
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    invoke-static {v4, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v6, v6

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v5, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 508
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [I

    .line 509
    .local v4, "mNewTypeList":[I
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    invoke-static {v5, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v7, v7

    sub-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    iput-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 518
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 520
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Landroid/os/Bundle;

    .line 521
    .local v5, "mNewTechExtras":[Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    invoke-static {v6, v3, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    array-length v7, v7

    sub-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v6, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    iput-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 527
    .end local v0    # "techIndex":I
    .end local v1    # "mNewTechList":[I
    .end local v2    # "mNewHandleList":[I
    .end local v4    # "mNewTypeList":[I
    .end local v5    # "mNewTechExtras":[Landroid/os/Bundle;
    :cond_0
    monitor-exit p0

    .line 528
    return-void

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V
    .locals 1
    .param p1, "presenceCheckDelay"    # I
    .param p2, "callback"    # Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    monitor-enter p0

    .line 247
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 248
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;-><init>(Lcom/android/nfc/dhimpl/NativeNfcTag;ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 250
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    monitor-exit p0

    return-void

    .line 246
    .end local p1    # "presenceCheckDelay":I
    .end local p2    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopPresenceChecking()V
    .locals 2

    monitor-enter p0

    .line 236
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 237
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->end(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized transceive([BZ[I)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "raw"    # Z
    .param p3, "returnCode"    # [I

    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 324
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doTransceive([BZ[I)[B

    move-result-object v0

    .line 325
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :cond_1
    monitor-exit p0

    return-object v0

    .line 320
    .end local v0    # "result":[B
    .end local p1    # "data":[B
    .end local p2    # "raw":Z
    .end local p3    # "returnCode":[I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeNdef([B)Z
    .locals 2
    .param p1, "buf"    # [B

    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 366
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doWrite([B)Z

    move-result v0

    .line 367
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_1
    monitor-exit p0

    return v0

    .line 362
    .end local v0    # "result":Z
    .end local p1    # "buf":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
