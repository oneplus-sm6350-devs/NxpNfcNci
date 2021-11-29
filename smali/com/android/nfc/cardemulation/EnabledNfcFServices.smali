.class public Lcom/android/nfc/cardemulation/EnabledNfcFServices;
.super Ljava/lang/Object;
.source "EnabledNfcFServices.java"

# interfaces
.implements Lcom/android/nfc/ForegroundUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "EnabledNfcFCardEmulationServices"


# instance fields
.field mActivated:Z

.field final mCallback:Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

.field mComputeFgRequested:Z

.field final mContext:Landroid/content/Context;

.field mForegroundComponent:Landroid/content/ComponentName;

.field mForegroundRequested:Landroid/content/ComponentName;

.field mForegroundUid:I

.field final mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field final mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field final mNfcFServiceCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

.field final mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-string v0, "persist.nfc.ce_debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nfcFServiceCache"    # Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;
    .param p3, "t3tIdentifiersCache"    # Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;
    .param p4, "callback"    # Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 46
    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 59
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "EnabledNfcFServices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mNfcFServiceCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 62
    iput-object p3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 63
    iput-object p4, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mCallback:Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

    .line 64
    return-void
.end method


# virtual methods
.method computeEnabledForegroundService()V
    .locals 5

    .line 67
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "computeEnabledForegroundService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 69
    .local v0, "foregroundRequested":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 70
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 71
    :try_start_0
    iget-boolean v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    if-eqz v3, :cond_1

    .line 72
    const-string v3, "EnabledNfcFCardEmulationServices"

    const-string v4, "configuration will be postponed until deactivation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 74
    monitor-exit v2

    return-void

    .line 76
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 77
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    move-object v0, v3

    .line 78
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 80
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 81
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 82
    const/4 v1, 0x1

    goto :goto_0

    .line 83
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_4

    .line 84
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 85
    const/4 v1, 0x1

    .line 87
    :cond_4
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    if-eqz v1, :cond_5

    .line 90
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mCallback:Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

    invoke-interface {v2, v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;->onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V

    .line 92
    :cond_5
    return-void

    .line 87
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 220
    return-void
.end method

.method public onHostEmulationActivated()V
    .locals 2

    .line 178
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "onHostEmulationActivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHostEmulationDeactivated()V
    .locals 3

    .line 185
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "onHostEmulationDeactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 187
    .local v0, "needComputeFg":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 189
    iget-boolean v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    if-eqz v2, :cond_1

    .line 190
    const/4 v0, 0x1

    .line 192
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    if-eqz v0, :cond_2

    .line 194
    const-string v1, "EnabledNfcFCardEmulationServices"

    const-string v2, "do postponed configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 197
    :cond_2
    return-void

    .line 192
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onNfcDisabled()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 202
    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 203
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 205
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 206
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServicesUpdated()V
    .locals 4

    .line 95
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "onServicesUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 98
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 100
    const-string v2, "EnabledNfcFCardEmulationServices"

    const-string v3, "Removing foreground enabled service because of service update."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 102
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 103
    const/4 v0, 0x1

    .line 105
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 109
    :cond_2
    return-void

    .line 105
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onUidToBackground(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 173
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "onUidToBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->unregisterForegroundService(I)Z

    .line 175
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 210
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 212
    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 214
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 215
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerEnabledForegroundService(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I

    .line 112
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "registerEnabledForegroundService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 114
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mNfcFServiceCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 116
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 115
    invoke-virtual {v2, v3, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v2

    .line 117
    .local v2, "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 118
    monitor-exit v1

    return v3

    .line 120
    :cond_1
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 121
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 122
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getT3tPmm()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 126
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    const-string v3, "EnabledNfcFCardEmulationServices"

    const-string v4, "The servcie is already requested to the foreground service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v3, 0x1

    monitor-exit v1

    return v3

    .line 130
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v3, p0, p2}, Lcom/android/nfc/ForegroundUtils;->registerUidToBackgroundCallback(Lcom/android/nfc/ForegroundUtils$Callback;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    iput-object p1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 132
    iput p2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    :cond_4
    const-string v3, "EnabledNfcFCardEmulationServices"

    const-string v4, "Calling UID is not in the foreground, ignorning!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz v0, :cond_5

    .line 139
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 141
    :cond_5
    return v0

    .line 123
    .restart local v2    # "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_6
    :goto_1
    :try_start_1
    monitor-exit v1

    return v3

    .line 137
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method unregisterForegroundService(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 145
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "unregisterForegroundService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 147
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    iget v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    if-ne v2, p1, :cond_1

    .line 149
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 150
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 151
    const/4 v0, 0x1

    .line 153
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 157
    :cond_2
    return v0

    .line 153
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public unregisteredEnabledForegroundService(I)Z
    .locals 2
    .param p1, "callingUid"    # I

    .line 161
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    const-string v1, "EnabledNfcFCardEmulationServices"

    if-eqz v0, :cond_0

    const-string v0, "unregisterEnabledForegroundService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v0, p1}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->unregisterForegroundService(I)Z

    move-result v0

    return v0

    .line 166
    :cond_1
    const-string v0, "Calling UID is not in the foreground, ignorning!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    return v0
.end method
