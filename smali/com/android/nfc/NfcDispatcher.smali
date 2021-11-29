.class Lcom/android/nfc/NfcDispatcher;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDispatcher$MessageHandler;,
        Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final DISPATCH_FAIL:I = 0x2

.field static final DISPATCH_SUCCESS:I = 0x1

.field static final DISPATCH_UNLOCK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NfcDispatcher"


# instance fields
.field private mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceSupportsBluetooth:Z

.field private final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mMessageHandler:Landroid/os/Handler;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field private mOverrideFilters:[Landroid/content/IntentFilter;

.field private mOverrideIntent:Landroid/app/PendingIntent;

.field private mOverrideTechLists:[[Ljava/lang/String;

.field private final mProvisioningMimes:[Ljava/lang/String;

.field private mProvisioningOnly:Z

.field private final mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field private final mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p3, "provisionOnly"    # Z

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/nfc/NfcDispatcher$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/NfcDispatcher$MessageHandler;-><init>(Lcom/android/nfc/NfcDispatcher;Lcom/android/nfc/NfcDispatcher$1;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mMessageHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mMessageHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mMessenger:Landroid/os/Messenger;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 723
    new-instance v0, Lcom/android/nfc/NfcDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcDispatcher$1;-><init>(Lcom/android/nfc/NfcDispatcher;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    .line 100
    new-instance v0, Lcom/android/nfc/RegisteredComponentCache;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.nfc.action.TECH_DISCOVERED"

    const-string v3, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/RegisteredComponentCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 103
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 104
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    invoke-direct {v0, p1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 105
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iput-boolean p3, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "provisionMimes":[Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 115
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f010001

    .line 116
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 119
    goto :goto_1

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .line 121
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    .line 123
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void

    .line 110
    .end local v0    # "provisionMimes":[Ljava/lang/String;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcDispatcher;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcDispatcher;

    .line 68
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .locals 3
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .line 662
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 663
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 666
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;
    .locals 12
    .param p1, "nfcBarcode"    # Landroid/nfc/tech/NfcBarcode;

    .line 375
    const/4 v0, 0x1

    .line 376
    .local v0, "URI_PREFIX_HTTP_WWW":B
    const/4 v1, 0x2

    .line 377
    .local v1, "URI_PREFIX_HTTPS_WWW":B
    const/4 v2, 0x3

    .line 378
    .local v2, "URI_PREFIX_HTTP":B
    const/4 v3, 0x4

    .line 380
    .local v3, "URI_PREFIX_HTTPS":B
    const/4 v4, 0x0

    .line 381
    .local v4, "message":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Landroid/nfc/tech/NfcBarcode;->getTag()Landroid/nfc/Tag;

    move-result-object v5

    invoke-virtual {v5}, Landroid/nfc/Tag;->getId()[B

    move-result-object v5

    .line 383
    .local v5, "tagId":[B
    array-length v6, v5

    const/4 v7, 0x4

    if-lt v6, v7, :cond_3

    const/4 v6, 0x1

    aget-byte v8, v5, v6

    const/4 v9, 0x2

    if-eq v8, v6, :cond_0

    aget-byte v8, v5, v6

    if-eq v8, v9, :cond_0

    aget-byte v8, v5, v6

    const/4 v10, 0x3

    if-eq v8, v10, :cond_0

    aget-byte v8, v5, v6

    if-ne v8, v7, :cond_3

    .line 390
    :cond_0
    const/4 v7, 0x2

    .line 391
    .local v7, "end":I
    :goto_0
    array-length v8, v5

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    .line 392
    aget-byte v8, v5, v7

    const/4 v10, -0x2

    if-ne v8, v10, :cond_1

    .line 393
    goto :goto_1

    .line 391
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 396
    :cond_2
    :goto_1
    add-int/lit8 v8, v7, -0x1

    new-array v8, v8, [B

    .line 397
    .local v8, "payload":[B
    array-length v9, v8

    const/4 v10, 0x0

    invoke-static {v5, v6, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    new-instance v9, Landroid/nfc/NdefRecord;

    sget-object v11, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-direct {v9, v6, v11, v5, v8}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    move-object v6, v9

    .line 400
    .local v6, "uriRecord":Landroid/nfc/NdefRecord;
    new-instance v9, Landroid/nfc/NdefMessage;

    new-array v10, v10, [Landroid/nfc/NdefRecord;

    invoke-direct {v9, v6, v10}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    move-object v4, v9

    .line 402
    .end local v6    # "uriRecord":Landroid/nfc/NdefRecord;
    .end local v7    # "end":I
    .end local v8    # "payload":[B
    :cond_3
    return-object v4
.end method

.method static extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;
    .locals 6
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 536
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 537
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 538
    .local v4, "record":Landroid/nfc/NdefRecord;
    invoke-static {v4}, Lcom/android/nfc/NfcDispatcher;->checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v5

    .line 539
    .local v5, "pkg":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 540
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    .end local v4    # "record":Landroid/nfc/NdefRecord;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 543
    :cond_1
    return-object v0
.end method

.method static getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 674
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v0, "market":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 676
    return-object v0
.end method

.method private handleNfcUnlock(Landroid/nfc/Tag;)Z
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 339
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcUnlockManager;->tryUnlock(Landroid/nfc/Tag;)Z

    move-result v0

    return v0
.end method

.method static isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "enabled":Z
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    .local v1, "compname":Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 688
    const/4 v0, 0x1

    .line 692
    :cond_0
    goto :goto_0

    .line 690
    :catch_0
    move-exception v2

    .line 691
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 693
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v0, :cond_1

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component not enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcDispatcher"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_1
    return v0
.end method


# virtual methods
.method public declared-synchronized disableProvisioningMode()V
    .locals 1

    monitor-enter p0

    .line 142
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 141
    .end local p0    # "this":Lcom/android/nfc/NfcDispatcher;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchTag(Landroid/nfc/Tag;)I
    .locals 17
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 251
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v1, 0x0

    .line 252
    .local v1, "message":Landroid/nfc/NdefMessage;
    invoke-static/range {p1 .. p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v10

    .line 254
    .local v10, "ndef":Landroid/nfc/tech/Ndef;
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v6, v8, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 256
    .local v6, "overrideFilters":[Landroid/content/IntentFilter;
    iget-object v5, v8, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 257
    .local v5, "overrideIntent":Landroid/app/PendingIntent;
    iget-object v7, v8, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    .line 258
    .local v7, "overrideTechLists":[[Ljava/lang/String;
    iget-boolean v0, v8, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 259
    .local v0, "provisioningOnly":Z
    iget-object v2, v8, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    move-object v11, v2

    .line 260
    .local v11, "provisioningMimes":[Ljava/lang/String;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, "screenUnlocked":Z
    const/4 v12, 0x2

    if-nez v0, :cond_1

    iget-object v3, v8, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 264
    invoke-virtual {v3}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 265
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/NfcDispatcher;->handleNfcUnlock(Landroid/nfc/Tag;)Z

    move-result v2

    .line 266
    if-nez v2, :cond_0

    .line 267
    return v12

    .line 266
    :cond_0
    move v13, v2

    goto :goto_0

    .line 270
    :cond_1
    move v13, v2

    .end local v2    # "screenUnlocked":Z
    .local v13, "screenUnlocked":Z
    :goto_0
    const/4 v14, 0x1

    if-eqz v10, :cond_2

    .line 271
    invoke-virtual {v10}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    move-object v15, v1

    goto :goto_1

    .line 273
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/nfc/tech/NfcBarcode;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcBarcode;

    move-result-object v2

    .line 274
    .local v2, "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/nfc/tech/NfcBarcode;->getType()I

    move-result v3

    if-ne v3, v14, :cond_3

    .line 275
    invoke-direct {v8, v2}, Lcom/android/nfc/NfcDispatcher;->decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;

    move-result-object v1

    move-object v15, v1

    goto :goto_1

    .line 281
    .end local v2    # "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    :cond_3
    move-object v15, v1

    .end local v1    # "message":Landroid/nfc/NdefMessage;
    .local v15, "message":Landroid/nfc/NdefMessage;
    :goto_1
    new-instance v1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    iget-object v2, v8, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v9, v15}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;-><init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V

    move-object v4, v1

    .line 283
    .local v4, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 285
    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v14, v4

    .end local v4    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .local v14, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    move-object v4, v15

    invoke-virtual/range {v1 .. v7}, Lcom/android/nfc/NfcDispatcher;->tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_5

    .line 287
    if-eqz v13, :cond_4

    move/from16 v16, v2

    goto :goto_2

    :cond_4
    const/16 v16, 0x1

    :goto_2
    return v16

    .line 290
    :cond_5
    invoke-virtual {v8, v15}, Lcom/android/nfc/NfcDispatcher;->tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 292
    if-eqz v13, :cond_6

    move/from16 v16, v2

    goto :goto_3

    :cond_6
    const/16 v16, 0x1

    :goto_3
    return v16

    .line 295
    :cond_7
    iget-object v1, v8, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v10, v1}, Lcom/android/nfc/NfcWifiProtectedSetup;->tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 297
    if-eqz v13, :cond_8

    move/from16 v16, v2

    goto :goto_4

    :cond_8
    const/16 v16, 0x1

    :goto_4
    return v16

    .line 300
    :cond_9
    if-eqz v0, :cond_c

    .line 301
    if-nez v15, :cond_a

    .line 303
    return v12

    .line 306
    :cond_a
    invoke-virtual {v15}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->toMimeType()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "ndefMimeType":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 308
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 309
    :cond_b
    const-string v2, "NfcDispatcher"

    const-string v3, "Dropping NFC intent in provisioning mode."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return v12

    .line 314
    .end local v1    # "ndefMimeType":Ljava/lang/String;
    :cond_c
    invoke-virtual {v8, v14, v15}, Lcom/android/nfc/NfcDispatcher;->tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 315
    if-eqz v13, :cond_d

    move/from16 v16, v2

    goto :goto_5

    :cond_d
    const/16 v16, 0x1

    :goto_5
    return v16

    .line 318
    :cond_e
    if-eqz v13, :cond_f

    .line 320
    return v2

    .line 324
    :cond_f
    invoke-virtual {v8, v14, v9}, Lcom/android/nfc/NfcDispatcher;->tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 325
    const/4 v1, 0x1

    return v1

    .line 328
    :cond_10
    const/4 v1, 0x1

    invoke-virtual {v14}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    .line 329
    invoke-virtual {v14}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 331
    return v1

    .line 335
    :cond_11
    return v12

    .line 260
    .end local v0    # "provisioningOnly":Z
    .end local v5    # "overrideIntent":Landroid/app/PendingIntent;
    .end local v6    # "overrideFilters":[Landroid/content/IntentFilter;
    .end local v7    # "overrideTechLists":[[Ljava/lang/String;
    .end local v11    # "provisioningMimes":[Ljava/lang/String;
    .end local v13    # "screenUnlocked":Z
    .end local v14    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .end local v15    # "message":Landroid/nfc/NdefMessage;
    .local v1, "message":Landroid/nfc/NdefMessage;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 700
    monitor-enter p0

    .line 701
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideTechLists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    monitor-exit p0

    .line 705
    return-void

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "tagTechs"    # [Ljava/lang/String;
    .param p2, "filterTechs"    # [Ljava/lang/String;

    .line 651
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 653
    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 654
    .local v3, "tech":Ljava/lang/String;
    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    .line 655
    return v0

    .line 653
    .end local v3    # "tech":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 658
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 651
    :cond_3
    :goto_1
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    return-void
.end method

.method isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "hasTechFilter"    # Z

    .line 454
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 455
    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 456
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "NfcDispatcher"

    invoke-virtual {v4, v5, p1, v1, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 457
    return v0

    .line 455
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    :cond_1
    if-nez p3, :cond_2

    .line 461
    return v0

    .line 463
    :cond_2
    return v1
.end method

.method isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z
    .locals 6
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "techLists"    # [[Ljava/lang/String;

    .line 467
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 468
    return v0

    .line 471
    :cond_0
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "tagTechs":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 473
    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 474
    .local v4, "filterTechs":[Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 475
    const/4 v0, 0x1

    return v0

    .line 473
    .end local v4    # "filterTechs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 478
    :cond_2
    return v0
.end method

.method resumeAppSwitches()V
    .locals 1

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 647
    return-void
.end method

.method public declared-synchronized setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techLists"    # [[Ljava/lang/String;

    monitor-enter p0

    .line 136
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 137
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 138
    iput-object p3, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 135
    .end local p0    # "this":Lcom/android/nfc/NfcDispatcher;
    .end local p1    # "intent":Landroid/app/PendingIntent;
    .end local p2    # "filters":[Landroid/content/IntentFilter;
    .end local p3    # "techLists":[[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;)Z
    .locals 9
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "message"    # Landroid/nfc/NdefMessage;

    .line 482
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 483
    return v0

    .line 485
    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v1

    .line 488
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    return v0

    .line 491
    :cond_1
    invoke-static {p2}, Lcom/android/nfc/NfcDispatcher;->extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v2

    .line 492
    .local v2, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 493
    .local v4, "pkg":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 496
    return v5

    .line 498
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 501
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 502
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 505
    .local v3, "firstPackage":Ljava/lang/String;
    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 506
    .local v4, "currentUser":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v7, "android"

    invoke-virtual {v6, v7, v0, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    .line 507
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 511
    .local v4, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 512
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 513
    .local v6, "appLaunchIntent":Landroid/content/Intent;
    if-eqz v6, :cond_4

    invoke-virtual {p1, v6}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 515
    return v5

    .line 518
    :cond_4
    invoke-static {v3}, Lcom/android/nfc/NfcDispatcher;->getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 519
    .local v7, "marketIntent":Landroid/content/Intent;
    if-eqz v7, :cond_5

    invoke-virtual {p1, v7}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 521
    return v5

    .line 508
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "appLaunchIntent":Landroid/content/Intent;
    .end local v7    # "marketIntent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 509
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "NfcDispatcher"

    const-string v6, "Could not create user package context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return v0

    .line 526
    .end local v3    # "firstPackage":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    iget-object v3, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 529
    return v5

    .line 532
    :cond_6
    return v0
.end method

.method tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z
    .locals 5
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;
    .param p4, "overrideIntent"    # Landroid/app/PendingIntent;
    .param p5, "overrideFilters"    # [Landroid/content/IntentFilter;
    .param p6, "overrideTechLists"    # [[Ljava/lang/String;

    .line 407
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 408
    return v0

    .line 413
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    .line 414
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v3

    .line 415
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    if-eqz p6, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v0

    .line 416
    :goto_0
    invoke-virtual {p0, v3, p5, v4}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v4, v1, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    return v2

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    return v0

    .line 428
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    move-result-object v3

    .line 429
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2, p6}, Lcom/android/nfc/NfcDispatcher;->isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 431
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v4, v1, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 433
    return v2

    .line 434
    :catch_1
    move-exception v1

    .line 435
    .restart local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    return v0

    .line 440
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_3
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    move-result-object v3

    .line 441
    if-eqz p6, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v0

    :goto_1
    invoke-virtual {p0, v3, p5, v4}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 443
    :try_start_2
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v4, v1, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .line 445
    return v2

    .line 446
    :catch_2
    move-exception v1

    .line 447
    .restart local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    return v0

    .line 450
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_5
    return v0
.end method

.method public tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z
    .locals 5
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .line 601
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-boolean v1, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v1

    .line 606
    .local v1, "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v1, :cond_6

    iget-boolean v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 607
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 610
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 607
    const-string v4, "no_config_bluetooth"

    invoke-virtual {v2, v4, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    return v0

    .line 614
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 615
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    const-string v3, "device"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 616
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    const-string v3, "headsetname"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    iget v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    const-string v3, "transporttype"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    if-eqz v2, :cond_3

    .line 619
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    const-string v3, "oobdata"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 621
    :cond_3
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    if-eqz v2, :cond_4

    .line 622
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    const-string v3, "uuids"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 624
    :cond_4
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->btClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v2, :cond_5

    .line 625
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->btClass:Landroid/bluetooth/BluetoothClass;

    const-string v3, "class"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 627
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-string v3, "bt_enabled"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mMessenger:Landroid/os/Messenger;

    const-string v3, "client"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 629
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 631
    const/4 v2, 0x1

    return v2

    .line 606
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_0
    return v0

    .line 601
    .end local v1    # "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_7
    :goto_1
    return v0
.end method

.method tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .locals 10
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .line 547
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 549
    invoke-virtual {p2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "tagTechs":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v2}, Lcom/android/nfc/RegisteredComponentCache;->getComponents()Ljava/util/ArrayList;

    move-result-object v2

    .line 558
    .local v2, "registered":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 559
    .local v4, "currentUser":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v6, "android"

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    .line 560
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 564
    .local v4, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 566
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 568
    .local v6, "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v7, v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 569
    invoke-static {v4, v7}, Lcom/android/nfc/NfcDispatcher;->isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 571
    iget-object v7, v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 572
    iget-object v7, v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v6    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    :cond_0
    goto :goto_0

    .line 577
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 579
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 580
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 583
    return v6

    .line 585
    :cond_2
    iget-object v6, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 586
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 588
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/nfc/TechListChooserActivity;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    .local v5, "intent":Landroid/content/Intent;
    iget-object v7, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v8, "android.intent.extra.INTENT"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 590
    const-string v7, "rlist"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 592
    invoke-virtual {p1, v5}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 594
    return v6

    .line 586
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    nop

    .line 597
    :cond_5
    return v3

    .line 561
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .line 562
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "NfcDispatcher"

    const-string v6, "Could not create user package context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return v3
.end method
