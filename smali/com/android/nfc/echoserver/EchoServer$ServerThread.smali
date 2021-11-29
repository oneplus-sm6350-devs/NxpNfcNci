.class public Lcom/android/nfc/echoserver/EchoServer$ServerThread;
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
    name = "ServerThread"
.end annotation


# instance fields
.field clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

.field running:Z

.field serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field final synthetic this$0:Lcom/android/nfc/echoserver/EchoServer;


# direct methods
.method public constructor <init>(Lcom/android/nfc/echoserver/EchoServer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/nfc/echoserver/EchoServer;

    .line 175
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    .line 176
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    .line 177
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;-><init>(Lcom/android/nfc/echoserver/EchoServer$WriteCallback;Z)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    .line 178
    return-void
.end method

.method private handleClient(Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .locals 6
    .param p1, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 181
    const-string v0, "EchoServer"

    const/4 v1, 0x0

    .line 182
    .local v1, "connectionBroken":Z
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 185
    .local v2, "dataUnit":[B
    :goto_0
    if-nez v1, :cond_3

    .line 187
    :try_start_0
    invoke-interface {p1, v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v3

    .line 188
    .local v3, "size":I
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    if-gez v3, :cond_1

    .line 190
    const/4 v1, 0x1

    .line 191
    goto :goto_2

    .line 193
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v4, v2, v3}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->pushUnit([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "size":I
    goto :goto_1

    .line 195
    :catch_0
    move-exception v3

    .line 197
    .local v3, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    .line 198
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "connection broken by IOException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    goto :goto_0

    .line 201
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 205
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    const-string v1, "EchoServer"

    if-eqz v0, :cond_0

    const-string v0, "about create LLCP service socket"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    iget-object v2, v0, Lcom/android/nfc/echoserver/EchoServer;->mService:Lcom/android/nfc/NfcService;

    const/16 v3, 0x11

    const-string v4, "urn:nfc:sn:co-echo"

    const/16 v5, 0x80

    const/4 v6, 0x1

    const/16 v7, 0x400

    invoke-virtual/range {v2 .. v7}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catch Lcom/android/nfc/LlcpException; {:try_start_0 .. :try_end_0} :catch_4

    .line 211
    nop

    .line 212
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_2

    .line 213
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "failed to create LLCP service socket"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    return-void

    .line 216
    :cond_2
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "created LLCP service socket"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    if-eqz v0, :cond_6

    .line 221
    const/4 v0, 0x0

    :try_start_1
    sget-boolean v2, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "about to accept"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 223
    sget-boolean v2, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accept returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-direct {p0, v2}, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->handleClient(Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "IO error"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 225
    :catch_1
    move-exception v2

    .line 226
    .local v2, "e":Lcom/android/nfc/LlcpException;
    const-string v3, "llcp error"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    .line 231
    .end local v2    # "e":Lcom/android/nfc/LlcpException;
    :goto_1
    goto :goto_0

    .line 234
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 237
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 240
    goto :goto_2

    .line 238
    :catch_2
    move-exception v0

    .line 241
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 244
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 247
    goto :goto_3

    .line 245
    :catch_3
    move-exception v1

    .line 248
    :goto_3
    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 249
    return-void

    .line 209
    :catch_4
    move-exception v0

    .line 210
    .local v0, "e":Lcom/android/nfc/LlcpException;
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    .line 265
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_0

    .line 267
    :try_start_0
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 271
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 273
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 253
    const-string v0, "EchoServer"

    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-eqz v1, :cond_0

    .line 255
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 256
    const-string v1, "Send success!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Send failed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method
