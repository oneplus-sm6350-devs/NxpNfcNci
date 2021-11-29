.class public Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;
.super Ljava/lang/Thread;
.source "EchoServer.java"

# interfaces
.implements Lcom/android/nfc/echoserver/EchoServer$WriteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/echoserver/EchoServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionlessServerThread"
.end annotation


# instance fields
.field final echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

.field mRemoteSap:I

.field mRunning:Z

.field socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

.field final synthetic this$0:Lcom/android/nfc/echoserver/EchoServer;


# direct methods
.method public constructor <init>(Lcom/android/nfc/echoserver/EchoServer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/nfc/echoserver/EchoServer;

    .line 283
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    .line 284
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRunning:Z

    .line 285
    new-instance v1, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-direct {v1, p0, v0}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;-><init>(Lcom/android/nfc/echoserver/EchoServer$WriteCallback;Z)V

    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    .line 286
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "connectionBroken":Z
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    const-string v2, "EchoServer"

    if-eqz v1, :cond_0

    const-string v1, "about create LLCP connectionless socket"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    iget-object v1, v1, Lcom/android/nfc/echoserver/EchoServer;->mService:Lcom/android/nfc/NfcService;

    const/16 v3, 0x12

    const-string v4, "urn:nfc:sn:cl-echo"

    invoke-virtual {v1, v3, v4}, Lcom/android/nfc/NfcService;->createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    .line 296
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-nez v1, :cond_3

    .line 297
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "failed to create LLCP connectionless socket"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/nfc/LlcpException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v1}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v1, :cond_2

    .line 331
    :try_start_1
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 333
    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 298
    :cond_2
    :goto_0
    return-void

    .line 301
    :cond_3
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRunning:Z
    :try_end_2
    .catch Lcom/android/nfc/LlcpException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->receive()Lcom/android/nfc/LlcpPacket;

    move-result-object v1

    .line 304
    .local v1, "packet":Lcom/android/nfc/LlcpPacket;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 307
    :cond_4
    invoke-virtual {v1}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v3

    .line 308
    .local v3, "dataUnit":[B
    array-length v4, v3

    .line 310
    .local v4, "size":I
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_5
    if-gez v4, :cond_6

    .line 312
    const/4 v0, 0x1

    .line 313
    goto :goto_3

    .line 315
    :cond_6
    invoke-virtual {v1}, Lcom/android/nfc/LlcpPacket;->getRemoteSap()I

    move-result v5

    iput v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRemoteSap:I

    .line 316
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v5, v3, v4}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->pushUnit([BI)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    .end local v3    # "dataUnit":[B
    .end local v4    # "size":I
    goto :goto_1

    .line 305
    :cond_7
    :goto_2
    goto :goto_3

    .line 318
    .end local v1    # "packet":Lcom/android/nfc/LlcpPacket;
    :catch_1
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 321
    :try_start_4
    sget-boolean v3, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "connection broken by IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Lcom/android/nfc/LlcpException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 322
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    goto :goto_1

    .line 327
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v1}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v1, :cond_a

    .line 331
    :try_start_5
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 332
    :catch_2
    move-exception v1

    .line 333
    :goto_4
    goto :goto_5

    .line 327
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 324
    :catch_3
    move-exception v1

    .line 325
    .local v1, "e":Lcom/android/nfc/LlcpException;
    :try_start_6
    const-string v3, "llcp error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 327
    nop

    .end local v1    # "e":Lcom/android/nfc/LlcpException;
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v1}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v1, :cond_a

    .line 331
    :try_start_7
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 337
    :cond_a
    :goto_5
    return-void

    .line 327
    :goto_6
    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v2, :cond_b

    .line 331
    :try_start_8
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 333
    goto :goto_7

    .line 332
    :catch_4
    move-exception v2

    .line 333
    :cond_b
    :goto_7
    throw v1
.end method

.method public shutdown()V
    .locals 1

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRunning:Z

    .line 341
    return-void
.end method

.method public write([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    iget v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRemoteSap:I

    invoke-interface {v0, v1, p1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->send(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EchoServer"

    const-string v2, "Error writing data."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method
