.class public final Lcom/android/nfc/snep/SnepClient;
.super Ljava/lang/Object;
.source "SnepClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = false

.field private static final DEFAULT_ACCEPTABLE_LENGTH:I = 0x19000

.field private static final DEFAULT_MIU:I = 0x80

.field private static final DEFAULT_RWSIZE:I = 0x1

.field private static final DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SnepClient"


# instance fields
.field private final mAcceptableLength:I

.field private final mFragmentLength:I

.field mMessenger:Lcom/android/nfc/snep/SnepMessenger;

.field private final mMiu:I

.field private final mPort:I

.field private final mRwSize:I

.field private final mServiceName:Ljava/lang/String;

.field private mState:I

.field private final mTransmissionLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 50
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 52
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 54
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 56
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "miu"    # I
    .param p2, "rwSize"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 68
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 70
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 72
    iput p1, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 73
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 59
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 61
    const v1, 0x19000

    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 62
    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 63
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "fragmentLength"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 77
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 79
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 80
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 81
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "acceptableLength"    # I
    .param p3, "fragmentLength"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 86
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 88
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 89
    iput p3, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 90
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 92
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessenger;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    goto :goto_0

    :catchall_0
    move-exception v2

    iput-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 192
    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    throw v2

    .line 188
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    :catch_0
    move-exception v2

    .line 191
    iput-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 192
    :goto_0
    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 195
    :cond_0
    monitor-exit p0

    .line 196
    return-void

    .line 195
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    if-nez v0, :cond_4

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 140
    const/4 v1, 0x0

    .line 145
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    iget v5, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    const/16 v6, 0x400

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v3

    move-object v1, v3

    .line 146
    if-eqz v1, :cond_2

    .line 149
    iget v3, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_0
    iget v3, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    invoke-interface {v1, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToSap(I)V

    .line 156
    :goto_0
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v3

    .line 157
    .local v3, "miu":I
    iget v5, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    if-ne v5, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 158
    .local v4, "fragmentLength":I
    :goto_1
    new-instance v5, Lcom/android/nfc/snep/SnepMessenger;

    invoke-direct {v5, v0, v1, v4}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v5

    .line 175
    .end local v3    # "miu":I
    .end local v4    # "fragmentLength":I
    .local v0, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    nop

    .line 177
    monitor-enter p0

    .line 178
    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 179
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 180
    monitor-exit p0

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 147
    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not connect to socket."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    throw v0
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 164
    .restart local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    :catch_0
    move-exception v0

    move-object v3, v1

    .line 165
    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .local v0, "e":Ljava/io/IOException;
    .local v3, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v3, :cond_3

    .line 167
    :try_start_4
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 169
    goto :goto_2

    .line 168
    :catch_1
    move-exception v1

    .line 171
    :cond_3
    :goto_2
    monitor-enter p0

    .line 172
    :try_start_5
    iput v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 173
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 174
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to connect to socket"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_2
    move-exception v0

    .line 160
    .local v0, "e":Lcom/android/nfc/LlcpException;
    monitor-enter p0

    .line 161
    :try_start_7
    iput v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 162
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 163
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not connect to socket"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    .line 135
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :cond_4
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket already in use."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    throw v0

    .line 138
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 120
    .local v0, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    iget-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_1
    iget v2, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    invoke-static {v2, p1}, Lcom/android/nfc/snep/SnepMessage;->getGetRequest(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 125
    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2
    :try_end_1
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-object v2

    .line 129
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v3

    .line 129
    .end local v2    # "e":Lcom/android/nfc/snep/SnepException;
    .restart local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 117
    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v0

    .line 120
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public put(Landroid/nfc/NdefMessage;)V
    .locals 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 101
    .local v0, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    iget-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_1
    invoke-static {p1}, Lcom/android/nfc/snep/SnepMessage;->getPutRequest(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 106
    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_1
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    nop

    .line 110
    :try_start_2
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v3

    .line 110
    .end local v2    # "e":Lcom/android/nfc/snep/SnepException;
    .restart local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 98
    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v0

    .line 101
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
