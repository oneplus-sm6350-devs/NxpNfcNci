.class Lcom/android/nfc/NfcUnlockManager;
.super Ljava/lang/Object;
.source "NfcUnlockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcUnlockManager$Singleton;,
        Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcUnlockManager"


# instance fields
.field private mLockscreenPollMask:I

.field private final mUnlockHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcUnlockManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/NfcUnlockManager$1;

    .line 14
    invoke-direct {p0}, Lcom/android/nfc/NfcUnlockManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/NfcUnlockManager;
    .locals 1

    .line 32
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager$Singleton;->access$000()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    return-object v0
.end method

.method private recomputePollMask()I
    .locals 4

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "pollMask":I
    iget-object v1, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;

    .line 77
    .local v2, "wrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    iget v3, v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;->mPollMask:I

    or-int/2addr v0, v3

    .line 78
    .end local v2    # "wrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    goto :goto_0

    .line 79
    :cond_0
    return v0
.end method


# virtual methods
.method declared-synchronized addUnlockHandler(Landroid/nfc/INfcUnlockHandler;I)I
    .locals 4
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .param p2, "pollMask"    # I

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 41
    .end local p0    # "this":Lcom/android/nfc/NfcUnlockManager;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;-><init>(Landroid/nfc/INfcUnlockHandler;ILcom/android/nfc/NfcUnlockManager$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 36
    .end local p1    # "unlockHandler":Landroid/nfc/INfcUnlockHandler;
    .end local p2    # "pollMask":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getLockscreenPollMask()I
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/nfc/NfcUnlockManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isLockscreenPollingEnabled()Z
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/nfc/NfcUnlockManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeUnlockHandler(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "unlockHandler"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-direct {p0}, Lcom/android/nfc/NfcUnlockManager;->recomputePollMask()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    .line 52
    .end local p0    # "this":Lcom/android/nfc/NfcUnlockManager;
    :cond_0
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 46
    .end local p1    # "unlockHandler":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized tryUnlock(Landroid/nfc/Tag;)Z
    .locals 4
    .param p1, "tag"    # Landroid/nfc/Tag;

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 57
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 59
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 60
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;

    .line 61
    .local v2, "handlerWrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    iget-object v3, v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;->mUnlockHandler:Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v3, p1}, Landroid/nfc/INfcUnlockHandler;->onUnlockAttempted(Landroid/nfc/Tag;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 62
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .line 68
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "handlerWrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    :cond_0
    goto :goto_0

    .line 64
    .end local p0    # "this":Lcom/android/nfc/NfcUnlockManager;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "NfcUnlockManager"

    const-string v3, "failed to communicate with unlock handler, removing"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 67
    invoke-direct {p0}, Lcom/android/nfc/NfcUnlockManager;->recomputePollMask()I

    move-result v2

    iput v2, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 55
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    .end local p1    # "tag":Landroid/nfc/Tag;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
