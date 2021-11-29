.class public Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;
.super Ljava/lang/Object;
.source "RegisteredNfcFServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;,
        Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;,
        Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;,
        Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "RegisteredNfcFServicesCache"

.field static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# instance fields
.field mActivated:Z

.field final mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

.field final mContext:Landroid/content/Context;

.field final mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

.field final mLock:Ljava/lang/Object;

.field final mReceiver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;",
            ">;"
        }
    .end annotation
.end field

.field mUserSwitched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const-string v0, "persist.nfc.ce_debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserSwitched:Z

    .line 125
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    .line 128
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;-><init>(Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;)V

    .line 152
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 154
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v2, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 165
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v2, "sdFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 170
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 171
    .local v3, "dataDir":Ljava/io/File;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "dynamic_systemcode_nfcid2.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    .line 173
    return-void
.end method

.method private findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .locals 3
    .param p1, "userId"    # I

    .line 116
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    .line 117
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    if-nez v0, :cond_0

    .line 118
    new-instance v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;-><init>(Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;)V

    move-object v0, v1

    .line 119
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    :cond_0
    return-object v0
.end method

.method private generateRandomNfcid2()Ljava/lang/String;
    .locals 13

    .line 708
    const-wide/16 v0, 0x0

    .line 709
    .local v0, "min":J
    const-wide v2, 0xffffffffffffL

    .line 711
    .local v2, "max":J
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-long v6, v2, v0

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    long-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    add-long/2addr v4, v0

    .line 712
    .local v4, "randomNfcid2":J
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0x28

    ushr-long v7, v4, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    .line 713
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/16 v7, 0x20

    ushr-long v11, v4, v7

    and-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v6, v11

    const/16 v7, 0x18

    ushr-long v11, v4, v7

    and-long/2addr v11, v9

    .line 714
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v11, 0x2

    aput-object v7, v6, v11

    const/16 v7, 0x10

    ushr-long v11, v4, v7

    and-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v11, 0x3

    aput-object v7, v6, v11

    const/16 v7, 0x8

    ushr-long v11, v4, v7

    and-long/2addr v11, v9

    .line 715
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v11, 0x4

    aput-object v7, v6, v11

    ushr-long v7, v4, v8

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v6, v8

    .line 712
    const-string v7, "02FE%02X%02X%02X%02X%02X%02X"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private readDynamicSystemCodeNfcid2Locked()V
    .locals 21

    .line 394
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    const-string v2, "RegisteredNfcFServicesCache"

    if-eqz v0, :cond_0

    const-string v0, "readDynamicSystemCodeNfcid2Locked"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    const/4 v3, 0x0

    .line 397
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 398
    const-string v0, "Dynamic System Code, NFCID2 file does not exist."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    if-eqz v3, :cond_1

    .line 479
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 481
    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v3, v0

    .line 402
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v4, v0

    .line 403
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 404
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 405
    .local v0, "eventType":I
    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_3

    .line 407
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v0, v6

    goto :goto_1

    .line 409
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 410
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "services"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 411
    const/4 v9, 0x0

    .line 412
    .local v9, "componentName":Landroid/content/ComponentName;
    const/4 v10, -0x1

    .line 413
    .local v10, "currentUid":I
    const/4 v11, 0x0

    .line 414
    .local v11, "systemCode":Ljava/lang/String;
    const/4 v12, 0x0

    .line 415
    .local v12, "nfcid2":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v20, v8

    move v8, v0

    move-object/from16 v0, v20

    .line 416
    .local v0, "tagName":Ljava/lang/String;
    .local v8, "eventType":I
    .local v13, "description":Ljava/lang/String;
    :goto_2
    if-eq v8, v6, :cond_a

    .line 417
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    .end local v0    # "tagName":Ljava/lang/String;
    .local v14, "tagName":Ljava/lang/String;
    const-string v0, "service"

    if-ne v8, v7, :cond_6

    .line 419
    :try_start_3
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 420
    const-string v0, "component"

    .line 421
    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 422
    .local v15, "compString":Ljava/lang/String;
    const-string v0, "uid"

    .line 423
    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 424
    .local v16, "uidString":Ljava/lang/String;
    const-string v0, "system-code"

    .line 425
    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 426
    .local v17, "systemCodeString":Ljava/lang/String;
    const-string v0, "description"

    .line 427
    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 428
    .local v18, "descriptionString":Ljava/lang/String;
    const-string v0, "nfcid2"

    .line 429
    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v19, v0

    .line 430
    .local v19, "nfcid2String":Ljava/lang/String;
    if-eqz v15, :cond_5

    if-nez v16, :cond_4

    goto :goto_3

    .line 434
    :cond_4
    :try_start_4
    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v9, v0

    .line 435
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v10, v0

    .line 436
    move-object/from16 v11, v17

    .line 437
    move-object/from16 v13, v18

    .line 438
    move-object/from16 v12, v19

    .line 441
    goto :goto_4

    .line 439
    :catch_1
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v5, "Could not parse service uid"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 431
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_3
    const-string v0, "Invalid service attributes"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v15    # "compString":Ljava/lang/String;
    .end local v16    # "uidString":Ljava/lang/String;
    .end local v17    # "systemCodeString":Ljava/lang/String;
    .end local v18    # "descriptionString":Ljava/lang/String;
    .end local v19    # "nfcid2String":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 444
    :cond_6
    const/4 v5, 0x3

    if-ne v8, v5, :cond_9

    .line 445
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 447
    if-eqz v9, :cond_8

    if-ltz v10, :cond_8

    .line 448
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 449
    .local v0, "userId":I
    invoke-direct {v1, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v5

    .line 450
    .local v5, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    if-eqz v11, :cond_7

    .line 451
    new-instance v15, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    invoke-direct {v15, v10, v11}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;-><init>(ILjava/lang/String;)V

    .line 453
    .local v15, "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v6, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .end local v15    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    :cond_7
    if-eqz v12, :cond_8

    .line 457
    new-instance v6, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    invoke-direct {v6, v10, v12}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;-><init>(ILjava/lang/String;)V

    .line 459
    .local v6, "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    iget-object v15, v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v15, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .end local v0    # "userId":I
    .end local v5    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v6    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    :cond_8
    const/4 v0, 0x0

    .line 464
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v5, -0x1

    .line 465
    .end local v10    # "currentUid":I
    .local v5, "currentUid":I
    const/4 v6, 0x0

    .line 466
    .end local v11    # "systemCode":Ljava/lang/String;
    .local v6, "systemCode":Ljava/lang/String;
    const/4 v9, 0x0

    .line 467
    .end local v13    # "description":Ljava/lang/String;
    .local v9, "description":Ljava/lang/String;
    const/4 v10, 0x0

    move-object v11, v6

    move-object v13, v9

    move-object v12, v10

    move-object v9, v0

    move v10, v5

    .line 470
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "currentUid":I
    .end local v6    # "systemCode":Ljava/lang/String;
    .local v9, "componentName":Landroid/content/ComponentName;
    .restart local v10    # "currentUid":I
    .restart local v11    # "systemCode":Ljava/lang/String;
    .restart local v13    # "description":Ljava/lang/String;
    :cond_9
    :goto_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v8, v0

    move-object v0, v14

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 477
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "eventType":I
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "currentUid":I
    .end local v11    # "systemCode":Ljava/lang/String;
    .end local v12    # "nfcid2":Ljava/lang/String;
    .end local v13    # "description":Ljava/lang/String;
    .end local v14    # "tagName":Ljava/lang/String;
    :cond_a
    if-eqz v3, :cond_b

    .line 479
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 481
    :goto_6
    goto :goto_7

    .line 480
    :catch_2
    move-exception v0

    goto :goto_6

    .line 477
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_8

    .line 473
    :catch_3
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v4, "Could not parse dynamic System Code, NFCID2 file, trashing."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_b

    .line 479
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    .line 484
    :cond_b
    :goto_7
    return-void

    .line 477
    :goto_8
    if-eqz v3, :cond_c

    .line 479
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 481
    goto :goto_9

    .line 480
    :catch_4
    move-exception v0

    .line 481
    :cond_c
    :goto_9
    throw v2
.end method

.method private writeDynamicSystemCodeNfcid2Locked()Z
    .locals 17

    .line 487
    move-object/from16 v1, p0

    const-string v0, "services"

    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    const-string v3, "RegisteredNfcFServicesCache"

    if-eqz v2, :cond_0

    const-string v2, "writeDynamicSystemCodeNfcid2Locked"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    const/4 v2, 0x0

    .line 490
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v2, v5

    .line 491
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 492
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v5, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 493
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 494
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 495
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    move v7, v4

    .local v7, "i":I
    :goto_0
    iget-object v9, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v7, v9, :cond_5

    .line 497
    iget-object v9, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    .line 499
    .local v9, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v10, v9, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "nfcid2"

    const-string v13, "uid"

    const-string v14, "component"

    const-string v15, "service"

    if-eqz v11, :cond_2

    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 500
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    invoke-interface {v5, v8, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ComponentName;

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v8, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    iget v4, v4, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v8, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    const-string v4, "system-code"

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    iget-object v13, v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->systemCode:Ljava/lang/String;

    invoke-interface {v5, v8, v4, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    iget-object v4, v9, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 505
    iget-object v4, v9, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    .line 506
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->nfcid2:Ljava/lang/String;

    .line 505
    invoke-interface {v5, v8, v12, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    :cond_1
    invoke-interface {v5, v8, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    const/4 v4, 0x0

    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    goto :goto_1

    .line 511
    :cond_2
    iget-object v4, v9, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 512
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 513
    invoke-interface {v5, v8, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 514
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8, v14, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    iget v6, v6, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8, v13, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    iget-object v6, v6, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->nfcid2:Ljava/lang/String;

    invoke-interface {v5, v8, v12, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    invoke-interface {v5, v8, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 519
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    .line 496
    .end local v9    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 521
    .end local v7    # "i":I
    :cond_5
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 523
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 524
    const/4 v0, 0x1

    return v0

    .line 525
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error writing dynamic System Code, NFCID2"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    if-eqz v2, :cond_6

    .line 528
    iget-object v3, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 530
    :cond_6
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 3
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .line 190
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 191
    .local v1, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 192
    .end local v1    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_0
    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 719
    const-string v0, "Registered HCE-F services for current user: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v1

    .line 722
    .local v1, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 723
    .local v3, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v3, p1, p2, p3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 724
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    .end local v3    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_0

    .line 726
    :cond_0
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    .end local v1    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 184
    .local v1, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegisteredNfcFServicesCache"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v1    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method getInstalledServices(I)Ljava/util/ArrayList;
    .locals 14
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    .line 217
    const-string v0, "android.permission.BIND_NFC_SERVICE"

    const-string v1, "android.permission.NFC"

    const-string v2, "Unable to load component info "

    sget-boolean v3, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    const-string v4, "RegisteredNfcFServicesCache"

    if-eqz v3, :cond_0

    const-string v3, "getInstalledServices"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    const-string v5, "android"

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 225
    .local v3, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 227
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v5, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.nfc.cardemulation.action.HOST_NFCF_SERVICE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x80

    invoke-virtual {v3, v6, v7, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 233
    .local v6, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 235
    .local v8, "resolvedService":Landroid/content/pm/ResolveInfo;
    :try_start_1
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 236
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .local v10, "componentName":Landroid/content/ComponentName;
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, ": it does not require the permission "

    const-string v13, "Skipping NfcF service "

    if-eqz v11, :cond_1

    .line 240
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    goto :goto_0

    .line 245
    :cond_1
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 247
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    goto :goto_0

    .line 252
    :cond_2
    new-instance v11, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-direct {v11, v3, v8}, Landroid/nfc/cardemulation/NfcFServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    .line 253
    .local v11, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    nop

    .line 254
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 258
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :catch_0
    move-exception v9

    .line 259
    .local v9, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 256
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 257
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    nop

    .line 261
    .end local v8    # "resolvedService":Landroid/content/pm/ResolveInfo;
    :goto_2
    goto/16 :goto_0

    .line 263
    :cond_3
    return-object v5

    .line 222
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v6    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_2
    move-exception v0

    .line 223
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Could not create user package context"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNfcid2ForService(IILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 667
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    const-string v1, "RegisteredNfcFServicesCache"

    if-eqz v0, :cond_0

    const-string v0, "getNfcid2ForService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v0

    .line 669
    .local v0, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 670
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 671
    const-string v3, "UID mismatch"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-object v2

    .line 674
    :cond_1
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 676
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-object v2
.end method

.method public getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 201
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v1

    .line 203
    .local v1, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcFServiceInfo;

    monitor-exit v0

    return-object v2

    .line 204
    .end local v1    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServices(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v2

    .line 211
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 212
    nop

    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    monitor-exit v1

    .line 213
    return-object v0

    .line 212
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSystemCodeForService(IILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 592
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    const-string v1, "RegisteredNfcFServicesCache"

    if-eqz v0, :cond_0

    const-string v0, "getSystemCodeForService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v0

    .line 594
    .local v0, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 595
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 596
    const-string v3, "UID mismatch"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-object v2

    .line 599
    :cond_1
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 601
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-object v2
.end method

.method public hasService(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initialize()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->readDynamicSystemCodeNfcid2Locked()V

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public invalidateCache(I)V
    .locals 20
    .param p1, "userId"    # I

    .line 267
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredNfcFServicesCache"

    const-string v2, "invalidateCache"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getInstalledServices(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 269
    .local v2, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    if-nez v2, :cond_1

    .line 270
    return-void

    .line 272
    :cond_1
    const/4 v3, 0x0

    .line 273
    .local v3, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 274
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v0

    .line 277
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    .line 278
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 279
    .local v5, "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v6, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v7, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    const/4 v8, 0x0

    .line 282
    .local v8, "matched":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v10, :cond_5

    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 283
    .local v10, "validService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 284
    .local v12, "cachedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v10, v12}, Landroid/nfc/cardemulation/NfcFServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 285
    const/4 v8, 0x1

    .line 286
    goto :goto_2

    .line 288
    .end local v12    # "cachedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_2
    goto :goto_1

    .line 289
    :cond_3
    :goto_2
    if-nez v8, :cond_4

    .line 290
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :cond_4
    const/4 v8, 0x0

    .line 293
    .end local v10    # "validService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_0

    .line 388
    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v8    # "matched":Z
    :catchall_0
    move-exception v0

    move/from16 v5, p1

    move-object/from16 v16, v2

    goto/16 :goto_12

    .line 294
    .restart local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .restart local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v8    # "matched":Z
    :cond_5
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v10, :cond_9

    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 295
    .local v10, "cachedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 296
    .local v12, "validService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v10, v12}, Landroid/nfc/cardemulation/NfcFServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 297
    const/4 v8, 0x1

    .line 298
    goto :goto_5

    .line 300
    .end local v12    # "validService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_6
    goto :goto_4

    .line 301
    :cond_7
    :goto_5
    if-nez v8, :cond_8

    .line 302
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    :cond_8
    const/4 v8, 0x0

    .line 305
    .end local v10    # "cachedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_3

    .line 306
    :cond_9
    :try_start_4
    iget-boolean v9, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserSwitched:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v9, :cond_a

    .line 307
    :try_start_5
    const-string v9, "RegisteredNfcFServicesCache"

    const-string v10, "User switched, rebuild internal cache"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserSwitched:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 309
    :cond_a
    :try_start_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-nez v9, :cond_b

    :try_start_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_b

    .line 310
    const-string v9, "RegisteredNfcFServicesCache"

    const-string v10, "Service unchanged, not updating"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    .line 315
    :cond_b
    :goto_6
    :try_start_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v10, :cond_d

    :try_start_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 316
    .local v10, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v10}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    if-eqz v11, :cond_c

    const-string v11, "RegisteredNfcFServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Added service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 318
    .end local v10    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_c
    goto :goto_7

    .line 319
    :cond_d
    :try_start_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v10, :cond_f

    :try_start_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 320
    .restart local v10    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v10}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    if-eqz v11, :cond_e

    const-string v11, "RegisteredNfcFServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removed service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 322
    .end local v10    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_e
    goto :goto_8

    .line 324
    :cond_f
    :try_start_c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v9, "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v11, :cond_12

    :try_start_d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 329
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    .line 330
    .local v12, "componentName":Landroid/content/ComponentName;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    .line 331
    .local v13, "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 332
    .local v14, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-eqz v14, :cond_11

    invoke-virtual {v14}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object/from16 v16, v2

    .end local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .local v16, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :try_start_e
    iget v2, v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->uid:I

    if-eq v15, v2, :cond_10

    goto :goto_a

    .line 336
    :cond_10
    iget-object v2, v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->systemCode:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicSystemCode(Ljava/lang/String;)V

    .line 338
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .end local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    move-object/from16 v2, v16

    goto :goto_9

    .line 332
    .end local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .restart local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_11
    move-object/from16 v16, v2

    .line 333
    .end local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :goto_a
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 334
    move-object/from16 v2, v16

    goto :goto_9

    .line 388
    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v8    # "matched":Z
    .end local v9    # "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .end local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :catchall_1
    move-exception v0

    move/from16 v5, p1

    goto/16 :goto_12

    .end local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v5, p1

    .end local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    goto/16 :goto_12

    .line 340
    .end local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .restart local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v8    # "matched":Z
    .restart local v9    # "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_12
    move-object/from16 v16, v2

    .end local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :try_start_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v2, "toBeRemovedDynamicNfcid2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v11, :cond_15

    :try_start_10
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 345
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    .line 346
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    .line 347
    .local v13, "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 348
    .restart local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-eqz v14, :cond_14

    invoke-virtual {v14}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object/from16 v17, v3

    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .local v17, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :try_start_11
    iget v3, v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->uid:I

    if-eq v15, v3, :cond_13

    goto :goto_c

    .line 352
    :cond_13
    iget-object v3, v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->nfcid2:Ljava/lang/String;

    invoke-virtual {v14, v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicNfcid2(Ljava/lang/String;)V

    .line 354
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .end local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    move-object/from16 v3, v17

    goto :goto_b

    .line 348
    .end local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .restart local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_14
    move-object/from16 v17, v3

    .line 349
    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :goto_c
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    move-object/from16 v3, v17

    goto :goto_b

    .line 388
    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v2    # "toBeRemovedDynamicNfcid2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v8    # "matched":Z
    .end local v9    # "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .end local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v5, p1

    goto/16 :goto_11

    .line 355
    .restart local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .restart local v2    # "toBeRemovedDynamicNfcid2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v8    # "matched":Z
    .restart local v9    # "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_15
    move-object/from16 v17, v3

    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 356
    .local v10, "removedComponent":Landroid/content/ComponentName;
    const-string v11, "RegisteredNfcFServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing dynamic System Code registered by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    nop

    .end local v10    # "removedComponent":Landroid/content/ComponentName;
    goto :goto_d

    .line 360
    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 361
    .restart local v10    # "removedComponent":Landroid/content/ComponentName;
    const-string v11, "RegisteredNfcFServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing dynamic NFCID2 registered by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    nop

    .end local v10    # "removedComponent":Landroid/content/ComponentName;
    goto :goto_e

    .line 366
    :cond_17
    const/4 v3, 0x0

    .line 368
    .local v3, "nfcid2Assigned":Z
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 369
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 370
    .local v12, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v12}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v13

    const-string v14, "RANDOM"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->generateRandomNfcid2()Ljava/lang/String;

    move-result-object v13

    .line 372
    .local v13, "randomNfcid2":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicNfcid2(Ljava/lang/String;)V

    .line 373
    new-instance v14, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    .line 374
    invoke-virtual {v12}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v15

    invoke-direct {v14, v15, v13}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;-><init>(ILjava/lang/String;)V

    .line 375
    .local v14, "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    iget-object v15, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v5

    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .local v19, "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    move-object/from16 v5, v18

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v15, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const/4 v3, 0x1

    goto :goto_10

    .line 370
    .end local v13    # "randomNfcid2":Ljava/lang/String;
    .end local v14    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .end local v19    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :cond_18
    move-object/from16 v19, v5

    .line 378
    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v12    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .restart local v19    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :goto_10
    move-object/from16 v5, v19

    goto :goto_f

    .line 381
    .end local v19    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :cond_19
    move-object/from16 v19, v5

    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v19    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1a

    .line 382
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1a

    if-eqz v3, :cond_1b

    .line 384
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->writeDynamicSystemCodeNfcid2Locked()Z

    .line 387
    :cond_1b
    new-instance v5, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object v3, v5

    .line 388
    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v2    # "toBeRemovedDynamicNfcid2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v8    # "matched":Z
    .end local v9    # "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v19    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .local v3, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 389
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move/from16 v5, p1

    invoke-interface {v0, v5, v2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;->onNfcFServicesUpdated(ILjava/util/List;)V

    .line 390
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    if-eqz v0, :cond_1c

    invoke-virtual {v1, v3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->dump(Ljava/util/ArrayList;)V

    .line 391
    :cond_1c
    return-void

    .line 388
    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :catchall_4
    move-exception v0

    move/from16 v5, p1

    move-object/from16 v3, v17

    goto :goto_12

    .end local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :catchall_5
    move-exception v0

    move/from16 v5, p1

    move-object/from16 v17, v3

    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :goto_11
    goto :goto_12

    .end local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .local v2, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :catchall_6
    move-exception v0

    move/from16 v5, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :goto_12
    :try_start_13
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_12
.end method

.method public onHostEmulationActivated()V
    .locals 2

    .line 682
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredNfcFServicesCache"

    const-string v1, "onHostEmulationActivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    .line 685
    monitor-exit v0

    .line 686
    return-void

    .line 685
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHostEmulationDeactivated()V
    .locals 2

    .line 689
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredNfcFServicesCache"

    const-string v1, "onHostEmulationDeactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    .line 692
    monitor-exit v0

    .line 693
    return-void

    .line 692
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNfcDisabled()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    .line 698
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitched()V
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserSwitched:Z

    .line 704
    monitor-exit v0

    .line 705
    return-void

    .line 704
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerSystemCodeForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "systemCode"    # Ljava/lang/String;

    .line 536
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredNfcFServicesCache"

    const-string v1, "registerSystemCodeForService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    const/4 v0, 0x0

    .line 539
    .local v0, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_0
    iget-boolean v2, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 541
    const-string v2, "RegisteredNfcFServicesCache"

    const-string v4, "failed to register System Code during activation"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    monitor-exit v1

    return v3

    .line 544
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v2

    .line 546
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v4

    .line 547
    .local v4, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-nez v4, :cond_2

    .line 548
    const-string v5, "RegisteredNfcFServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    monitor-exit v1

    return v3

    .line 551
    :cond_2
    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v5

    if-eq v5, p2, :cond_3

    .line 556
    const-string v5, "RegisteredNfcFServicesCache"

    const-string v6, "UID mismatch."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    monitor-exit v1

    return v3

    .line 559
    :cond_3
    const-string v5, "NULL"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 560
    invoke-static {p4}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidSystemCode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 561
    const-string v5, "RegisteredNfcFServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System Code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not a valid System Code"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    monitor-exit v1

    return v3

    .line 565
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object p4, v3

    .line 566
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    .line 567
    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    .line 568
    .local v3, "oldDynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    invoke-direct {v5, p2, p4}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;-><init>(ILjava/lang/String;)V

    .line 569
    .local v5, "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v6, p3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->writeDynamicSystemCodeNfcid2Locked()Z

    move-result v6

    .line 571
    .local v6, "success":Z
    if-eqz v6, :cond_5

    .line 572
    invoke-virtual {v4, p4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicSystemCode(Ljava/lang/String;)V

    .line 573
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    goto :goto_0

    .line 575
    :cond_5
    const-string v7, "RegisteredNfcFServicesCache"

    const-string v8, "Failed to persist System Code."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    if-nez v3, :cond_6

    .line 578
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v7, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 580
    :cond_6
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v7, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v3    # "oldDynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .end local v4    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v5    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    if-eqz v6, :cond_7

    .line 586
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    invoke-interface {v1, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;->onNfcFServicesUpdated(ILjava/util/List;)V

    .line 588
    :cond_7
    return v6

    .line 583
    .end local v6    # "success":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeSystemCodeForService(IILandroid/content/ComponentName;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 607
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredNfcFServicesCache"

    const-string v1, "removeSystemCodeForService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    const-string v0, "NULL"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->registerSystemCodeForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNfcid2ForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "nfcid2"    # Ljava/lang/String;

    .line 613
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredNfcFServicesCache"

    const-string v1, "setNfcid2ForService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    const/4 v0, 0x0

    .line 616
    .local v0, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 617
    :try_start_0
    iget-boolean v2, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 618
    const-string v2, "RegisteredNfcFServicesCache"

    const-string v4, "failed to set NFCID2 during activation"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    monitor-exit v1

    return v3

    .line 621
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v2

    .line 623
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v4

    .line 624
    .local v4, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-nez v4, :cond_2

    .line 625
    const-string v5, "RegisteredNfcFServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    monitor-exit v1

    return v3

    .line 628
    :cond_2
    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v5

    if-eq v5, p2, :cond_3

    .line 633
    const-string v5, "RegisteredNfcFServicesCache"

    const-string v6, "UID mismatch."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    monitor-exit v1

    return v3

    .line 636
    :cond_3
    invoke-static {p4}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidNfcid2(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 637
    const-string v5, "RegisteredNfcFServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NFCID2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not a valid NFCID2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    monitor-exit v1

    return v3

    .line 641
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object p4, v3

    .line 642
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    .line 643
    .local v3, "oldDynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    invoke-direct {v5, p2, p4}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;-><init>(ILjava/lang/String;)V

    .line 644
    .local v5, "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v6, p3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->writeDynamicSystemCodeNfcid2Locked()Z

    move-result v6

    .line 646
    .local v6, "success":Z
    if-eqz v6, :cond_5

    .line 647
    invoke-virtual {v4, p4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicNfcid2(Ljava/lang/String;)V

    .line 648
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    goto :goto_0

    .line 650
    :cond_5
    const-string v7, "RegisteredNfcFServicesCache"

    const-string v8, "Failed to persist NFCID2."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    if-nez v3, :cond_6

    .line 653
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v7, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 655
    :cond_6
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v7, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v3    # "oldDynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .end local v4    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v5    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    if-eqz v6, :cond_7

    .line 661
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    invoke-interface {v1, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;->onNfcFServicesUpdated(ILjava/util/List;)V

    .line 663
    :cond_7
    return v6

    .line 658
    .end local v6    # "success":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
