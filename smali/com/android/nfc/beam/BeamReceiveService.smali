.class public Lcom/android/nfc/beam/BeamReceiveService;
.super Landroid/app/Service;
.source "BeamReceiveService.java"

# interfaces
.implements Lcom/android/nfc/beam/BeamTransferManager$Callback;


# static fields
.field private static DBG:Z = false

.field public static final EXTRA_BEAM_COMPLETE_CALLBACK:Ljava/lang/String; = "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

.field public static final EXTRA_BEAM_DEVICE:Ljava/lang/String; = "com.android.nfc.beam.EXTRA_BEAM_DEVICE"

.field public static final EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String; = "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnabledByNfc:Z

.field private final mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private mCompleteCallback:Landroid/os/Messenger;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mStartId:I

.field private mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "BeamReceiveService"

    sput-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    new-instance v0, Lcom/android/nfc/beam/BeamReceiveService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/BeamReceiveService$1;-><init>(Lcom/android/nfc/beam/BeamReceiveService;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/beam/BeamReceiveService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/beam/BeamReceiveService;

    .line 22
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/nfc/beam/BeamReceiveService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/beam/BeamReceiveService;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/beam/BeamReceiveService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/beam/BeamReceiveService;

    .line 22
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private invokeCompleteCallback(Z)V
    .locals 3
    .param p1, "success"    # Z

    .line 149
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 153
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v2, "failed to invoke Beam complete callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/beam/BeamReceiveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 72
    iput p3, p0, Lcom/android/nfc/beam/BeamReceiveService;->mStartId:I

    .line 75
    const/4 v0, 0x2

    if-eqz p1, :cond_3

    .line 76
    const-string v1, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/beam/BeamTransferRecord;

    move-object v2, v1

    .local v2, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    if-nez v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    const-string v1, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    .line 85
    const-string v1, "com.android.nfc.beam.EXTRA_BEAM_DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 87
    invoke-virtual {p0, v2}, Lcom/android/nfc/beam/BeamReceiveService;->prepareToReceive(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v1, "Ready for incoming Beam transfer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/nfc/beam/BeamReceiveService;->invokeCompleteCallback(Z)V

    .line 92
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    .line 93
    return v0

    .line 77
    .end local v2    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v2, "No transfer record provided. Stopping."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    .line 79
    return v0
.end method

.method public onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V
    .locals 3
    .param p1, "transfer"    # Lcom/android/nfc/beam/BeamTransferManager;
    .param p2, "success"    # Z

    .line 163
    if-nez p2, :cond_0

    .line 164
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer failed, final state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    if-eqz v0, :cond_1

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    .line 170
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 173
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/nfc/beam/BeamReceiveService;->invokeCompleteCallback(Z)V

    .line 174
    iget v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mStartId:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    .line 175
    return-void
.end method

.method prepareToReceive(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .locals 5
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .line 117
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    return v1

    .line 121
    :cond_0
    iget v0, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v2, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-eq v0, v2, :cond_1

    .line 123
    return v1

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string v2, "Error enabling Bluetooth."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v1

    .line 131
    :cond_2
    iput-boolean v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    .line 132
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queueing out transfer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3
    new-instance v0, Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v0, p0, p0, p1, v2}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 139
    new-instance v0, Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    .line 140
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-string v4, "android.permission.NFC_HANDOVER_STATUS"

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/android/nfc/beam/BeamReceiveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    .line 144
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 145
    return v2
.end method

.method whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 185
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Whitelisting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for BT OPP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    const v1, 0x7f0b000f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 191
    return-void
.end method
