.class public Lcom/android/nfc/P2pEventManager;
.super Ljava/lang/Object;
.source "P2pEventManager.java"

# interfaces
.implements Lcom/android/nfc/P2pEventListener;
.implements Lcom/android/nfc/beam/SendUi$Callback;


# static fields
.field static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "NfcP2pEventManager"

.field static final VIBRATION_PATTERN:[J


# instance fields
.field final mCallback:Lcom/android/nfc/P2pEventListener$Callback;

.field final mContext:Landroid/content/Context;

.field mInDebounce:Z

.field mNdefReceived:Z

.field mNdefSent:Z

.field final mNfcService:Lcom/android/nfc/NfcService;

.field final mNotificationManager:Landroid/app/NotificationManager;

.field final mSendUi:Lcom/android/nfc/beam/SendUi;

.field mSending:Z

.field final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x64
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/P2pEventListener$Callback;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 50
    iput-object p1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    .line 52
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    .line 53
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 57
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 59
    .local v0, "uiModeType":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Lcom/android/nfc/beam/SendUi;

    invoke-direct {v1, p1, p0}, Lcom/android/nfc/beam/SendUi;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/SendUi$Callback;)V

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    .line 67
    :goto_0
    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 186
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pCanceled()V

    .line 187
    return-void
.end method

.method public onP2pHandoverBusy()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 136
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 137
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/nfc/beam/SendUi;->finishAndToast(ILjava/lang/String;)V

    .line 138
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 140
    return-void
.end method

.method public onP2pHandoverNotSupported()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 126
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 127
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    .line 128
    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/nfc/beam/SendUi;->finishAndToast(ILjava/lang/String;)V

    .line 129
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 131
    return-void
.end method

.method public onP2pInRange()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 75
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->takeScreenshot()V

    .line 78
    :cond_0
    return-void
.end method

.method public onP2pNfcTapRequested()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 83
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 87
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 88
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->takeScreenshot()V

    .line 90
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->showPreSend(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public onP2pOutOfRange()V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 163
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 168
    :cond_1
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 169
    return-void
.end method

.method public onP2pReceiveComplete(Z)V
    .locals 3
    .param p1, "playSound"    # Z

    .line 144
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 145
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v1, :cond_1

    .line 154
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 156
    :cond_1
    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 157
    return-void
.end method

.method public onP2pResumeSend()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 201
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 202
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showStartSend()V

    .line 207
    :cond_0
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 208
    return-void
.end method

.method public onP2pSendComplete()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 115
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 116
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 121
    return-void
.end method

.method public onP2pSendConfirmationRequested()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 104
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 105
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->showPreSend(Z)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    .line 110
    :goto_0
    return-void
.end method

.method public onP2pSendDebounce()V
    .locals 2

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 192
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 193
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showSendHint()V

    .line 196
    :cond_0
    return-void
.end method

.method public onP2pTimeoutWaitingForLink()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public onSendConfirmed()V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showStartSend()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    .line 179
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 181
    return-void
.end method
