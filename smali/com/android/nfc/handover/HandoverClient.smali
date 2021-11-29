.class public final Lcom/android/nfc/handover/HandoverClient;
.super Ljava/lang/Object;
.source "HandoverClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = false

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "HandoverClient"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 86
    sget-object v0, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 89
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 93
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 95
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 96
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

    .line 46
    sget-object v0, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget v1, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    if-nez v1, :cond_1

    .line 50
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 52
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    .line 53
    .local v2, "service":Lcom/android/nfc/NfcService;
    const/4 v3, 0x0

    .line 55
    .local v3, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const/16 v0, 0x80

    const/16 v4, 0x400

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v5, v0, v1, v4}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_2

    .line 61
    .end local v3    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .local v0, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    nop

    .line 65
    :try_start_2
    const-string v1, "urn:nfc:sn:handover"

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    nop

    .line 79
    sget-object v1, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_3
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 81
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 69
    :try_start_4
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 72
    goto :goto_0

    .line 70
    :catch_1
    move-exception v3

    .line 74
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 75
    :try_start_5
    iput v5, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 76
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not connect to handover service"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 56
    .end local v0    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 57
    .local v1, "e":Lcom/android/nfc/LlcpException;
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 58
    :try_start_7
    iput v5, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 59
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 60
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Could not create socket"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 48
    .end local v1    # "e":Lcom/android/nfc/LlcpException;
    .end local v2    # "service":Lcom/android/nfc/NfcService;
    .end local v3    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :cond_1
    :try_start_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Socket in use."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/handover/HandoverClient;
    throw v1

    .line 51
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverClient;
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1
.end method

.method public sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 11
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 101
    :cond_0
    const/4 v1, 0x0

    .line 102
    .local v1, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v2, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :try_start_0
    iget v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 106
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object v1, v3

    .line 107
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, "offset":I
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    .line 110
    .local v3, "buffer":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    .local v4, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v5

    .line 115
    .local v5, "remoteMiu":I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_1

    .line 116
    array-length v6, v3

    sub-int/2addr v6, v2

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 117
    .local v6, "length":I
    add-int v7, v2, v6

    invoke-static {v3, v2, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 119
    .local v7, "tmpBuffer":[B
    invoke-interface {v1, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 120
    add-int/2addr v2, v6

    .line 121
    .end local v6    # "length":I
    .end local v7    # "tmpBuffer":[B
    goto :goto_0

    .line 124
    :cond_1
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v6

    new-array v6, v6, [B

    .line 125
    .local v6, "partial":[B
    move-object v7, v0

    .line 127
    .local v7, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    :goto_1
    invoke-interface {v1, v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v8

    .line 128
    .local v8, "size":I
    if-gez v8, :cond_2

    .line 129
    goto :goto_2

    .line 131
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    new-instance v9, Landroid/nfc/NdefMessage;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_2
    .catch Landroid/nfc/FormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v9

    .line 135
    nop

    .line 140
    .end local v8    # "size":I
    :goto_2
    nop

    .line 144
    nop

    .line 147
    :try_start_3
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 150
    goto :goto_3

    .line 148
    :catch_0
    move-exception v0

    .line 153
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 156
    goto :goto_4

    .line 154
    :catch_1
    move-exception v0

    .line 140
    :goto_4
    return-object v7

    .line 136
    .restart local v8    # "size":I
    :catch_2
    move-exception v9

    .line 139
    .end local v8    # "size":I
    goto :goto_1

    .line 144
    .end local v5    # "remoteMiu":I
    .end local v6    # "partial":[B
    .end local v7    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 147
    :try_start_5
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 150
    goto :goto_5

    .line 148
    :catch_3
    move-exception v5

    .line 153
    :cond_3
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 156
    goto :goto_6

    .line 154
    :catch_4
    move-exception v5

    .line 156
    :goto_6
    throw v0

    .line 141
    :catch_5
    move-exception v5

    .line 144
    if-eqz v1, :cond_4

    .line 147
    :try_start_7
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 150
    goto :goto_7

    .line 148
    :catch_6
    move-exception v5

    .line 153
    :cond_4
    :goto_7
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 156
    goto :goto_8

    .line 154
    :catch_7
    move-exception v5

    .line 157
    nop

    .line 158
    :goto_8
    return-object v0

    .line 104
    .end local v2    # "offset":I
    .end local v3    # "buffer":[B
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :cond_5
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Socket not connected"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v0

    .line 107
    .restart local v1    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0
.end method
