.class Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
.super Ljava/lang/Thread;
.source "NdefPushServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ndefpush/NdefPushServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field mRunning:Z

.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field final synthetic this$0:Lcom/android/nfc/ndefpush/NdefPushServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/ndefpush/NdefPushServer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 119
    iput-object p1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 127
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 129
    .local v1, "threadRunning":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 130
    :goto_0
    if-eqz v1, :cond_a

    .line 131
    const-string v0, "NdefPushServer"

    const-string v2, "about create LLCP service socket"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v2
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 134
    :try_start_2
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget-object v4, v3, Lcom/android/nfc/ndefpush/NdefPushServer;->mService:Lcom/android/nfc/NfcService;

    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget v5, v3, Lcom/android/nfc/ndefpush/NdefPushServer;->mSap:I

    const-string v6, "com.android.npp"

    const/16 v7, 0xf8

    const/4 v8, 0x1

    const/16 v9, 0x400

    invoke-virtual/range {v4 .. v9}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 136
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 137
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v2, :cond_1

    .line 138
    const-string v2, "NdefPushServer"

    const-string v3, "failed to create LLCP service socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 170
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v2

    .line 171
    :try_start_4
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_0

    .line 172
    const-string v3, "NdefPushServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    :try_start_5
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 177
    goto :goto_1

    .line 175
    :catch_0
    move-exception v3

    .line 178
    :goto_1
    :try_start_6
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 180
    :cond_0
    monitor-exit v2

    .line 139
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 141
    :cond_1
    :try_start_7
    const-string v2, "NdefPushServer"

    const-string v3, "created LLCP service socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v2
    :try_end_7
    .catch Lcom/android/nfc/LlcpException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 143
    :try_start_8
    iget-boolean v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    move v1, v3

    .line 144
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 146
    :goto_2
    if-eqz v1, :cond_5

    .line 148
    :try_start_9
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v2
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 149
    :try_start_a
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 150
    .local v3, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 151
    if-nez v3, :cond_3

    .line 170
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v2

    .line 171
    :try_start_b
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v4, :cond_2

    .line 172
    const-string v4, "NdefPushServer"

    const-string v5, "about to close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 174
    :try_start_c
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 177
    goto :goto_3

    .line 175
    :catch_1
    move-exception v4

    .line 178
    :goto_3
    :try_start_d
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 180
    :cond_2
    monitor-exit v2

    .line 151
    return-void

    .line 180
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    .line 153
    :cond_3
    :try_start_e
    const-string v2, "NdefPushServer"

    const-string v4, "about to accept"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v2

    .line 155
    .local v2, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const-string v4, "NdefPushServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accept returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v2, :cond_4

    .line 157
    new-instance v4, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;

    iget-object v5, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-direct {v4, v5, v2}, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;-><init>(Lcom/android/nfc/ndefpush/NdefPushServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->start()V

    .line 160
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v4
    :try_end_e
    .catch Lcom/android/nfc/LlcpException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 161
    :try_start_f
    iget-boolean v5, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    move v1, v5

    .line 162
    monitor-exit v4

    .line 163
    .end local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    goto :goto_2

    .line 162
    .restart local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_2
    move-exception v5

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
    :try_start_10
    throw v5
    :try_end_10
    .catch Lcom/android/nfc/LlcpException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 150
    .end local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
    :catchall_3
    move-exception v3

    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
    :try_start_12
    throw v3

    .line 164
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
    :cond_5
    const-string v2, "NdefPushServer"

    const-string v3, "stop running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Lcom/android/nfc/LlcpException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 170
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v2

    .line 171
    :try_start_13
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_6

    .line 172
    const-string v3, "NdefPushServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 174
    :try_start_14
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 177
    goto :goto_4

    .line 175
    :catch_2
    move-exception v3

    .line 178
    :goto_4
    :try_start_15
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 180
    :cond_6
    monitor-exit v2

    goto :goto_7

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    throw v0

    .line 144
    :catchall_5
    move-exception v3

    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
    :try_start_17
    throw v3
    :try_end_17
    .catch Lcom/android/nfc/LlcpException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 136
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
    :catchall_6
    move-exception v3

    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
    :try_start_19
    throw v3
    :try_end_19
    .catch Lcom/android/nfc/LlcpException; {:try_start_19 .. :try_end_19} :catch_5
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 170
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
    :catchall_7
    move-exception v2

    move v3, v1

    goto :goto_8

    .line 167
    :catch_3
    move-exception v2

    .line 168
    .local v2, "e":Ljava/io/IOException;
    :try_start_1a
    const-string v3, "NdefPushServer"

    const-string v4, "IO error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 170
    nop

    .end local v2    # "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v2

    .line 171
    :try_start_1b
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_7

    .line 172
    const-string v3, "NdefPushServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 174
    :try_start_1c
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 177
    goto :goto_5

    .line 175
    :catch_4
    move-exception v3

    .line 178
    :goto_5
    :try_start_1d
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 180
    :cond_7
    monitor-exit v2

    goto :goto_7

    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    throw v0

    .line 165
    :catch_5
    move-exception v2

    .line 166
    .local v2, "e":Lcom/android/nfc/LlcpException;
    :try_start_1e
    const-string v3, "NdefPushServer"

    const-string v4, "llcp error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 170
    nop

    .end local v2    # "e":Lcom/android/nfc/LlcpException;
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v2

    .line 171
    :try_start_1f
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_8

    .line 172
    const-string v3, "NdefPushServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 174
    :try_start_20
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_6
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 177
    goto :goto_6

    .line 175
    :catch_6
    move-exception v3

    .line 178
    :goto_6
    :try_start_21
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 180
    :cond_8
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 181
    :goto_7
    nop

    .line 183
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v0

    .line 184
    :try_start_22
    iget-boolean v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    move v1, v2

    .line 185
    monitor-exit v0

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    throw v2

    .line 180
    :catchall_a
    move-exception v0

    :try_start_23
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    throw v0

    .line 170
    .end local v1    # "threadRunning":Z
    .local v3, "threadRunning":Z
    :goto_8
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v4

    .line 171
    :try_start_24
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v1, :cond_9

    .line 172
    const-string v1, "NdefPushServer"

    const-string v5, "about to close"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    .line 174
    :try_start_25
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_7
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 177
    goto :goto_9

    .line 175
    :catch_7
    move-exception v1

    .line 178
    :goto_9
    :try_start_26
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 180
    :cond_9
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    throw v2

    :catchall_b
    move-exception v0

    :try_start_27
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    throw v0

    .line 187
    .end local v3    # "threadRunning":Z
    .restart local v1    # "threadRunning":Z
    :cond_a
    return-void

    .line 129
    .end local v1    # "threadRunning":Z
    :catchall_c
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    throw v1
.end method

.method public shutdown()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v0

    .line 191
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 192
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 194
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    goto :goto_0

    .line 195
    :catch_0
    move-exception v1

    .line 198
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 200
    :cond_0
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
