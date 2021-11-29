.class Lcom/android/nfc/handover/HandoverServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .locals 0
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 171
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    .line 172
    const-string p1, "HandoverServer"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 173
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 174
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 178
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HandoverServer"

    const-string v1, "starting connection thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 183
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 184
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-boolean v2, v2, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    .line 185
    .local v2, "running":Z
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    :try_start_2
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v1

    new-array v1, v1, [B

    .line 189
    .local v1, "partial":[B
    const/4 v3, 0x0

    .line 190
    .local v3, "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :goto_0
    if-eqz v2, :cond_7

    .line 191
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v4, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v4

    .line 192
    .local v4, "size":I
    if-gez v4, :cond_1

    .line 193
    goto/16 :goto_3

    .line 195
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 198
    :try_start_3
    new-instance v5, Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_3
    .catch Landroid/nfc/FormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, v5

    .line 201
    goto :goto_1

    .line 199
    :catch_0
    move-exception v5

    .line 203
    :goto_1
    if-eqz v3, :cond_6

    .line 204
    :try_start_4
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v5

    .line 206
    .local v5, "beamManager":Lcom/android/nfc/beam/BeamManager;
    invoke-virtual {v5}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 207
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-object v6, v6, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-interface {v6}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverBusy()V

    .line 208
    goto :goto_3

    .line 212
    :cond_2
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-object v6, v6, Lcom/android/nfc/handover/HandoverServer;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 213
    invoke-virtual {v6, v3}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v6

    .line 214
    .local v6, "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    if-nez v6, :cond_3

    .line 215
    const-string v7, "HandoverServer"

    const-string v8, "Failed to create handover response"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    goto :goto_3

    .line 220
    :cond_3
    const/4 v7, 0x0

    .line 221
    .local v7, "offset":I
    iget-object v8, v6, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    invoke-virtual {v8}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v8

    .line 222
    .local v8, "buffer":[B
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v9

    .line 223
    .local v9, "remoteMiu":I
    :goto_2
    array-length v10, v8

    if-ge v7, v10, :cond_4

    .line 224
    array-length v10, v8

    sub-int/2addr v10, v7

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 225
    .local v10, "length":I
    add-int v11, v7, v10

    invoke-static {v8, v7, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 226
    .local v11, "tmpBuffer":[B
    iget-object v12, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v12, v11}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 227
    add-int/2addr v7, v10

    .line 228
    .end local v10    # "length":I
    .end local v11    # "tmpBuffer":[B
    goto :goto_2

    .line 230
    :cond_4
    iget-object v10, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-object v10, v10, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-interface {v10}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverRequestReceived()V

    .line 231
    iget-object v10, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-static {v10}, Lcom/android/nfc/handover/HandoverServer;->access$100(Lcom/android/nfc/handover/HandoverServer;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, v6, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverData:Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-virtual {v5, v10, v11}, Lcom/android/nfc/beam/BeamManager;->startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 232
    iget-object v10, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-object v10, v10, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-interface {v10}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverBusy()V

    .line 233
    goto :goto_3

    .line 236
    :cond_5
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v10

    .line 239
    .end local v5    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .end local v6    # "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .end local v7    # "offset":I
    .end local v8    # "buffer":[B
    .end local v9    # "remoteMiu":I
    :cond_6
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 240
    :try_start_5
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-boolean v6, v6, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    move v2, v6

    .line 241
    monitor-exit v5

    .line 242
    .end local v4    # "size":I
    goto/16 :goto_0

    .line 241
    .restart local v4    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ConnectionThread;
    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 248
    .end local v1    # "partial":[B
    .end local v2    # "running":Z
    .end local v3    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v4    # "size":I
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ConnectionThread;
    :cond_7
    :goto_3
    :try_start_7
    sget-object v1, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_8
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 252
    goto :goto_4

    .line 250
    :catch_1
    move-exception v1

    .line 254
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 257
    :goto_5
    goto :goto_7

    .line 255
    :catch_2
    move-exception v1

    .line 258
    goto :goto_7

    .line 185
    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ConnectionThread;
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 247
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ConnectionThread;
    :catchall_2
    move-exception v1

    goto :goto_8

    .line 244
    :catch_3
    move-exception v1

    .line 245
    .local v1, "e":Ljava/io/IOException;
    :try_start_b
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "HandoverServer"

    const-string v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 248
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9
    :try_start_c
    sget-object v1, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_a
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 252
    goto :goto_6

    .line 250
    :catch_4
    move-exception v1

    .line 254
    :goto_6
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_5

    .line 259
    :goto_7
    sget-object v1, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "HandoverServer"

    const-string v2, "finished connection thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_b
    return-void

    .line 248
    :goto_8
    :try_start_e
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "HandoverServer"

    const-string v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_c
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 252
    goto :goto_9

    .line 250
    :catch_5
    move-exception v2

    .line 254
    :goto_9
    :try_start_f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 257
    goto :goto_a

    .line 255
    :catch_6
    move-exception v2

    .line 257
    :goto_a
    throw v1
.end method
