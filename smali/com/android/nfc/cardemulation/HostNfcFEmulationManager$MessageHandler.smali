.class Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;
.super Landroid/os/Handler;
.source "HostNfcFEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    .line 308
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 311
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 313
    const-string v1, "HostNfcFEmulationManager"

    const-string v2, "Dropping service response message; service no longer active."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    monitor-exit v0

    return-void

    .line 315
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    const-string v1, "HostNfcFEmulationManager"

    const-string v2, "Dropping service response message; service no longer bound."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    monitor-exit v0

    return-void

    .line 319
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 320
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 321
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 322
    .local v0, "dataBundle":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 323
    return-void

    .line 325
    :cond_2
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 336
    .local v1, "data":[B
    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_3

    .line 337
    const-string v2, "HostNfcFEmulationManager"

    const-string v3, "Invalid response packet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 341
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 342
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget v3, v3, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 343
    .local v3, "state":I
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    const/4 v2, 0x2

    if-ne v3, v2, :cond_5

    .line 345
    const-string v2, "HostNfcFEmulationManager"

    const-string v4, "Sending data"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-boolean v2, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-static {v4, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->access$000(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;[B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "HostNfcFEmulationManager"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_4
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->sendData([B)Z

    goto :goto_0

    .line 349
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping data, wrong state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "HostNfcFEmulationManager"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    .end local v3    # "state":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 352
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v1    # "data":[B
    :cond_6
    :goto_0
    return-void

    .line 319
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
