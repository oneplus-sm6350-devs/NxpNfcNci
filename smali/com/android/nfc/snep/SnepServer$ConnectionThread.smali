.class Lcom/android/nfc/snep/SnepServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/snep/SnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mMessager:Lcom/android/nfc/snep/SnepMessenger;

.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/snep/SnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/snep/SnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .locals 1
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .line 101
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    .line 102
    const-string p1, "SnepServer"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 103
    iput-object p2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 104
    new-instance p1, Lcom/android/nfc/snep/SnepMessenger;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V

    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    .line 105
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 113
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-boolean v1, v1, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 114
    .local v1, "running":Z
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    :goto_0
    if-eqz v1, :cond_1

    .line 117
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v2, v2, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-static {v0, v2}, Lcom/android/nfc/snep/SnepServer;->handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/snep/SnepServer$Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    goto :goto_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-boolean v2, v2, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    move v1, v2

    .line 123
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/nfc/snep/SnepServer$ConnectionThread;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 130
    .end local v1    # "running":Z
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepServer$ConnectionThread;
    :cond_1
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 114
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local p0    # "this":Lcom/android/nfc/snep/SnepServer$ConnectionThread;
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 128
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepServer$ConnectionThread;
    :catchall_2
    move-exception v0

    .line 130
    :try_start_8
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 133
    goto :goto_2

    .line 131
    :catch_0
    move-exception v1

    .line 133
    :goto_2
    throw v0

    .line 125
    :catch_1
    move-exception v0

    .line 130
    :try_start_9
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 133
    :goto_3
    goto :goto_4

    .line 131
    :catch_2
    move-exception v0

    .line 134
    nop

    .line 137
    :goto_4
    return-void
.end method
