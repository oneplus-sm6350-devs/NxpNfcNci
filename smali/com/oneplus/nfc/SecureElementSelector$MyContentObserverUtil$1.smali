.class Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;
.super Landroid/database/ContentObserver;
.source "SecureElementSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;


# direct methods
.method constructor <init>(Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 235
    iput-object p1, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 238
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v0, v0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    monitor-enter v0

    .line 240
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 241
    .local v1, "startTime":Ljava/lang/Long;
    const/16 v2, 0x96

    .line 242
    .local v2, "getActiveSeString_ms":I
    const/16 v3, 0x7d0

    .line 244
    .local v3, "waitForgetActiveSeString_ms":I
    :cond_0
    iget-object v4, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v4, v4, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v4}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->getActiveSeString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .local v4, "activeSe":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 246
    goto :goto_1

    .line 249
    :cond_1
    int-to-long v5, v2

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    goto :goto_0

    .line 250
    :catch_0
    move-exception v5

    .line 253
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    int-to-long v7, v3

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 256
    :goto_1
    if-nez v4, :cond_2

    .line 257
    const-string v5, "SecureElementSelector"

    const-string v6, "activeSe is still null,bypass the ContentObserver onchanged routine!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    monitor-exit v0

    return-void

    .line 262
    :cond_2
    const-string v5, "SecureElementSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " MyContentObserverUtil mObserver  mLastActiveSe = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v7, v7, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v7}, Lcom/oneplus/nfc/SecureElementSelector;->access$400(Lcom/oneplus/nfc/SecureElementSelector;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " activeSe = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isSelfChange = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v5, v5, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$400(Lcom/oneplus/nfc/SecureElementSelector;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v5, v5, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$400(Lcom/oneplus/nfc/SecureElementSelector;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 267
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v5, v5, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v6, v6, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v6}, Lcom/oneplus/nfc/SecureElementSelector;->access$400(Lcom/oneplus/nfc/SecureElementSelector;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setPreActiveSeString(Ljava/lang/String;)V

    .line 269
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v5, v5, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    iget-object v6, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v6, v6, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v6}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->getActiveSeString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/nfc/SecureElementSelector;->access$402(Lcom/oneplus/nfc/SecureElementSelector;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v5, v5, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$100(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 272
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v5, v5, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$100(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v6, v6, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    iget-object v7, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v7, v7, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v7}, Lcom/oneplus/nfc/SecureElementSelector;->access$400(Lcom/oneplus/nfc/SecureElementSelector;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/nfc/SecureElementSelector;->access$200(Lcom/oneplus/nfc/SecureElementSelector;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;->onSecureElementChangeByUser(IZ)V

    .line 274
    :cond_3
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v5, v5, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 275
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;->this$1:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    iget-object v5, v5, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setActiveSeChangeByUser(I)V

    .line 278
    .end local v1    # "startTime":Ljava/lang/Long;
    .end local v2    # "getActiveSeString_ms":I
    .end local v3    # "waitForgetActiveSeString_ms":I
    .end local v4    # "activeSe":Ljava/lang/String;
    :cond_4
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
