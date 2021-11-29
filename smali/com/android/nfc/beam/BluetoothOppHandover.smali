.class public Lcom/android/nfc/beam/BluetoothOppHandover;
.super Ljava/lang/Object;
.source "BluetoothOppHandover.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final ACTION_HANDOVER_SEND:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_SEND"

.field static final ACTION_HANDOVER_SEND_MULTIPLE:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_SEND_MULTIPLE"

.field static final DBG:Z = true

.field static final MSG_START_SEND:I = 0x0

.field static final REMOTE_BT_ENABLE_DELAY_MS:I = 0x1388

.field static final STATE_COMPLETE:I = 0x3

.field static final STATE_INIT:I = 0x0

.field static final STATE_TURNING_ON:I = 0x1

.field static final STATE_WAITING:I = 0x2

.field static final TAG:Ljava/lang/String; = "BluetoothOppHandover"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mCreateTime:Ljava/lang/Long;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mHandler:Landroid/os/Handler;

.field final mRemoteActivating:Z

.field mState:I

.field final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "remoteActivating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .line 62
    .local p3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 65
    iput-object p3, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    .line 66
    iput-boolean p4, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mRemoteActivating:Z

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mCreateTime:Ljava/lang/Long;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mHandler:Landroid/os/Handler;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mState:I

    .line 71
    return-void
.end method


# virtual methods
.method complete()V
    .locals 1

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mState:I

    .line 96
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->sendIntent()V

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method sendIntent()V
    .locals 10

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v1, v3}, Lcom/android/nfc/beam/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    :cond_0
    const-string v1, "*/*"

    .line 108
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v3, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    iget-object v3, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "BluetoothOppHandover"

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 115
    .local v5, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_1

    .line 117
    :catch_0
    move-exception v7

    .line 118
    .local v7, "e":Ljava/lang/SecurityException;
    const-string v8, "Failed to transfer permission to Bluetooth process."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v7    # "e":Ljava/lang/SecurityException;
    :goto_1
    goto :goto_0

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "android.intent.extra.STREAM"

    if-ne v2, v7, :cond_3

    .line 122
    const-string v2, "android.nfc.handover.intent.action.HANDOVER_SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v2, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 125
    :cond_3
    const-string v2, "android.nfc.handover.intent.action.HANDOVER_SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v2, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 128
    :goto_2
    const-string v2, "Handing off outging transfer to BT"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v2, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->complete()V

    .line 133
    return-void
.end method

.method public start()V
    .locals 7

    .line 78
    iget-boolean v0, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mRemoteActivating:Z

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 80
    .local v0, "timeElapsed":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/nfc/beam/BluetoothOppHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 81
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->sendIntent()V

    .line 88
    .end local v0    # "timeElapsed":Ljava/lang/Long;
    :goto_0
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/beam/BluetoothOppHandover;->sendIntent()V

    .line 92
    :goto_1
    return-void
.end method
