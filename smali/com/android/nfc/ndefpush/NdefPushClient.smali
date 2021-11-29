.class public Lcom/android/nfc/ndefpush/NdefPushClient;
.super Ljava/lang/Object;
.source "NdefPushClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = true

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "NdefPushClient"


# instance fields
.field final mLock:Ljava/lang/Object;

.field private mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 134
    :try_start_1
    const-string v1, "NdefPushClient"

    const-string v2, "About to close NPP socket."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 139
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 141
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public connect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    iget v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    if-nez v1, :cond_1

    .line 52
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 54
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    .line 55
    .local v2, "service":Lcom/android/nfc/NfcService;
    const/4 v3, 0x0

    .line 56
    .local v3, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const-string v0, "NdefPushClient"

    const-string v4, "about to create socket"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/16 v0, 0x80

    const/16 v4, 0x400

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v5, v0, v1, v4}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_2

    .line 64
    .end local v3    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .local v0, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    nop

    .line 66
    :try_start_2
    const-string v1, "NdefPushClient"

    const-string v3, "about to connect to service com.android.npp"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v1, "com.android.npp"

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    nop

    .line 82
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_3
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 84
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 71
    :try_start_4
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 74
    goto :goto_0

    .line 72
    :catch_1
    move-exception v3

    .line 76
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 77
    :try_start_5
    iput v5, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 78
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 79
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not connect service."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 59
    .end local v0    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 60
    .local v1, "e":Lcom/android/nfc/LlcpException;
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 61
    :try_start_7
    iput v5, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 62
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 63
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Could not create socket."

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 50
    .end local v1    # "e":Lcom/android/nfc/LlcpException;
    .end local v2    # "service":Lcom/android/nfc/NfcService;
    .end local v3    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :cond_1
    :try_start_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Socket still in use."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/ndefpush/NdefPushClient;
    throw v1

    .line 53
    .restart local p0    # "this":Lcom/android/nfc/ndefpush/NdefPushClient;
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1
.end method

.method public push(Landroid/nfc/NdefMessage;)Z
    .locals 12
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget v2, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 92
    const-string v2, "NdefPushClient"

    const-string v3, "Not connected to NPP."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    monitor-exit v1

    return v4

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object v0, v2

    .line 96
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    new-instance v1, Lcom/android/nfc/ndefpush/NdefPushProtocol;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/nfc/ndefpush/NdefPushProtocol;-><init>(Landroid/nfc/NdefMessage;B)V

    .line 99
    .local v1, "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    invoke-virtual {v1}, Lcom/android/nfc/ndefpush/NdefPushProtocol;->toByteArray()[B

    move-result-object v3

    .line 100
    .local v3, "buffer":[B
    const/4 v5, 0x0

    .line 104
    .local v5, "offset":I
    :try_start_1
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v6

    .line 105
    .local v6, "remoteMiu":I
    const-string v7, "NdefPushClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "about to send a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " byte message"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_1

    .line 107
    array-length v7, v3

    sub-int/2addr v7, v5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 108
    .local v7, "length":I
    add-int v8, v5, v7

    invoke-static {v3, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 109
    .local v8, "tmpBuffer":[B
    const-string v9, "NdefPushClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "about to send a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " byte packet"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-interface {v0, v8}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    add-int/2addr v5, v7

    .line 112
    .end local v7    # "length":I
    .end local v8    # "tmpBuffer":[B
    goto :goto_0

    .line 113
    :cond_1
    nop

    .line 118
    nop

    .line 120
    :try_start_2
    const-string v4, "NdefPushClient"

    const-string v7, "about to close"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    goto :goto_1

    .line 122
    :catch_0
    move-exception v4

    .line 113
    :goto_1
    return v2

    .line 118
    .end local v6    # "remoteMiu":I
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 114
    :catch_1
    move-exception v2

    .line 115
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v6, "NdefPushClient"

    const-string v7, "couldn\'t send tag"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v6, "NdefPushClient"

    const-string v7, "exception:"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    nop

    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_2

    .line 120
    :try_start_4
    const-string v2, "NdefPushClient"

    const-string v6, "about to close"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 122
    :catch_2
    move-exception v2

    .line 127
    :cond_2
    :goto_2
    return v4

    .line 118
    :goto_3
    if-eqz v0, :cond_3

    .line 120
    :try_start_5
    const-string v4, "NdefPushClient"

    const-string v6, "about to close"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 124
    goto :goto_4

    .line 122
    :catch_3
    move-exception v4

    .line 124
    :cond_3
    :goto_4
    throw v2

    .line 96
    .end local v1    # "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .end local v3    # "buffer":[B
    .end local v5    # "offset":I
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method
