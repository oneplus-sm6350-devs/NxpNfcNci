.class public Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;
.super Ljava/lang/Object;
.source "HostNfcFEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final MINIMUM_NFCF_PACKET_LENGTH:I = 0xa

.field static final NFCID2_LENGTH:I = 0x8

.field static final STATE_IDLE:I = 0x0

.field static final STATE_W4_SERVICE:I = 0x1

.field static final STATE_XFER:I = 0x2

.field static final TAG:Ljava/lang/String; = "HostNfcFEmulationManager"


# instance fields
.field mActiveService:Landroid/os/Messenger;

.field mActiveServiceName:Landroid/content/ComponentName;

.field private mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field mEnabledFgServiceName:Landroid/content/ComponentName;

.field final mLock:Ljava/lang/Object;

.field final mMessenger:Landroid/os/Messenger;

.field mPendingPacket:[B

.field mService:Landroid/os/Messenger;

.field mServiceBound:Z

.field mServiceName:Landroid/content/ComponentName;

.field mState:I

.field final mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-string v0, "persist.nfc.ce_debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t3tIdentifiersCache"    # Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;-><init>(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mMessenger:Landroid/os/Messenger;

    .line 280
    new-instance v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;-><init>(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 97
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 100
    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;
    .param p1, "x1"    # [B

    .line 59
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->getByteDump([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bytesToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 356
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 357
    .local v0, "hexChars":[C
    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [C

    .line 359
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 360
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 361
    .local v3, "byteValue":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 362
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v2    # "j":I
    .end local v3    # "byteValue":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private getByteDump([B)Ljava/lang/String;
    .locals 6
    .param p1, "cmd"    # [B

    .line 368
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "str":Ljava/lang/StringBuffer;
    const/16 v1, 0x8

    .line 370
    .local v1, "letters":I
    const/4 v2, 0x0

    .line 372
    .local v2, "i":I
    if-nez p1, :cond_0

    .line 373
    const-string v3, " null\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 377
    :cond_0
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 378
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, " %02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    rem-int v3, v2, v1

    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    array-length v4, p1

    if-ne v3, v4, :cond_2

    .line 380
    :cond_1
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 241
    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    const-string v1, "HostNfcFEmulationManager"

    if-eqz v0, :cond_0

    const-string v0, "bindServiceIfNeededLocked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const-string v0, "Service already bound."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    return-object v0

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.nfc.cardemulation.action.HOST_NFCF_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "bindIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 250
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 253
    :cond_2
    const-string v2, "Could not bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 388
    const-string v0, "Bound HCE-F services: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method findNfcid2([B)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # [B

    .line 271
    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    const-string v1, "HostNfcFEmulationManager"

    if-eqz v0, :cond_0

    const-string v0, "findNfcid2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x2

    .line 277
    .local v0, "nfcid2Offset":I
    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->bytesToString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 273
    .end local v0    # "nfcid2Offset":I
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "Data size too small"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 105
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 107
    if-nez p1, :cond_0

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 111
    :cond_0
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHostEmulationActivated()V
    .locals 2

    .line 115
    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HostNfcFEmulationManager"

    const-string v1, "notifyHostEmulationActivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    return-void
.end method

.method public onHostEmulationData([B)V
    .locals 7
    .param p1, "data"    # [B

    .line 119
    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HostNfcFEmulationManager"

    const-string v1, "notifyHostEmulationData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->findNfcid2([B)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "nfcid2":Ljava/lang/String;
    const/4 v1, 0x0

    .line 122
    .local v1, "resolvedServiceName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 123
    if-eqz v0, :cond_1

    .line 124
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v3, v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->resolveNfcid2(Ljava/lang/String;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v3

    .line 125
    .local v3, "resolvedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 165
    .end local v3    # "resolvedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :catchall_0
    move-exception v3

    goto/16 :goto_3

    .line 129
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 130
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    if-nez v3, :cond_2

    .line 131
    monitor-exit v2

    return-void

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    move-object v1, v3

    .line 136
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 137
    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 140
    :cond_4
    sget-boolean v3, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "HostNfcFEmulationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolvedServiceName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 141
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_5
    iget v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    if-eq v3, v5, :cond_7

    if-eq v3, v4, :cond_6

    goto :goto_1

    .line 162
    :cond_6
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {p0, v3, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_1

    .line 158
    :cond_7
    const-string v3, "HostNfcFEmulationManager"

    const-string v4, "Unexpected packet in STATE_W4_SERVICE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    goto :goto_1

    .line 144
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v3

    .line 145
    .local v3, "existingService":Landroid/os/Messenger;
    if-eqz v3, :cond_9

    .line 146
    const-string v5, "HostNfcFEmulationManager"

    const-string v6, "Binding to existing service"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 148
    invoke-virtual {p0, v3, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_1

    .line 151
    :cond_9
    const-string v4, "HostNfcFEmulationManager"

    const-string v6, "Waiting for new service."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mPendingPacket:[B

    .line 154
    iput v5, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 156
    nop

    .line 165
    .end local v3    # "existingService":Landroid/os/Messenger;
    :goto_1
    monitor-exit v2

    .line 166
    return-void

    .line 138
    :cond_a
    :goto_2
    monitor-exit v2

    return-void

    .line 165
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onHostEmulationDeactivated()V
    .locals 3

    .line 169
    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HostNfcFEmulationManager"

    const-string v1, "notifyHostEmulationDeactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 172
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 173
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 174
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 175
    iput v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 176
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNfcDisabled()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 182
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 183
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 184
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 185
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 186
    iput v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitched()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 193
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 194
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 195
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 196
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 197
    iput v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    .locals 5
    .param p1, "service"    # Landroid/os/Messenger;
    .param p2, "data"    # [B

    .line 202
    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    const-string v1, "HostNfcFEmulationManager"

    if-eqz v0, :cond_0

    const-string v0, "sendDataToServiceLocked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz v0, :cond_3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v2, "null"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActiveService: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    .line 210
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 211
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 212
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 214
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v2, "dataBundle":Landroid/os/Bundle;
    const-string v3, "data"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 217
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 218
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 220
    :try_start_0
    const-string v3, "Sending data to service"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-boolean v3, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->getByteDump([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_5
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_1

    .line 223
    :catch_0
    move-exception v3

    .line 224
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Remote service has died, dropping packet"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method sendDeactivateToActiveServiceLocked(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 229
    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HostNfcFEmulationManager"

    const-string v1, "sendDeactivateToActiveServiceLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v0, :cond_1

    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 232
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 238
    :goto_0
    return-void
.end method

.method unbindServiceIfNeededLocked()V
    .locals 3

    .line 260
    sget-boolean v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    const-string v1, "HostNfcFEmulationManager"

    if-eqz v0, :cond_0

    const-string v0, "unbindServiceIfNeededLocked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbinding from service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    .line 266
    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 268
    :cond_1
    return-void
.end method
