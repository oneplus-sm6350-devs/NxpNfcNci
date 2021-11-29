.class Lcom/android/nfc/snep/SnepServer$ServerThread;
.super Ljava/lang/Thread;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/snep/SnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/snep/SnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/snep/SnepServer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/nfc/snep/SnepServer;

    .line 177
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 184
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 186
    .local v1, "threadRunning":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 188
    :goto_0
    if-eqz v1, :cond_b

    .line 191
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 192
    :try_start_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v4, v4, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    iget-object v5, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v5, v5, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v6, v6, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    iget-object v7, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v7, v7, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    const/16 v8, 0x400

    invoke-virtual/range {v3 .. v8}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 194
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 195
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-nez v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2

    .line 234
    :try_start_4
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    .line 237
    :try_start_5
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    goto :goto_1

    .line 238
    :catch_0
    move-exception v3

    .line 241
    :goto_1
    :try_start_6
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 243
    :cond_0
    monitor-exit v2

    .line 197
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 200
    :cond_1
    :try_start_7
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2
    :try_end_7
    .catch Lcom/android/nfc/LlcpException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 201
    :try_start_8
    iget-boolean v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    move v1, v3

    .line 202
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move v3, v1

    .line 204
    .end local v1    # "threadRunning":Z
    .local v3, "threadRunning":Z
    :goto_2
    if-eqz v3, :cond_6

    .line 206
    :try_start_9
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    .line 207
    :try_start_a
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 208
    .local v2, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 210
    if-nez v2, :cond_3

    .line 233
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 234
    :try_start_b
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v4, :cond_2

    .line 237
    :try_start_c
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 240
    goto :goto_3

    .line 238
    :catch_1
    move-exception v4

    .line 241
    :goto_3
    :try_start_d
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 243
    :cond_2
    monitor-exit v1

    .line 212
    return-void

    .line 243
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    .line 215
    :cond_3
    :try_start_e
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v1

    .line 217
    .local v1, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v1, :cond_5

    .line 218
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v4, v4, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 219
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v4, v4, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v4, v4, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    iget-object v5, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v5, v5, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 220
    .local v4, "fragmentLength":I
    :goto_4
    new-instance v5, Lcom/android/nfc/snep/SnepServer$ConnectionThread;

    iget-object v6, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    invoke-direct {v5, v6, v1, v4}, Lcom/android/nfc/snep/SnepServer$ConnectionThread;-><init>(Lcom/android/nfc/snep/SnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->start()V

    .line 223
    .end local v4    # "fragmentLength":I
    :cond_5
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v4
    :try_end_e
    .catch Lcom/android/nfc/LlcpException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 224
    :try_start_f
    iget-boolean v5, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    move v3, v5

    .line 225
    monitor-exit v4

    .line 226
    .end local v1    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v2    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    goto :goto_2

    .line 225
    .restart local v1    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local v2    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_2
    move-exception v5

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .end local v3    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :try_start_10
    throw v5
    :try_end_10
    .catch Lcom/android/nfc/LlcpException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 208
    .end local v1    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v2    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .restart local v3    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :catchall_3
    move-exception v2

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .end local v3    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :try_start_12
    throw v2
    :try_end_12
    .catch Lcom/android/nfc/LlcpException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 230
    .restart local v3    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :catch_2
    move-exception v1

    goto :goto_6

    .line 228
    :catch_3
    move-exception v1

    goto :goto_9

    .line 233
    :cond_6
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v4

    .line 234
    :try_start_13
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-eqz v1, :cond_7

    .line 237
    :try_start_14
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 240
    goto :goto_5

    .line 238
    :catch_4
    move-exception v1

    .line 241
    :goto_5
    :try_start_15
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 243
    :cond_7
    monitor-exit v4

    goto :goto_8

    :catchall_4
    move-exception v0

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    throw v0

    .line 202
    .end local v3    # "threadRunning":Z
    .local v1, "threadRunning":Z
    :catchall_5
    move-exception v3

    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :try_start_17
    throw v3
    :try_end_17
    .catch Lcom/android/nfc/LlcpException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 194
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :catchall_6
    move-exception v3

    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :try_start_19
    throw v3
    :try_end_19
    .catch Lcom/android/nfc/LlcpException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 233
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :catchall_7
    move-exception v2

    move v3, v1

    move-object v1, v2

    goto :goto_d

    .line 230
    :catch_5
    move-exception v2

    move v3, v1

    .line 233
    .end local v1    # "threadRunning":Z
    .restart local v3    # "threadRunning":Z
    :goto_6
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2

    .line 234
    :try_start_1a
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    if-eqz v1, :cond_8

    .line 237
    :try_start_1b
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 240
    goto :goto_7

    .line 238
    :catch_6
    move-exception v1

    .line 241
    :goto_7
    :try_start_1c
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 243
    :cond_8
    monitor-exit v2

    .line 244
    :goto_8
    goto :goto_b

    .line 243
    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    throw v0

    .line 228
    .end local v3    # "threadRunning":Z
    .restart local v1    # "threadRunning":Z
    :catch_7
    move-exception v2

    move v3, v1

    move-object v1, v2

    .line 229
    .local v1, "e":Lcom/android/nfc/LlcpException;
    .restart local v3    # "threadRunning":Z
    :goto_9
    :try_start_1d
    const-string v2, "SnepServer"

    const-string v4, "llcp error"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 233
    nop

    .end local v1    # "e":Lcom/android/nfc/LlcpException;
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 234
    :try_start_1e
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    if-eqz v2, :cond_9

    .line 237
    :try_start_1f
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 240
    goto :goto_a

    .line 238
    :catch_8
    move-exception v2

    .line 241
    :goto_a
    :try_start_20
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 243
    :cond_9
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    goto :goto_8

    .line 246
    :goto_b
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0

    .line 247
    :try_start_21
    iget-boolean v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 248
    .end local v3    # "threadRunning":Z
    .local v1, "threadRunning":Z
    :try_start_22
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    move v3, v1

    goto :goto_c

    .end local v1    # "threadRunning":Z
    .restart local v3    # "threadRunning":Z
    :catchall_a
    move-exception v2

    :goto_c
    :try_start_23
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    throw v2

    .line 243
    :catchall_b
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    throw v0

    .line 233
    :catchall_c
    move-exception v1

    :goto_d
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2

    .line 234
    :try_start_25
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    if-eqz v4, :cond_a

    .line 237
    :try_start_26
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_9
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    .line 240
    goto :goto_e

    .line 238
    :catch_9
    move-exception v4

    .line 241
    :goto_e
    :try_start_27
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 243
    :cond_a
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    throw v1

    :catchall_d
    move-exception v0

    :try_start_28
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    throw v0

    .line 250
    .end local v3    # "threadRunning":Z
    .restart local v1    # "threadRunning":Z
    :cond_b
    return-void

    .line 186
    .end local v1    # "threadRunning":Z
    :catchall_e
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    throw v1
.end method

.method public shutdown()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0

    .line 254
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 255
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 257
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 261
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 263
    :cond_0
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
