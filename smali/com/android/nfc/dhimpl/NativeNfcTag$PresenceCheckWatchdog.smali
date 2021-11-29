.class Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
.super Ljava/lang/Thread;
.source "NativeNfcTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/NativeNfcTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PresenceCheckWatchdog"
.end annotation


# instance fields
.field private doCheck:Z

.field private isPaused:Z

.field private isPresent:Z

.field private isStopped:Z

.field private tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

.field private final watchdogTimeout:I


# direct methods
.method public constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcTag;ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;
    .param p2, "presenceCheckDelay"    # I
    .param p3, "callback"    # Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .line 84
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPresent:Z

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 85
    iput p2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->watchdogTimeout:I

    .line 86
    iput-object p3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .line 87
    return-void
.end method


# virtual methods
.method public declared-synchronized doResume()V
    .locals 1

    monitor-enter p0

    .line 96
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 95
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized end(Z)V
    .locals 1
    .param p1, "disableCallback"    # Z

    monitor-enter p0

    .line 104
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 106
    if-eqz p1, :cond_0

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .line 109
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 103
    .end local p1    # "disableCallback":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    .line 90
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 89
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    const-string v0, "NativeNfcTag"

    const-string v1, "Starting background presence check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPresent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    .line 118
    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 121
    :cond_0
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->watchdogTimeout:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 122
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doPresenceCheck()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPresent:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    .line 134
    :cond_1
    :goto_1
    goto :goto_0

    .line 136
    :cond_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->access$002(Lcom/android/nfc/dhimpl/NativeNfcTag;Z)Z

    .line 140
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    const-string v0, "NativeNfcTag"

    const-string v1, "Tag lost, restarting polling loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doDisconnect()Z

    .line 145
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    if-eqz v0, :cond_3

    .line 146
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-static {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->access$100(Lcom/android/nfc/dhimpl/NativeNfcTag;)I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;->onTagDisconnected(J)V

    .line 148
    :cond_3
    const-string v0, "NativeNfcTag"

    const-string v1, "Stopping background presence check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 140
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 136
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method
