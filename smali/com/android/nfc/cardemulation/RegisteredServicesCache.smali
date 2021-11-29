.class public Lcom/android/nfc/cardemulation/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final SERVICE_STATE_FILE_VERSION:Ljava/lang/String; = "1.0"

.field static final TAG:Ljava/lang/String; = "RegisteredServicesCache"

.field static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# instance fields
.field installedServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAllServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

.field final mContext:Landroid/content/Context;

.field final mDynamicSettingsFile:Landroid/util/AtomicFile;

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

.field final mServiceStateFile:Landroid/util/AtomicFile;

.field final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    const-string v0, "persist.nfc.ce_debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 109
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mAllServices:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    .line 146
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .line 149
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V

    .line 177
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 179
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v2, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 190
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v2, "sdFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 195
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 196
    .local v3, "dataDir":Ljava/io/File;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "dynamic_aids.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    .line 197
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "service_state.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    .line 198
    return-void
.end method

.method private findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .locals 3
    .param p1, "userId"    # I

    .line 137
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 138
    .local v0, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    if-nez v0, :cond_0

    .line 139
    new-instance v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;)V

    move-object v0, v1

    .line 140
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    :cond_0
    return-object v0
.end method

.method private readDynamicSettingsLocked()V
    .locals 21

    .line 373
    move-object/from16 v1, p0

    const-string v2, "RegisteredServicesCache"

    const/4 v3, 0x0

    .line 375
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    const-string v0, "Dynamic AIDs file does not exist."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    if-eqz v3, :cond_0

    .line 452
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 454
    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v3, v0

    .line 380
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v4, v0

    .line 381
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 382
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 383
    .local v0, "eventType":I
    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_2

    .line 385
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v0, v6

    goto :goto_1

    .line 387
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 388
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "services"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 389
    const/4 v9, 0x0

    .line 390
    .local v9, "inService":Z
    const/4 v10, 0x0

    .line 391
    .local v10, "currentComponent":Landroid/content/ComponentName;
    const/4 v11, -0x1

    .line 392
    .local v11, "currentUid":I
    const/4 v12, 0x0

    .line 393
    .local v12, "currentOffHostSE":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v8

    move v8, v0

    move-object/from16 v0, v20

    .line 394
    .local v0, "tagName":Ljava/lang/String;
    .local v8, "eventType":I
    .local v13, "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcAidGroup;>;"
    :goto_2
    if-eq v8, v6, :cond_f

    .line 395
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    .end local v0    # "tagName":Ljava/lang/String;
    .local v14, "tagName":Ljava/lang/String;
    const-string v0, "service"

    const/4 v15, 0x3

    if-ne v8, v7, :cond_8

    .line 397
    :try_start_3
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 398
    const-string v0, "component"

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 399
    .local v16, "compString":Ljava/lang/String;
    const-string v0, "uid"

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 400
    .local v17, "uidString":Ljava/lang/String;
    const-string v0, "offHostSE"

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v18, v0

    .line 401
    .local v18, "offHostString":Ljava/lang/String;
    if-eqz v16, :cond_4

    if-nez v17, :cond_3

    goto :goto_3

    .line 405
    :cond_3
    :try_start_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v11, v0

    .line 406
    invoke-static/range {v16 .. v16}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v10, v0

    .line 407
    move-object/from16 v12, v18

    .line 408
    const/4 v9, 0x1

    .line 411
    goto :goto_4

    .line 409
    :catch_1
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v5, "Could not parse service uid"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 402
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_3
    const-string v0, "Invalid service attributes"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v16    # "compString":Ljava/lang/String;
    .end local v17    # "uidString":Ljava/lang/String;
    .end local v18    # "offHostString":Ljava/lang/String;
    :cond_5
    :goto_4
    const-string v0, "aid-group"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-ne v0, v15, :cond_7

    if-eqz v9, :cond_7

    .line 415
    invoke-static {v4}, Landroid/nfc/cardemulation/NfcAidGroup;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/NfcAidGroup;

    move-result-object v0

    .line 416
    .local v0, "group":Landroid/nfc/cardemulation/NfcAidGroup;
    if-eqz v0, :cond_6

    .line 417
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 419
    :cond_6
    const-string v5, "Could not parse AID group."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v0    # "group":Landroid/nfc/cardemulation/NfcAidGroup;
    :cond_7
    :goto_5
    move/from16 v19, v8

    goto/16 :goto_9

    .line 422
    :cond_8
    if-ne v8, v15, :cond_e

    .line 423
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 425
    if-eqz v10, :cond_c

    if-ltz v11, :cond_c

    .line 426
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a

    if-eqz v12, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v19, v8

    goto :goto_8

    .line 427
    :cond_a
    :goto_6
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 428
    .local v0, "userId":I
    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    invoke-direct {v5, v11}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;-><init>(I)V

    .line 429
    .local v5, "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/nfc/cardemulation/NfcAidGroup;

    move-object/from16 v17, v16

    .line 430
    .local v17, "group":Landroid/nfc/cardemulation/NfcAidGroup;
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual/range {v17 .. v17}, Landroid/nfc/cardemulation/NfcAidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    move/from16 v19, v8

    move-object/from16 v8, v17

    .end local v17    # "group":Landroid/nfc/cardemulation/NfcAidGroup;
    .local v8, "group":Landroid/nfc/cardemulation/NfcAidGroup;
    .local v19, "eventType":I
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    move/from16 v8, v19

    const/4 v6, 0x1

    const/4 v7, 0x2

    .end local v8    # "group":Landroid/nfc/cardemulation/NfcAidGroup;
    goto :goto_7

    .line 432
    .end local v19    # "eventType":I
    .local v8, "eventType":I
    :cond_b
    move/from16 v19, v8

    .end local v8    # "eventType":I
    .restart local v19    # "eventType":I
    iput-object v12, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 433
    invoke-direct {v1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v6

    .line 434
    .local v6, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v7, v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v7, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 425
    .end local v0    # "userId":I
    .end local v5    # "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .end local v6    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v19    # "eventType":I
    .restart local v8    # "eventType":I
    :cond_c
    move/from16 v19, v8

    .line 436
    .end local v8    # "eventType":I
    .restart local v19    # "eventType":I
    :goto_8
    const/4 v0, -0x1

    .line 437
    .end local v11    # "currentUid":I
    .local v0, "currentUid":I
    const/4 v5, 0x0

    .line 438
    .end local v10    # "currentComponent":Landroid/content/ComponentName;
    .local v5, "currentComponent":Landroid/content/ComponentName;
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 439
    const/4 v6, 0x0

    .line 440
    .end local v9    # "inService":Z
    .local v6, "inService":Z
    const/4 v7, 0x0

    move v11, v0

    move-object v10, v5

    move v9, v6

    move-object v12, v7

    .end local v12    # "currentOffHostSE":Ljava/lang/String;
    .local v7, "currentOffHostSE":Ljava/lang/String;
    goto :goto_9

    .line 423
    .end local v0    # "currentUid":I
    .end local v5    # "currentComponent":Landroid/content/ComponentName;
    .end local v6    # "inService":Z
    .end local v7    # "currentOffHostSE":Ljava/lang/String;
    .end local v19    # "eventType":I
    .restart local v8    # "eventType":I
    .restart local v9    # "inService":Z
    .restart local v10    # "currentComponent":Landroid/content/ComponentName;
    .restart local v11    # "currentUid":I
    .restart local v12    # "currentOffHostSE":Ljava/lang/String;
    :cond_d
    move/from16 v19, v8

    .end local v8    # "eventType":I
    .restart local v19    # "eventType":I
    goto :goto_9

    .line 422
    .end local v19    # "eventType":I
    .restart local v8    # "eventType":I
    :cond_e
    move/from16 v19, v8

    .line 443
    .end local v8    # "eventType":I
    .restart local v19    # "eventType":I
    :goto_9
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v8, v0

    move-object v0, v14

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    .end local v19    # "eventType":I
    .restart local v8    # "eventType":I
    goto/16 :goto_2

    .line 394
    .end local v14    # "tagName":Ljava/lang/String;
    .local v0, "tagName":Ljava/lang/String;
    :cond_f
    move/from16 v19, v8

    .line 450
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "eventType":I
    .end local v9    # "inService":Z
    .end local v10    # "currentComponent":Landroid/content/ComponentName;
    .end local v11    # "currentUid":I
    .end local v12    # "currentOffHostSE":Ljava/lang/String;
    .end local v13    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcAidGroup;>;"
    :cond_10
    if-eqz v3, :cond_11

    .line 452
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 454
    :goto_a
    goto :goto_b

    .line 453
    :catch_2
    move-exception v0

    goto :goto_a

    .line 450
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_c

    .line 446
    :catch_3
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v4, "Could not parse dynamic Settings file, trashing."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 450
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_11

    .line 452
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_a

    .line 457
    :cond_11
    :goto_b
    return-void

    .line 450
    :goto_c
    if-eqz v3, :cond_12

    .line 452
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 454
    goto :goto_d

    .line 453
    :catch_4
    move-exception v0

    .line 454
    :cond_12
    :goto_d
    throw v2
.end method

.method private updateServiceStateFromFile(I)V
    .locals 20
    .param p1, "currUserId"    # I

    .line 498
    move-object/from16 v1, p0

    const-string v2, "null"

    const-string v3, "RegisteredServicesCache"

    const/4 v4, 0x0

    .line 504
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v0, " Reading service state data always from file"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    const-string v0, "mServiceStateFile does not exist"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    if-eqz v4, :cond_0

    .line 617
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    goto :goto_1

    .line 620
    :cond_0
    :goto_0
    nop

    .line 507
    :goto_1
    return-void

    .line 509
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v4, v0

    .line 510
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v5, v0

    .line 511
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 512
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 513
    .local v0, "eventType":I
    const/4 v7, -0x1

    .line 514
    .local v7, "currUid":I
    const/4 v8, 0x0

    .line 516
    .local v8, "currComponent":Landroid/content/ComponentName;
    const/4 v9, 0x1

    .line 518
    .local v9, "state":I
    :goto_2
    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eq v0, v11, :cond_2

    if-eq v0, v10, :cond_2

    .line 520
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v0, v10

    goto :goto_2

    .line 522
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 523
    .local v12, "tagName":Ljava/lang/String;
    move-object v13, v2

    .line 529
    .local v13, "fileVersion":Ljava/lang/String;
    const-string v14, "Version"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 530
    const-string v14, "FileVersion"

    invoke-interface {v5, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 531
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ServiceStateFileVersion="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v0, v14

    .line 533
    :goto_3
    if-eq v0, v11, :cond_3

    if-eq v0, v10, :cond_3

    .line 535
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v0, v14

    goto :goto_3

    .line 537
    :cond_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 538
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Next Tag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_4
    const-string v14, "services"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    move/from16 v19, v7

    move v7, v0

    move-object v0, v12

    move v12, v9

    move-object v9, v8

    move/from16 v8, v19

    .line 541
    .local v0, "tagName":Ljava/lang/String;
    .local v7, "eventType":I
    .local v8, "currUid":I
    .local v9, "currComponent":Landroid/content/ComponentName;
    .local v12, "state":I
    :goto_4
    if-eq v7, v10, :cond_10

    .line 542
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 543
    .end local v0    # "tagName":Ljava/lang/String;
    .local v14, "tagName":Ljava/lang/String;
    const-string v0, "service"

    if-ne v7, v11, :cond_d

    .line 544
    :try_start_3
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-ne v0, v11, :cond_f

    .line 545
    const-string v0, "component"

    invoke-interface {v5, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 546
    .local v16, "compString":Ljava/lang/String;
    const-string v0, "uid"

    invoke-interface {v5, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 547
    .local v17, "uidString":Ljava/lang/String;
    const-string v0, "serviceState"

    invoke-interface {v5, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v18, v0

    .line 549
    .local v18, "stateString":Ljava/lang/String;
    move-object/from16 v6, v16

    .end local v16    # "compString":Ljava/lang/String;
    .local v6, "compString":Ljava/lang/String;
    if-eqz v6, :cond_c

    move-object/from16 v10, v17

    .end local v17    # "uidString":Ljava/lang/String;
    .local v10, "uidString":Ljava/lang/String;
    if-eqz v10, :cond_b

    move-object/from16 v11, v18

    .end local v18    # "stateString":Ljava/lang/String;
    .local v11, "stateString":Ljava/lang/String;
    if-nez v11, :cond_5

    goto/16 :goto_7

    .line 553
    :cond_5
    :try_start_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v8, v0

    .line 554
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v9, v0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " curr component "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " curr uid "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " curr state "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 560
    const-string v0, "false"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 561
    const/4 v12, 0x0

    goto :goto_5

    .line 563
    :cond_6
    const/4 v12, 0x1

    goto :goto_5

    .line 564
    :cond_7
    const-string v0, "1.0"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 565
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v12, v0

    .line 566
    if-ltz v12, :cond_8

    const/4 v0, 0x3

    if-le v12, v0, :cond_9

    .line 567
    :cond_8
    const-string v0, "Invalid Service state"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_9
    :goto_5
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "installedServices contains uidString : "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 578
    .local v0, "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    nop

    .end local v0    # "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    goto :goto_6

    .line 581
    :cond_a
    const-string v0, "installedServices no uidString "

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 583
    .restart local v0    # "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object v15, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v15, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 589
    .end local v0    # "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    :goto_6
    goto :goto_8

    .line 587
    :catch_1
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v15, "could not parse the service attributes"

    invoke-static {v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 549
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "stateString":Ljava/lang/String;
    .restart local v18    # "stateString":Ljava/lang/String;
    :cond_b
    move-object/from16 v11, v18

    .end local v18    # "stateString":Ljava/lang/String;
    .restart local v11    # "stateString":Ljava/lang/String;
    goto :goto_7

    .end local v10    # "uidString":Ljava/lang/String;
    .end local v11    # "stateString":Ljava/lang/String;
    .restart local v17    # "uidString":Ljava/lang/String;
    .restart local v18    # "stateString":Ljava/lang/String;
    :cond_c
    move-object/from16 v10, v17

    move-object/from16 v11, v18

    .line 550
    .end local v17    # "uidString":Ljava/lang/String;
    .end local v18    # "stateString":Ljava/lang/String;
    .restart local v10    # "uidString":Ljava/lang/String;
    .restart local v11    # "stateString":Ljava/lang/String;
    :goto_7
    const-string v0, "Invalid service attributes"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v6    # "compString":Ljava/lang/String;
    .end local v10    # "uidString":Ljava/lang/String;
    .end local v11    # "stateString":Ljava/lang/String;
    :goto_8
    goto :goto_9

    .line 592
    :cond_d
    const/4 v6, 0x3

    if-ne v7, v6, :cond_f

    .line 593
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 594
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 596
    .local v0, "userId":I
    invoke-direct {v1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v6

    .line 597
    .local v6, "serviceCache":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v10, v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 599
    .local v10, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    if-eqz v10, :cond_e

    .line 600
    const-string v11, "other"

    invoke-virtual {v10, v11, v12}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->setServiceState(Ljava/lang/String;I)I

    .line 603
    .end local v0    # "userId":I
    .end local v6    # "serviceCache":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v10    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_e
    const/4 v0, -0x1

    .line 604
    .end local v8    # "currUid":I
    .local v0, "currUid":I
    const/4 v6, 0x0

    .line 605
    .end local v9    # "currComponent":Landroid/content/ComponentName;
    .local v6, "currComponent":Landroid/content/ComponentName;
    const/4 v8, 0x1

    move-object v9, v6

    move v12, v8

    move v8, v0

    .line 608
    .end local v0    # "currUid":I
    .end local v6    # "currComponent":Landroid/content/ComponentName;
    .restart local v8    # "currUid":I
    .restart local v9    # "currComponent":Landroid/content/ComponentName;
    :cond_f
    :goto_9
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v7, v0

    move-object v0, v14

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    goto/16 :goto_4

    .line 616
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "eventType":I
    .end local v8    # "currUid":I
    .end local v9    # "currComponent":Landroid/content/ComponentName;
    .end local v12    # "state":I
    .end local v13    # "fileVersion":Ljava/lang/String;
    .end local v14    # "tagName":Ljava/lang/String;
    :cond_10
    if-eqz v4, :cond_11

    .line 617
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_a

    .line 619
    :catch_2
    move-exception v0

    .line 621
    goto :goto_b

    .line 620
    :cond_11
    :goto_a
    goto :goto_b

    .line 615
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_c

    .line 611
    :catch_3
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not parse the seriveState file , thrashing the file "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 616
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_11

    .line 617
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_a

    .line 622
    :goto_b
    return-void

    .line 616
    :goto_c
    if-eqz v4, :cond_12

    .line 617
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_d

    .line 619
    :catch_4
    move-exception v0

    goto :goto_e

    .line 620
    :cond_12
    :goto_d
    nop

    :goto_e
    throw v2
.end method

.method private writeDynamicSettingsLocked()Z
    .locals 13

    .line 460
    const-string v0, "service"

    const-string v1, "services"

    const/4 v2, 0x0

    .line 462
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    .line 463
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 464
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 465
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 466
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 467
    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    move v6, v3

    .local v6, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 469
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 470
    .local v8, "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v9, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 471
    .local v10, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;>;"
    invoke-interface {v4, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    const-string v11, "component"

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v7, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    const-string v11, "uid"

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    iget v12, v12, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v7, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    iget-object v11, v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 475
    const-string v11, "offHostSE"

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    iget-object v12, v12, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    invoke-interface {v4, v7, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    :cond_0
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    iget-object v11, v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/NfcAidGroup;

    .line 478
    .local v12, "group":Landroid/nfc/cardemulation/NfcAidGroup;
    invoke-virtual {v12, v4}, Landroid/nfc/cardemulation/NfcAidGroup;->writeAsXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 479
    .end local v12    # "group":Landroid/nfc/cardemulation/NfcAidGroup;
    goto :goto_2

    .line 480
    :cond_1
    invoke-interface {v4, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 481
    nop

    .end local v10    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;>;"
    goto :goto_1

    .line 468
    .end local v8    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 483
    .end local v6    # "i":I
    :cond_3
    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 484
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 485
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    return v5

    .line 487
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RegisteredServicesCache"

    const-string v4, "Error writing dynamic Settings"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    if-eqz v2, :cond_4

    .line 490
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 492
    :cond_4
    return v3
.end method

.method private writeServiceStateToFile(I)Z
    .locals 19
    .param p1, "currUserId"    # I

    .line 625
    move-object/from16 v1, p0

    const-string v0, "service"

    const-string v2, "other"

    const-string v3, "services"

    const-string v4, "Version"

    const/4 v5, 0x0

    .line 631
    .local v5, "fos":Ljava/io/FileOutputStream;
    const-string v6, "RegisteredServicesCache"

    const-string v7, " Writing service state Data Always"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    const/4 v8, 0x0

    move/from16 v9, p1

    if-eq v9, v7, :cond_0

    .line 633
    return v8

    .line 635
    :cond_0
    const/4 v7, 0x1

    .line 637
    .local v7, "state":I
    :try_start_0
    iget-object v10, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v10

    move-object v5, v10

    .line 638
    new-instance v10, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v10}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 639
    .local v10, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v11, "utf-8"

    invoke-interface {v10, v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 640
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v10, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 641
    const-string v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v10, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 642
    invoke-interface {v10, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 643
    const-string v12, "FileVersion"

    const-string v14, "1.0"

    invoke-interface {v10, v13, v12, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 644
    invoke-interface {v10, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    invoke-interface {v10, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    move v4, v8

    .local v4, "userId":I
    :goto_0
    iget-object v12, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v4, v12, :cond_6

    .line 647
    iget-object v12, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 648
    .local v12, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v14, v12, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 649
    .local v15, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    invoke-virtual {v15, v2}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 650
    goto :goto_1

    .line 652
    :cond_1
    invoke-interface {v10, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    const-string v8, "component"

    invoke-virtual {v15}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v13, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 654
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "component name"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v8, "uid"

    invoke-virtual {v15}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v13, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 657
    const/4 v8, 0x0

    .line 658
    .local v8, "isServiceInstalled":Z
    iget-object v11, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v15}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 659
    iget-object v11, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v15}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getUid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 660
    .local v11, "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 661
    invoke-virtual {v15}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v7, v13

    .line 662
    :try_start_1
    invoke-virtual {v15}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 665
    iget-object v13, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v15}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getUid()I

    move-result v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v18, v7

    .end local v7    # "state":I
    .local v18, "state":I
    :try_start_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 681
    .end local v4    # "userId":I
    .end local v8    # "isServiceInstalled":Z
    .end local v10    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v11    # "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    .end local v12    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v15    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :catch_0
    move-exception v0

    move/from16 v7, v18

    goto :goto_4

    .line 663
    .end local v18    # "state":I
    .restart local v4    # "userId":I
    .restart local v7    # "state":I
    .restart local v8    # "isServiceInstalled":Z
    .restart local v10    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v11    # "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    .restart local v12    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .restart local v15    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_2
    move/from16 v18, v7

    .line 667
    .end local v7    # "state":I
    .restart local v18    # "state":I
    :goto_2
    const/4 v8, 0x1

    move/from16 v7, v18

    goto :goto_3

    .line 681
    .end local v4    # "userId":I
    .end local v8    # "isServiceInstalled":Z
    .end local v10    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v11    # "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    .end local v12    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v15    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    .end local v18    # "state":I
    .restart local v7    # "state":I
    :catch_1
    move-exception v0

    move/from16 v18, v7

    .end local v7    # "state":I
    .restart local v18    # "state":I
    goto :goto_4

    .line 670
    .end local v18    # "state":I
    .restart local v4    # "userId":I
    .restart local v7    # "state":I
    .restart local v8    # "isServiceInstalled":Z
    .restart local v10    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .restart local v15    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_3
    :goto_3
    if-nez v8, :cond_4

    .line 671
    :try_start_3
    invoke-virtual {v15, v2}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getServiceState(Ljava/lang/String;)I

    move-result v11

    move v7, v11

    .line 673
    :cond_4
    const-string v11, "serviceState"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-interface {v10, v2, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 674
    invoke-interface {v10, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 675
    move-object/from16 v2, v17

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    .end local v8    # "isServiceInstalled":Z
    .end local v15    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    goto/16 :goto_1

    .line 648
    :cond_5
    move-object/from16 v17, v2

    .line 646
    .end local v12    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 677
    .end local v4    # "userId":I
    :cond_6
    const/4 v0, 0x0

    invoke-interface {v10, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 678
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 679
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 680
    const/4 v0, 0x1

    return v0

    .line 681
    .end local v10    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    const-string v2, "Failed to write serviceStateFile xml"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 684
    if-eqz v5, :cond_7

    .line 685
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 687
    :cond_7
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 3
    .param p2, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .line 207
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 208
    .local v1, "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 209
    .end local v1    # "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_0
    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 927
    const-string v0, "Registered HCE services for current user: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v0

    .line 929
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 930
    .local v2, "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    invoke-virtual {v2, p1, p2, p3}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 931
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    .end local v2    # "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    goto :goto_0

    .line 933
    :cond_0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method dump(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 202
    .local v1, "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegisteredServicesCache"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v1    # "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_0
    goto :goto_0

    .line 204
    :cond_1
    return-void
.end method

.method public getAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/NfcAidGroup;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .line 864
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcApduServiceInfo;

    move-result-object v0

    .line 865
    .local v0, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    const/4 v1, 0x0

    const-string v2, "RegisteredServicesCache"

    if-eqz v0, :cond_1

    .line 866
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getUid()I

    move-result v3

    if-eq v3, p2, :cond_0

    .line 867
    const-string v3, "UID mismatch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return-object v1

    .line 870
    :cond_0
    invoke-virtual {v0, p4}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getDynamicNfcAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/NfcAidGroup;

    move-result-object v1

    return-object v1

    .line 872
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return-object v1
.end method

.method public getAllServices()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mAllServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllStaticHashServices()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mAllServices:Ljava/util/HashMap;

    return-object v0
.end method

.method getInstalledServices(I)Ljava/util/ArrayList;
    .locals 16
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 248
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "android.permission.BIND_NFC_SERVICE"

    const-string v4, "android.permission.NFC"

    const-string v5, "Unable to load component info "

    const-string v6, "RegisteredServicesCache"

    :try_start_0
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    const-string v7, "android"

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v7, v0

    .line 253
    .local v7, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 254
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mAllServices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 257
    .local v8, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x80

    invoke-virtual {v7, v10, v11, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v0

    .line 261
    .local v10, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v12, "android.nfc.cardemulation.action.OFF_HOST_APDU_SERVICE"

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v11, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 264
    .local v11, "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 268
    .local v13, "resolvedService":Landroid/content/pm/ResolveInfo;
    :try_start_1
    invoke-interface {v11, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v9

    .line 269
    .local v0, "onHost":Z
    :goto_1
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 270
    .local v14, "si":Landroid/content/pm/ServiceInfo;
    new-instance v15, Landroid/content/ComponentName;

    iget-object v9, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v9, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v15

    .line 272
    .local v2, "componentName":Landroid/content/ComponentName;
    iget-object v9, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_1

    .line 274
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping application component "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ": it must request the permission "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    move/from16 v2, p1

    const/4 v9, 0x0

    goto :goto_0

    .line 279
    :cond_1
    iget-object v9, v14, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 281
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping APDU service "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ": it does not require the permission "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move/from16 v2, p1

    const/4 v9, 0x0

    goto :goto_0

    .line 286
    :cond_2
    new-instance v9, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-direct {v9, v7, v13, v0}, Landroid/nfc/cardemulation/NfcApduServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V

    .line 287
    .local v9, "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    nop

    .line 288
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    if-nez v0, :cond_3

    .line 290
    iget-object v15, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mAllServices:Ljava/util/HashMap;

    invoke-virtual {v15, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 294
    .end local v0    # "onHost":Z
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    .end local v14    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 293
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_2
    nop

    .line 297
    .end local v13    # "resolvedService":Landroid/content/pm/ResolveInfo;
    :goto_3
    move/from16 v2, p1

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 298
    :cond_4
    return-object v8

    .line 250
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    .end local v10    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_2
    move-exception v0

    .line 251
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Could not create user package context"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v2, 0x0

    return-object v2
.end method

.method public getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcApduServiceInfo;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 218
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 220
    .local v1, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    monitor-exit v0

    return-object v2

    .line 221
    .end local v1    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
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
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 228
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 229
    nop

    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    monitor-exit v1

    .line 230
    return-object v0

    .line 229
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getServicesForCategory(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 237
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 238
    .local v4, "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    invoke-virtual {v4, p2}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    invoke-virtual {v4, p2}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getAidCacheSizeForCategory(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v4    # "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_0
    goto :goto_0

    .line 241
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_1
    monitor-exit v1

    .line 242
    return-object v0

    .line 241
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasService(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcApduServiceInfo;

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

    .line 920
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->readDynamicSettingsLocked()V

    .line 922
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 924
    return-void

    .line 922
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public invalidateCache(I)V
    .locals 12
    .param p1, "userId"    # I

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getInstalledServices(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 311
    .local v0, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    if-nez v0, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 318
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    .line 319
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 320
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NfcApduServiceInfo;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    nop

    .line 322
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 323
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 324
    const-string v5, "RegisteredServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 327
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    :cond_1
    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 329
    .local v5, "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "RegisteredServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " AIDs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v5}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 329
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_3
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    nop

    .end local v5    # "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    goto :goto_1

    .line 335
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v4, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 339
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 340
    .local v7, "component":Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    .line 341
    .local v8, "dynamicSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    iget-object v9, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 342
    .local v9, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getUid()I

    move-result v10

    iget v11, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->uid:I

    if-eq v10, v11, :cond_5

    goto :goto_4

    .line 346
    :cond_5
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/NfcAidGroup;

    .line 347
    .local v11, "group":Landroid/nfc/cardemulation/NfcAidGroup;
    invoke-virtual {v9, v11}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->setOrReplaceDynamicNfcAidGroup(Landroid/nfc/cardemulation/NfcAidGroup;)V

    .line 348
    .end local v11    # "group":Landroid/nfc/cardemulation/NfcAidGroup;
    goto :goto_3

    .line 349
    :cond_6
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 350
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->setOffHostSecureElement(Ljava/lang/String;)V

    .line 353
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;>;"
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v8    # "dynamicSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .end local v9    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_7
    goto :goto_2

    .line 343
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;>;"
    .restart local v7    # "component":Landroid/content/ComponentName;
    .restart local v8    # "dynamicSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .restart local v9    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_8
    :goto_4
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    goto :goto_2

    .line 355
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;>;"
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v8    # "dynamicSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .end local v9    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 356
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 357
    .local v6, "component":Landroid/content/ComponentName;
    const-string v7, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dynamic Settings registered by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    nop

    .end local v6    # "component":Landroid/content/ComponentName;
    goto :goto_5

    .line 361
    :cond_a
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicSettingsLocked()Z

    .line 363
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->updateServiceStateFromFile(I)V

    .line 364
    const-string v5, "RegisteredServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":WriteServiceStateToFile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeServiceStateToFile(I)Z

    .line 366
    nop

    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NfcApduServiceInfo;>;>;"
    .end local v4    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 369
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/util/ArrayList;)V

    .line 370
    return-void

    .line 366
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public registerAidGroupForService(IILandroid/content/ComponentName;Landroid/nfc/cardemulation/NfcAidGroup;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "nfcAidGroup"    # Landroid/nfc/cardemulation/NfcAidGroup;

    .line 811
    const/4 v0, 0x0

    .line 813
    .local v0, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 814
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 816
    .local v2, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcApduServiceInfo;

    move-result-object v3

    .line 817
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 818
    const-string v5, "RegisteredServicesCache"

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

    .line 819
    monitor-exit v1

    return v4

    .line 821
    :cond_0
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getUid()I

    move-result v5

    if-eq v5, p2, :cond_1

    .line 826
    const-string v5, "RegisteredServicesCache"

    const-string v6, "UID mismatch."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    monitor-exit v1

    return v4

    .line 831
    :cond_1
    invoke-virtual {p4}, Landroid/nfc/cardemulation/NfcAidGroup;->getAids()Ljava/util/List;

    move-result-object v5

    .line 832
    .local v5, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 833
    .local v7, "aid":Ljava/lang/String;
    invoke-static {v7}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 834
    const-string v6, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not a valid AID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    monitor-exit v1

    return v4

    .line 837
    .end local v7    # "aid":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 838
    :cond_3
    invoke-virtual {v3, p4}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->setOrReplaceDynamicNfcAidGroup(Landroid/nfc/cardemulation/NfcAidGroup;)V

    .line 839
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    .line 840
    .local v4, "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    if-nez v4, :cond_4

    .line 841
    new-instance v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    invoke-direct {v6, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;-><init>(I)V

    move-object v4, v6

    .line 842
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 843
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :cond_4
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {p4}, Landroid/nfc/cardemulation/NfcAidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicSettingsLocked()Z

    move-result v6

    .line 847
    .local v6, "success":Z
    if-eqz v6, :cond_5

    .line 848
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    goto :goto_1

    .line 850
    :cond_5
    const-string v7, "RegisteredServicesCache"

    const-string v8, "Failed to persist AID group."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {p4}, Landroid/nfc/cardemulation/NfcAidGroup;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    .end local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    .end local v4    # "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .end local v5    # "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    if-eqz v6, :cond_6

    .line 857
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v1, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 859
    :cond_6
    return v6

    .line 854
    .end local v6    # "success":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 881
    .local v1, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 882
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v3

    .line 883
    .local v3, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcApduServiceInfo;

    move-result-object v4

    .line 884
    .local v4, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    if-eqz v4, :cond_4

    .line 885
    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getUid()I

    move-result v5

    const/4 v6, 0x0

    if-eq v5, p2, :cond_0

    .line 887
    const-string v5, "RegisteredServicesCache"

    const-string v7, "UID mismatch"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    monitor-exit v2

    return v6

    .line 890
    :cond_0
    invoke-virtual {v4, p4}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->removeDynamicNfcAidGroupForCategory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 891
    const-string v5, "RegisteredServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Could not find dynamic AIDs for category "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    monitor-exit v2

    return v6

    .line 895
    :cond_1
    iget-object v5, v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    .line 896
    .local v5, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    if-eqz v5, :cond_3

    .line 897
    iget-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v7, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/NfcAidGroup;

    .line 898
    .local v7, "deletedGroup":Landroid/nfc/cardemulation/NfcAidGroup;
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicSettingsLocked()Z

    move-result v8

    move v0, v8

    .line 899
    if-eqz v0, :cond_2

    .line 900
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v6

    .line 906
    .end local v7    # "deletedGroup":Landroid/nfc/cardemulation/NfcAidGroup;
    goto :goto_0

    .line 902
    .restart local v7    # "deletedGroup":Landroid/nfc/cardemulation/NfcAidGroup;
    :cond_2
    const-string v8, "RegisteredServicesCache"

    const-string v9, "Could not persist deleted AID group."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v8, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v8, p4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    monitor-exit v2

    return v6

    .line 907
    .end local v7    # "deletedGroup":Landroid/nfc/cardemulation/NfcAidGroup;
    :cond_3
    const-string v6, "RegisteredServicesCache"

    const-string v7, "Could not find aid group in local cache."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    .end local v5    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    :goto_0
    goto :goto_1

    .line 910
    :cond_4
    const-string v5, "RegisteredServicesCache"

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

    .line 912
    .end local v3    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v4    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    if-eqz v0, :cond_5

    .line 914
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v2, p1, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 916
    :cond_5
    return v0

    .line 912
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setOffHostSecureElement(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "offHostSE"    # Ljava/lang/String;

    .line 725
    const/4 v0, 0x0

    .line 726
    .local v0, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 727
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 729
    .local v2, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcApduServiceInfo;

    move-result-object v3

    .line 730
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 731
    const-string v5, "RegisteredServicesCache"

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

    .line 732
    monitor-exit v1

    return v4

    .line 734
    :cond_0
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getUid()I

    move-result v5

    if-eq v5, p2, :cond_1

    .line 739
    const-string v5, "RegisteredServicesCache"

    const-string v6, "UID mismatch."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    monitor-exit v1

    return v4

    .line 742
    :cond_1
    if-eqz p4, :cond_5

    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->isOnHost()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 747
    :cond_2
    iget-object v5, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    .line 748
    .local v5, "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    if-nez v5, :cond_3

    .line 749
    new-instance v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    invoke-direct {v6, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;-><init>(I)V

    move-object v5, v6

    .line 751
    :cond_3
    iput-object p4, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 752
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicSettingsLocked()Z

    move-result v6

    .line 753
    .local v6, "success":Z
    if-nez v6, :cond_4

    .line 754
    const-string v7, "RegisteredServicesCache"

    const-string v8, "Failed to persist AID group."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 756
    monitor-exit v1

    return v4

    .line 759
    :cond_4
    invoke-virtual {v3, p4}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->setOffHostSecureElement(Ljava/lang/String;)V

    .line 760
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 761
    .end local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    .end local v5    # "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    .end local v6    # "success":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v1, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 764
    const/4 v1, 0x1

    return v1

    .line 743
    .restart local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .restart local v3    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_5
    :goto_0
    :try_start_1
    const-string v5, "RegisteredServicesCache"

    const-string v6, "OffHostSE mismatch with Service type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    monitor-exit v1

    return v4

    .line 761
    .end local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public unsetOffHostSecureElement(IILandroid/content/ComponentName;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 768
    const/4 v0, 0x0

    .line 769
    .local v0, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 770
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 772
    .local v2, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcApduServiceInfo;

    move-result-object v3

    .line 773
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 774
    const-string v5, "RegisteredServicesCache"

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

    .line 775
    monitor-exit v1

    return v4

    .line 777
    :cond_0
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getUid()I

    move-result v5

    if-eq v5, p2, :cond_1

    .line 782
    const-string v5, "RegisteredServicesCache"

    const-string v6, "UID mismatch."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    monitor-exit v1

    return v4

    .line 785
    :cond_1
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->isOnHost()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 789
    :cond_2
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->unsetOffHostSecureElement()V

    .line 790
    iget-object v5, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicSettings:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;

    .line 791
    .local v5, "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    if-eqz v5, :cond_3

    .line 792
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 793
    .local v6, "offHostSE":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 794
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicSettingsLocked()Z

    move-result v7

    .line 795
    .local v7, "success":Z
    if-nez v7, :cond_3

    .line 796
    const-string v8, "RegisteredServicesCache"

    const-string v9, "Failed to persist AID group."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iput-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->offHostSE:Ljava/lang/String;

    .line 798
    monitor-exit v1

    return v4

    .line 802
    .end local v6    # "offHostSE":Ljava/lang/String;
    .end local v7    # "success":Z
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 803
    .end local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    .end local v5    # "dynSettings":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v1, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 806
    const/4 v1, 0x1

    return v1

    .line 786
    .restart local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .restart local v3    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_4
    :goto_0
    :try_start_1
    const-string v5, "RegisteredServicesCache"

    const-string v6, "OffHostSE is not set"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    monitor-exit v1

    return v4

    .line 803
    .end local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateServiceState(IILjava/util/Map;)I
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 693
    .local p3, "serviceState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 695
    .local v0, "success":Z
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->getAidRoutingTableStatus()I

    move-result v1

    const/16 v2, 0xff

    if-nez v1, :cond_0

    .line 696
    const-string v1, "RegisteredServicesCache"

    const-string v3, " Aid Routing Table still  availble , No need to disable services"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return v2

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    nop

    .line 701
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 702
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 703
    nop

    .line 704
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 705
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 706
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p0, p1, v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcApduServiceInfo;

    move-result-object v6

    .line 707
    .local v6, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    const-string v7, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateServiceState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v7, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateServiceState  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    if-eqz v6, :cond_1

    .line 710
    const-string v7, "other"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->enableService(Ljava/lang/String;Z)V

    .line 715
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    goto :goto_0

    .line 712
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_1
    const-string v7, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    monitor-exit v1

    return v2

    .line 716
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_2
    const-string v4, "RegisteredServicesCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":WriteServiceStateToFile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeServiceStateToFile(I)Z

    move-result v4

    move v0, v4

    .line 718
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 720
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :cond_3
    return v2

    .line 718
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateStatusOfServices(Z)V
    .locals 6
    .param p1, "commitStatus"    # Z

    .line 940
    const-string v0, "other"

    const-string v1, "RegisteredServicesCache"

    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 941
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 942
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 943
    .local v4, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    invoke-virtual {v4, v0}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 944
    goto :goto_0

    .line 946
    :cond_0
    invoke-virtual {v4, v0, p1}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->updateServiceCommitStatus(Ljava/lang/String;Z)V

    .line 947
    .end local v4    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    goto :goto_0

    .line 948
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":WriteServiceStateToFile"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 948
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeServiceStateToFile(I)Z

    goto :goto_1

    .line 953
    :cond_2
    const-string v0, "updateStatusOfServices failed... "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :goto_1
    goto :goto_2

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_2
    return-void
.end method
