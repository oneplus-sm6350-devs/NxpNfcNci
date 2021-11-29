.class public Lcom/android/nfc/beam/BeamStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BeamStatusReceiver.java"


# static fields
.field public static final ACTION_CANCEL_HANDOVER_TRANSFER:Ljava/lang/String; = "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

.field private static final ACTION_HANDOVER_STARTED:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_STARTED"

.field private static final ACTION_STOP_BLUETOOTH_TRANSFER:Ljava/lang/String; = "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

.field private static final ACTION_TRANSFER_DONE:Ljava/lang/String; = "android.nfc.handover.intent.action.TRANSFER_DONE"

.field private static final ACTION_TRANSFER_PROGRESS:Ljava/lang/String; = "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

.field public static final BEAM_STATUS_PERMISSION:Ljava/lang/String; = "android.permission.NFC_HANDOVER_STATUS"

.field private static final DBG:Z = true

.field public static final DIRECTION_INCOMING:I = 0x0

.field public static final DIRECTION_OUTGOING:I = 0x1

.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "android.nfc.handover.intent.extra.ADDRESS"

.field private static final EXTRA_HANDOVER_DATA_LINK_TYPE:Ljava/lang/String; = "android.nfc.handover.intent.extra.HANDOVER_DATA_LINK_TYPE"

.field public static final EXTRA_INCOMING:Ljava/lang/String; = "com.android.nfc.handover.extra.INCOMING"

.field private static final EXTRA_OBJECT_COUNT:Ljava/lang/String; = "android.nfc.handover.intent.extra.OBJECT_COUNT"

.field public static final EXTRA_TRANSFER_ID:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_ID"

.field private static final EXTRA_TRANSFER_MIMETYPE:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

.field private static final EXTRA_TRANSFER_PROGRESS:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

.field private static final EXTRA_TRANSFER_STATUS:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_STATUS"

.field private static final EXTRA_TRANSFER_URI:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_URI"

.field private static final HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field private static final HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BeamStatusReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transferManager"    # Lcom/android/nfc/beam/BeamTransferManager;

    .line 79
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 82
    return-void
.end method

.method private handleTransferEvent(Landroid/content/Intent;I)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "deviceType"    # I

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    const-string v2, "android.nfc.handover.intent.extra.TRANSFER_ID"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 113
    .local v3, "id":I
    const-string v4, "android.nfc.handover.intent.extra.ADDRESS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "sourceAddress":Ljava/lang/String;
    if-nez v4, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    const/4 v6, 0x1

    if-nez v5, :cond_2

    .line 120
    if-eq v3, v1, :cond_1

    .line 121
    if-ne p2, v6, :cond_1

    .line 122
    const-string v1, "BeamStatusReceiver"

    const-string v5, "Didn\'t find transfer, stopping"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "cancelIntent":Landroid/content/Intent;
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    const v5, 0x7f0b000f

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    .end local v1    # "cancelIntent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 132
    :cond_2
    invoke-virtual {v5, v3}, Lcom/android/nfc/beam/BeamTransferManager;->setBluetoothTransferId(I)V

    .line 134
    const-string v1, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 135
    const-string v1, "android.nfc.handover.intent.extra.TRANSFER_STATUS"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, "handoverStatus":I
    if-nez v1, :cond_4

    .line 138
    const-string v2, "android.nfc.handover.intent.extra.TRANSFER_URI"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "uriString":Ljava/lang/String;
    const-string v5, "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "mimeType":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 141
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 144
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 147
    :cond_3
    iget-object v8, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v8, v6, v7, v5}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    .line 148
    .end local v2    # "uriString":Ljava/lang/String;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 149
    :cond_4
    iget-object v5, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v6}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    .line 151
    .end local v1    # "handoverStatus":I
    :goto_0
    goto :goto_2

    :cond_5
    const-string v1, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 152
    const/4 v1, 0x0

    const-string v2, "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    .line 153
    .local v1, "progress":F
    iget-object v2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v2, v1}, Lcom/android/nfc/beam/BeamTransferManager;->updateFileProgress(F)V

    .end local v1    # "progress":F
    goto :goto_1

    .line 154
    :cond_6
    const-string v1, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 155
    const-string v1, "android.nfc.handover.intent.extra.OBJECT_COUNT"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 156
    .local v1, "count":I
    if-lez v1, :cond_8

    .line 157
    iget-object v2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v2, v1}, Lcom/android/nfc/beam/BeamTransferManager;->setObjectCount(I)V

    goto :goto_2

    .line 154
    .end local v1    # "count":I
    :cond_7
    :goto_1
    nop

    .line 160
    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.handover.intent.extra.HANDOVER_DATA_LINK_TYPE"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 90
    .local v1, "dataLinkType":I
    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {v2}, Lcom/android/nfc/beam/BeamTransferManager;->cancel()V

    goto :goto_0

    .line 94
    :cond_0
    const-string v2, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    const-string v2, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    const-string v2, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/android/nfc/beam/BeamStatusReceiver;->handleTransferEvent(Landroid/content/Intent;I)V

    .line 99
    :cond_2
    :goto_0
    return-void
.end method
