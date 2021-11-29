.class Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;
.super Ljava/lang/Thread;
.source "ExtDtaSnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/sneptest/ExtDtaSnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/sneptest/ExtDtaSnepServer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    .line 150
    iput-object p1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mThreadRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 157
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mThreadRunning:Z

    .line 159
    .local v1, "threadRunning":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 161
    :goto_0
    if-eqz v1, :cond_b

    .line 162
    const-string v0, "ExtDtaSnepServer"

    const-string v2, "about create LLCP service socket"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v2
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 165
    :try_start_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget v4, v4, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaServiceSap:I

    iget-object v5, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget-object v5, v5, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaServiceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget v6, v6, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaMiu:I

    iget-object v7, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget v7, v7, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaRwSize:I

    const/16 v8, 0x400

    invoke-virtual/range {v3 .. v8}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 167
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 168
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v2, :cond_1

    .line 169
    const-string v2, "ExtDtaSnepServer"

    const-string v3, "failed to create LLCP service socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 206
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v2

    .line 207
    :try_start_4
    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_0

    .line 208
    const-string v3, "ExtDtaSnepServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    :try_start_5
    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 211
    :catch_0
    move-exception v3

    :goto_1
    nop

    .line 212
    :try_start_6
    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 214
    :cond_0
    monitor-exit v2

    .line 170
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 172
    :cond_1
    :try_start_7
    const-string v2, "ExtDtaSnepServer"

    const-string v3, "created LLCP service socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v2
    :try_end_7
    .catch Lcom/android/nfc/LlcpException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 174
    :try_start_8
    iget-boolean v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mThreadRunning:Z

    move v1, v3

    .line 175
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 177
    :goto_2
    if-eqz v1, :cond_6

    .line 179
    :try_start_9
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v2
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 180
    :try_start_a
    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 181
    .local v3, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 183
    if-nez v3, :cond_3

    .line 184
    :try_start_b
    const-string v2, "ExtDtaSnepServer"

    const-string v4, "Server socket shut down."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Lcom/android/nfc/LlcpException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 206
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v2

    .line 207
    :try_start_c
    iget-object v4, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v4, :cond_2

    .line 208
    const-string v4, "ExtDtaSnepServer"

    const-string v5, "about to close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 210
    :try_start_d
    iget-object v4, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_3

    .line 211
    :catch_1
    move-exception v4

    :goto_3
    nop

    .line 212
    :try_start_e
    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 214
    :cond_2
    monitor-exit v2

    .line 185
    return-void

    .line 214
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v0

    .line 187
    :cond_3
    :try_start_f
    const-string v2, "ExtDtaSnepServer"

    const-string v4, "about to accept"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v2

    .line 189
    .local v2, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const-string v4, "ExtDtaSnepServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accept returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz v2, :cond_5

    .line 191
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v4

    .line 192
    .local v4, "miu":I
    iget-object v5, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget v5, v5, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaFragmentLength:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget v5, v5, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaFragmentLength:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 193
    .local v5, "fragmentLength":I
    :goto_4
    new-instance v6, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;

    iget-object v7, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    invoke-direct {v6, v7, v2, v5}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;-><init>(Lcom/android/nfc/sneptest/ExtDtaSnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V

    invoke-virtual {v6}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->start()V

    .line 196
    .end local v4    # "miu":I
    .end local v5    # "fragmentLength":I
    :cond_5
    iget-object v4, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v4
    :try_end_f
    .catch Lcom/android/nfc/LlcpException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 197
    :try_start_10
    iget-boolean v5, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mThreadRunning:Z

    move v1, v5

    .line 198
    monitor-exit v4

    .line 199
    .end local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    goto :goto_2

    .line 198
    .restart local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_2
    move-exception v5

    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;
    :try_start_11
    throw v5
    :try_end_11
    .catch Lcom/android/nfc/LlcpException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 181
    .end local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;
    :catchall_3
    move-exception v3

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;
    :try_start_13
    throw v3

    .line 200
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;
    :cond_6
    const-string v2, "ExtDtaSnepServer"

    const-string v3, "stop running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Lcom/android/nfc/LlcpException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 206
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v2

    .line 207
    :try_start_14
    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_7

    .line 208
    const-string v3, "ExtDtaSnepServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 210
    :try_start_15
    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_5

    .line 211
    :catch_2
    move-exception v3

    :goto_5
    nop

    .line 212
    :try_start_16
    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 214
    :cond_7
    monitor-exit v2

    goto :goto_8

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v0

    .line 175
    :catchall_5
    move-exception v3

    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;
    :try_start_18
    throw v3
    :try_end_18
    .catch Lcom/android/nfc/LlcpException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 167
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;
    :catchall_6
    move-exception v3

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;
    :try_start_1a
    throw v3
    :try_end_1a
    .catch Lcom/android/nfc/LlcpException; {:try_start_1a .. :try_end_1a} :catch_5
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 206
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;
    :catchall_7
    move-exception v2

    move v3, v1

    goto :goto_9

    .line 203
    :catch_3
    move-exception v2

    .line 204
    .local v2, "e":Ljava/io/IOException;
    :try_start_1b
    const-string v3, "ExtDtaSnepServer"

    const-string v4, "IO error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 206
    nop

    .end local v2    # "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v2

    .line 207
    :try_start_1c
    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_8

    .line 208
    const-string v3, "ExtDtaSnepServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 210
    :try_start_1d
    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    goto :goto_6

    .line 211
    :catch_4
    move-exception v3

    :goto_6
    nop

    .line 212
    :try_start_1e
    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 214
    :cond_8
    monitor-exit v2

    goto :goto_8

    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    throw v0

    .line 201
    :catch_5
    move-exception v2

    .line 202
    .local v2, "e":Lcom/android/nfc/LlcpException;
    :try_start_1f
    const-string v3, "ExtDtaSnepServer"

    const-string v4, "llcp error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 206
    nop

    .end local v2    # "e":Lcom/android/nfc/LlcpException;
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v2

    .line 207
    :try_start_20
    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_9

    .line 208
    const-string v3, "ExtDtaSnepServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 210
    :try_start_21
    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_6
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    goto :goto_7

    .line 211
    :catch_6
    move-exception v3

    :goto_7
    nop

    .line 212
    :try_start_22
    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 214
    :cond_9
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 215
    :goto_8
    nop

    .line 217
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v0

    .line 218
    :try_start_23
    iget-boolean v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mThreadRunning:Z

    move v1, v2

    .line 219
    monitor-exit v0

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    throw v2

    .line 214
    :catchall_a
    move-exception v0

    :try_start_24
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    throw v0

    .line 206
    .end local v1    # "threadRunning":Z
    .local v3, "threadRunning":Z
    :goto_9
    iget-object v4, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v4

    .line 207
    :try_start_25
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v1, :cond_a

    .line 208
    const-string v1, "ExtDtaSnepServer"

    const-string v5, "about to close"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 210
    :try_start_26
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_7
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    goto :goto_a

    .line 211
    :catch_7
    move-exception v1

    :goto_a
    nop

    .line 212
    :try_start_27
    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 214
    :cond_a
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    throw v2

    :catchall_b
    move-exception v0

    :try_start_28
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    throw v0

    .line 221
    .end local v3    # "threadRunning":Z
    .restart local v1    # "threadRunning":Z
    :cond_b
    return-void

    .line 159
    .end local v1    # "threadRunning":Z
    :catchall_c
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    throw v1
.end method

.method public shutdown()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v0

    .line 225
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mThreadRunning:Z

    .line 226
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 228
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 230
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 232
    :cond_0
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
