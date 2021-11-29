.class Lcom/android/nfc/echoserver/EchoServer$EchoMachine;
.super Ljava/lang/Object;
.source "EchoServer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/echoserver/EchoServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EchoMachine"
.end annotation


# static fields
.field static final ECHO_DELAY_IN_MS:I = 0x7d0

.field static final ECHO_MIU:I = 0x80

.field static final QUEUE_SIZE:I = 0x2


# instance fields
.field final callback:Lcom/android/nfc/echoserver/EchoServer$WriteCallback;

.field final dataQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field final dumpWhenFull:Z

.field final handler:Landroid/os/Handler;

.field shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/nfc/echoserver/EchoServer$WriteCallback;Z)V
    .locals 2
    .param p1, "callback"    # Lcom/android/nfc/echoserver/EchoServer$WriteCallback;
    .param p2, "dumpWhenFull"    # Z

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown:Z

    .line 113
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->callback:Lcom/android/nfc/echoserver/EchoServer$WriteCallback;

    .line 114
    iput-boolean p2, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dumpWhenFull:Z

    .line 115
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->handler:Landroid/os/Handler;

    .line 117
    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    monitor-enter p0

    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 161
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->callback:Lcom/android/nfc/echoserver/EchoServer$WriteCallback;

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v0, v2}, Lcom/android/nfc/echoserver/EchoServer$WriteCallback;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    .end local p0    # "this":Lcom/android/nfc/echoserver/EchoServer$EchoMachine;
    :cond_1
    monitor-exit p0

    return v1

    .line 159
    .end local p1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pushUnit([BI)V
    .locals 6
    .param p1, "unit"    # [B
    .param p2, "size"    # I

    .line 120
    iget-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dumpWhenFull:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "EchoServer"

    const-string v1, "Dumping data unit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    :cond_0
    move v0, p2

    .line 126
    .local v0, "sizeLeft":I
    const/4 v1, 0x0

    .line 127
    .local v1, "offset":I
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 132
    :cond_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 134
    iget-object v3, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    new-array v4, v2, [B

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 136
    :cond_2
    :goto_0
    if-lez v0, :cond_3

    .line 137
    const/16 v3, 0x80

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 138
    .local v3, "minSize":I
    new-array v4, v3, [B

    .line 139
    .local v4, "data":[B
    invoke-static {p1, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    sub-int/2addr v0, v3

    .line 142
    add-int/2addr v1, v3

    .line 143
    .end local v3    # "minSize":I
    .end local v4    # "data":[B
    goto :goto_0

    .line 146
    .end local v0    # "sizeLeft":I
    .end local v1    # "offset":I
    :cond_3
    goto :goto_1

    .line 144
    :catch_0
    move-exception v0

    .line 148
    :cond_4
    :goto_1
    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 153
    .end local p0    # "this":Lcom/android/nfc/echoserver/EchoServer$EchoMachine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
