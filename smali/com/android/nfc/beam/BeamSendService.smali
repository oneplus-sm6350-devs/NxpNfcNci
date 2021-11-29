.class public Lcom/android/nfc/beam/BeamSendService;
.super Landroid/app/Service;
.source "BeamSendService.java"

# interfaces
.implements Lcom/android/nfc/beam/BeamTransferManager$Callback;


# static fields
.field private static DBG:Z = false

.field public static final EXTRA_BEAM_COMPLETE_CALLBACK:Ljava/lang/String; = "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

.field public static EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnabledByNfc:Z

.field private final mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private mCompleteCallback:Landroid/os/Messenger;

.field private mStartId:I

.field private mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "BeamSendService"

    sput-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    .line 36
    const-string v0, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    sput-object v0, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lcom/android/nfc/beam/BeamSendService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/BeamSendService$1;-><init>(Lcom/android/nfc/beam/BeamSendService;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/beam/BeamSendService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/beam/BeamSendService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/BeamSendService;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 149
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 151
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    sget v2, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v1, v2, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    goto :goto_0

    .line 156
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 157
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    .line 159
    :cond_1
    :goto_0
    return-void
.end method

.method private invokeCompleteCallback(Z)V
    .locals 3
    .param p1, "success"    # Z

    .line 162
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 165
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 166
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v2, "failed to invoke Beam complete callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method createBeamTransferManager(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .locals 3
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .line 134
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    return v1

    .line 138
    :cond_0
    iget v0, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v2, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-eq v0, v2, :cond_1

    .line 140
    return v1

    .line 143
    :cond_1
    new-instance v0, Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 144
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method doTransfer(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .locals 5
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/BeamSendService;->createBeamTransferManager(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 108
    new-instance v0, Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v0, p0, v2}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    .line 109
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-string v4, "android.permission.NFC_HANDOVER_STATUS"

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/nfc/beam/BeamSendService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 112
    iget v0, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v2, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v2, "Error enabling Bluetooth."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 120
    return v1

    .line 122
    :cond_1
    iput-boolean v3, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    .line 123
    sget-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queueing out transfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_2
    :goto_0
    return v3

    .line 130
    :cond_3
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/beam/BeamSendService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 75
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 83
    iput p3, p0, Lcom/android/nfc/beam/BeamSendService;->mStartId:I

    .line 86
    const/4 v0, 0x2

    if-eqz p1, :cond_3

    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    .line 87
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/beam/BeamTransferRecord;

    move-object v2, v1

    .local v2, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    if-nez v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    const-string v1, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/nfc/beam/BeamSendService;->doTransfer(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    sget-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v1, "Starting outgoing Beam transfer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/nfc/beam/BeamSendService;->invokeCompleteCallback(Z)V

    .line 100
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    .line 101
    return v0

    .line 88
    .end local v2    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string v2, "No transfer record provided. Stopping."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    .line 90
    return v0
.end method

.method public onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V
    .locals 3
    .param p1, "transfer"    # Lcom/android/nfc/beam/BeamTransferManager;
    .param p2, "success"    # Z

    .line 176
    if-nez p2, :cond_0

    .line 177
    sget-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer failed, final state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 178
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    .line 183
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 186
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/nfc/beam/BeamSendService;->invokeCompleteCallback(Z)V

    .line 187
    iget v0, p0, Lcom/android/nfc/beam/BeamSendService;->mStartId:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    .line 188
    return-void
.end method
