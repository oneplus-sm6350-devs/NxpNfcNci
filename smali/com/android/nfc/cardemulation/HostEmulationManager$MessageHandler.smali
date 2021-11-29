.class Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;
.super Landroid/os/Handler;
.source "HostEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/HostEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 497
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 500
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 502
    const-string v1, "HostEmulationManager"

    const-string v2, "Dropping service response message; service no longer active."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    monitor-exit v0

    return-void

    .line 504
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    const-string v1, "HostEmulationManager"

    const-string v2, "Dropping service response message; service no longer bound."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    monitor-exit v0

    return-void

    .line 508
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 509
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 510
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 511
    .local v0, "dataBundle":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 512
    return-void

    .line 514
    :cond_2
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 515
    .local v1, "data":[B
    if-eqz v1, :cond_5

    array-length v2, v1

    if-nez v2, :cond_3

    goto :goto_0

    .line 520
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 521
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget v3, v3, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 522
    .local v3, "state":I
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    const/4 v2, 0x4

    if-ne v3, v2, :cond_4

    .line 524
    const-string v2, "HostEmulationManager"

    const-string v4, "Sending data"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->sendData([B)Z

    goto :goto_1

    .line 527
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping data, wrong state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "HostEmulationManager"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 522
    .end local v3    # "state":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 516
    :cond_5
    :goto_0
    const-string v2, "HostEmulationManager"

    const-string v3, "Dropping empty R-APDU"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void

    .line 529
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v1    # "data":[B
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 530
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLastSelectedAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v1

    .line 532
    .local v1, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const/4 v2, 0x0

    .line 533
    .local v2, "isPayment":Z
    iget-object v3, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 534
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 537
    .end local v1    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v2    # "isPayment":Z
    :cond_7
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 529
    :cond_8
    :goto_1
    nop

    .line 539
    :goto_2
    return-void

    .line 508
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method
