.class public Lcom/android/nfc/beam/BeamManager;
.super Ljava/lang/Object;
.source "BeamManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamManager$Singleton;
    }
.end annotation


# static fields
.field private static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field private static final DBG:Z = false

.field public static final MSG_BEAM_COMPLETE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BeamManager"


# instance fields
.field private mBeamInProgress:Z

.field private final mCallback:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNfcService:Lcom/android/nfc/NfcService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    .line 60
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/beam/BeamManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/beam/BeamManager$1;

    .line 37
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/beam/BeamManager;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/nfc/beam/BeamManager$Singleton;->INSTANCE:Lcom/android/nfc/beam/BeamManager;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    .line 132
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/nfc/beam/BeamManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 135
    :cond_1
    return v2

    .line 129
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 137
    :cond_2
    return v1
.end method

.method public isBeamInProgress()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    monitor-exit v0

    return v1

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .line 75
    iget-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 79
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v2, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    const/4 v3, 0x0

    .line 84
    invoke-static {v0, v2, v3}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v0

    .line 87
    .local v0, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/nfc/beam/BeamReceiveService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v2, "receiveIntent":Landroid/content/Intent;
    const-string v3, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v4, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    iget-object v3, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    const-string v4, "com.android.nfc.beam.EXTRA_BEAM_DEVICE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    iget-object v3, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, v3}, Lcom/android/nfc/beam/BeamManager;->whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 97
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 98
    return v1

    .line 81
    .end local v0    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    .end local v2    # "receiveIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outgoingHandoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .line 104
    iget-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    if-eqz v1, :cond_0

    .line 106
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 108
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v0, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v2, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    invoke-static {v0, v2, p3}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v0

    .line 115
    .local v0, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/nfc/beam/BeamSendService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v2, "sendIntent":Landroid/content/Intent;
    sget-object v3, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v4, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1, v2, p4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 121
    return v1

    .line 110
    .end local v0    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    .end local v2    # "sendIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    const v1, 0x7f0b000f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 150
    return-void
.end method
