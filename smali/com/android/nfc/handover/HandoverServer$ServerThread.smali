.class Lcom/android/nfc/handover/HandoverServer$ServerThread;
.super Ljava/lang/Thread;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverServer;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/HandoverServer;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 82
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/handover/HandoverServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/handover/HandoverServer;
    .param p2, "x1"    # Lcom/android/nfc/handover/HandoverServer$1;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverServer$ServerThread;-><init>(Lcom/android/nfc/handover/HandoverServer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 88
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 90
    .local v1, "threadRunning":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 92
    :goto_0
    if-eqz v1, :cond_17

    .line 94
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 95
    :try_start_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget v4, v4, Lcom/android/nfc/handover/HandoverServer;->mSap:I

    const-string v5, "urn:nfc:sn:handover"

    const/16 v6, 0x80

    const/4 v7, 0x1

    const/16 v8, 0x400

    invoke-virtual/range {v3 .. v8}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 97
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 98
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v2, :cond_3

    .line 99
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HandoverServer"

    const-string v3, "failed to create LLCP service socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2

    .line 135
    :try_start_4
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_2

    .line 136
    sget-object v3, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HandoverServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    :cond_1
    :try_start_5
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    goto :goto_1

    .line 139
    :catch_0
    move-exception v3

    .line 142
    :goto_1
    :try_start_6
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 144
    :cond_2
    monitor-exit v2

    .line 100
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 102
    :cond_3
    :try_start_7
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "HandoverServer"

    const-string v3, "created LLCP service socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2
    :try_end_7
    .catch Lcom/android/nfc/LlcpException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 104
    :try_start_8
    iget-boolean v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    move v1, v3

    .line 105
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 107
    :goto_2
    if-eqz v1, :cond_c

    .line 109
    :try_start_9
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 110
    :try_start_a
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 111
    .local v3, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 113
    if-nez v3, :cond_8

    .line 114
    :try_start_b
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "HandoverServer"

    const-string v4, "Server socket shut down."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Lcom/android/nfc/LlcpException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 134
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2

    .line 135
    :try_start_c
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v4, :cond_7

    .line 136
    sget-object v4, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "HandoverServer"

    const-string v5, "about to close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 138
    :cond_6
    :try_start_d
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 141
    goto :goto_3

    .line 139
    :catch_1
    move-exception v4

    .line 142
    :goto_3
    :try_start_e
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 144
    :cond_7
    monitor-exit v2

    .line 115
    return-void

    .line 144
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v0

    .line 117
    :cond_8
    :try_start_f
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "HandoverServer"

    const-string v4, "about to accept"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_9
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v2

    .line 119
    .local v2, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v4, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "HandoverServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accept returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_a
    if-eqz v2, :cond_b

    .line 121
    new-instance v4, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;

    iget-object v5, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-direct {v4, v5, v2}, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;-><init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    invoke-virtual {v4}, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->start()V

    .line 124
    :cond_b
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v4
    :try_end_f
    .catch Lcom/android/nfc/LlcpException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 125
    :try_start_10
    iget-boolean v5, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    move v1, v5

    .line 126
    monitor-exit v4

    .line 127
    .end local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    goto/16 :goto_2

    .line 126
    .restart local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_2
    move-exception v5

    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :try_start_11
    throw v5
    :try_end_11
    .catch Lcom/android/nfc/LlcpException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 111
    .end local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :catchall_3
    move-exception v3

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :try_start_13
    throw v3

    .line 128
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :cond_c
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "HandoverServer"

    const-string v3, "stop running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Lcom/android/nfc/LlcpException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 134
    :cond_d
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2

    .line 135
    :try_start_14
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_f

    .line 136
    sget-object v3, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "HandoverServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 138
    :cond_e
    :try_start_15
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 141
    goto :goto_4

    .line 139
    :catch_2
    move-exception v3

    .line 142
    :goto_4
    :try_start_16
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 144
    :cond_f
    monitor-exit v2

    goto :goto_7

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v0

    .line 105
    :catchall_5
    move-exception v3

    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :try_start_18
    throw v3
    :try_end_18
    .catch Lcom/android/nfc/LlcpException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 97
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :catchall_6
    move-exception v3

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :try_start_1a
    throw v3
    :try_end_1a
    .catch Lcom/android/nfc/LlcpException; {:try_start_1a .. :try_end_1a} :catch_5
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 134
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :catchall_7
    move-exception v2

    move v3, v1

    goto :goto_8

    .line 131
    :catch_3
    move-exception v2

    .line 132
    .local v2, "e":Ljava/io/IOException;
    :try_start_1b
    sget-object v3, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "HandoverServer"

    const-string v4, "IO error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    :cond_10
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2

    .line 135
    :try_start_1c
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_12

    .line 136
    sget-object v3, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "HandoverServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 138
    :cond_11
    :try_start_1d
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 141
    goto :goto_5

    .line 139
    :catch_4
    move-exception v3

    .line 142
    :goto_5
    :try_start_1e
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 144
    :cond_12
    monitor-exit v2

    goto :goto_7

    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    throw v0

    .line 129
    :catch_5
    move-exception v2

    .line 130
    .local v2, "e":Lcom/android/nfc/LlcpException;
    :try_start_1f
    const-string v3, "HandoverServer"

    const-string v4, "llcp error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 134
    nop

    .end local v2    # "e":Lcom/android/nfc/LlcpException;
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2

    .line 135
    :try_start_20
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_14

    .line 136
    sget-object v3, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "HandoverServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 138
    :cond_13
    :try_start_21
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_6
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 141
    goto :goto_6

    .line 139
    :catch_6
    move-exception v3

    .line 142
    :goto_6
    :try_start_22
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 144
    :cond_14
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 145
    :goto_7
    nop

    .line 147
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v0

    .line 148
    :try_start_23
    iget-boolean v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    move v1, v2

    .line 149
    monitor-exit v0

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    throw v2

    .line 144
    :catchall_a
    move-exception v0

    :try_start_24
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    throw v0

    .line 134
    .end local v1    # "threadRunning":Z
    .local v3, "threadRunning":Z
    :goto_8
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v4

    .line 135
    :try_start_25
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v1, :cond_16

    .line 136
    sget-object v1, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "HandoverServer"

    const-string v5, "about to close"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 138
    :cond_15
    :try_start_26
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_7
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    .line 141
    goto :goto_9

    .line 139
    :catch_7
    move-exception v1

    .line 142
    :goto_9
    :try_start_27
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 144
    :cond_16
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

    .line 151
    .end local v3    # "threadRunning":Z
    .restart local v1    # "threadRunning":Z
    :cond_17
    return-void

    .line 90
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

    .line 154
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v0

    .line 155
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 156
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 158
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 162
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 164
    :cond_0
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
