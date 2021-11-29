.class Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "ExtDtaSnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/sneptest/ExtDtaSnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mMessager:Lcom/android/nfc/snep/SnepMessenger;

.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/sneptest/ExtDtaSnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .locals 1
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .line 78
    iput-object p1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    .line 79
    const-string p1, "ExtDtaSnepServer"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 80
    iput-object p2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 81
    new-instance p1, Lcom/android/nfc/snep/SnepMessenger;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V

    iput-object p1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    .line 82
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "starting connection thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 90
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget-boolean v1, v1, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerRunning:Z

    .line 91
    .local v1, "running":Z
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    :goto_0
    if-eqz v1, :cond_1

    .line 94
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget-object v2, v2, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

    invoke-static {v0, v2}, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    goto :goto_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 98
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget-boolean v2, v2, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerRunning:Z

    move v1, v2

    .line 99
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 105
    .end local v1    # "running":Z
    .restart local p0    # "this":Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;
    :cond_1
    :goto_1
    :try_start_5
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "about to close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 91
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local p0    # "this":Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 104
    .restart local p0    # "this":Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    const-string v1, "ExtDtaSnepServer"

    const-string v2, "Closing from IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "about to close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 107
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v0

    .line 108
    nop

    .line 109
    :goto_3
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "finished connection thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 105
    :goto_4
    :try_start_a
    const-string v1, "ExtDtaSnepServer"

    const-string v2, "about to close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    .line 107
    :catch_2
    move-exception v1

    :goto_5
    throw v0
.end method
