.class public Lcom/android/nfc/BeamShareActivity;
.super Landroid/app/Activity;
.source "BeamShareActivity.java"


# static fields
.field static final DBG:Z = false

.field static final DELAYTIME:I = 0xc8

.field static final TAG:Ljava/lang/String; = "BeamShareActivity"

.field static final mHandler:Landroid/os/Handler;


# instance fields
.field dialog:Landroid/app/AlertDialog;

.field dialogBuilder:Landroid/app/AlertDialog$Builder;

.field mLaunchIntent:Landroid/content/Intent;

.field mNdefMessage:Landroid/nfc/NdefMessage;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/nfc/BeamShareActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 314
    new-instance v0, Lcom/android/nfc/BeamShareActivity$5;

    invoke-direct {v0, p0}, Lcom/android/nfc/BeamShareActivity$5;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/BeamShareActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/BeamShareActivity;

    .line 65
    invoke-direct {p0}, Lcom/android/nfc/BeamShareActivity;->fadeFinish()V

    return-void
.end method

.method private continueShare(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeamShareActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://media/external/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 342
    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/android/nfc/beam/MimeTypeUtil;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    .line 347
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    nop

    .line 348
    return v2

    .line 344
    :catch_0
    move-exception v2

    .line 345
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "File not exist, ignore."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return v0

    .line 350
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_1
    return v2
.end method

.method private fadeFinish()V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    .line 332
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/BeamShareActivity;->overridePendingTransition(II)V

    .line 333
    return-void
.end method

.method private showNfcDialogAndExit(I)V
    .locals 6
    .param p1, "msgId"    # I

    .line 116
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/BeamShareActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 121
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 122
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/nfc/BeamShareActivity$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/BeamShareActivity$1;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/nfc/BeamShareActivity$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/BeamShareActivity$2;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/nfc/BeamShareActivity$3;

    invoke-direct {v1, p0}, Lcom/android/nfc/BeamShareActivity$3;-><init>(Lcom/android/nfc/BeamShareActivity;)V

    const v2, 0x1040009

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->dialog:Landroid/app/AlertDialog;

    .line 148
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 85
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 86
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 88
    const-string v0, "BeamShareActivity"

    const-string v1, "NFC adapter not present."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/android/nfc/BeamShareActivity;->fadeFinish()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const v0, 0x7f0b000c

    invoke-direct {p0, v0}, Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExit(I)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    .line 97
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 108
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BeamShareActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 113
    return-void
.end method

.method public parseShareIntentAndFinish(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .line 175
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_c

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 181
    .local v0, "clipData":Landroid/content/ClipData;
    const-string v2, "BeamShareActivity"

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 186
    .local v4, "item":Landroid/content/ClipData$Item;
    :try_start_0
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 187
    .local v5, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 190
    .local v6, "plainText":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 191
    invoke-virtual {v4, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 194
    :cond_1
    if-eqz v5, :cond_3

    .line 198
    invoke-direct {p0, v5}, Lcom/android/nfc/BeamShareActivity;->continueShare(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 200
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 201
    :cond_3
    if-eqz v6, :cond_4

    .line 203
    invoke-virtual {p0, v6}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 210
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "plainText":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 212
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 207
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v5

    .line 214
    :cond_4
    :goto_1
    nop

    .line 182
    .end local v4    # "item":Landroid/content/ClipData$Item;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_5
    goto/16 :goto_5

    .line 217
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "android.intent.extra.TEXT"

    const-string v5, "android.intent.extra.STREAM"

    if-eqz v1, :cond_a

    .line 218
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 219
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 220
    .local v4, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_8

    .line 224
    invoke-direct {p0, v1}, Lcom/android/nfc/BeamShareActivity;->continueShare(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_7

    return-void

    .line 226
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    goto :goto_3

    .line 227
    :cond_8
    if-eqz v4, :cond_9

    .line 229
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    .line 233
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_9
    :goto_3
    goto :goto_5

    .line 234
    :cond_a
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 235
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 238
    .local v4, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 239
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 243
    .local v6, "uri":Landroid/net/Uri;
    invoke-direct {p0, v6}, Lcom/android/nfc/BeamShareActivity;->continueShare(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_4

    .line 245
    :cond_b
    invoke-virtual {p0, v6}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 246
    .end local v6    # "uri":Landroid/net/Uri;
    goto :goto_4

    :cond_c
    goto :goto_5

    .line 247
    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 250
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/BeamShareActivity;->tryText(Ljava/lang/String;)V

    .line 259
    .end local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v4    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_e
    :goto_5
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v1, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 260
    .local v1, "myUserHandle":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_12

    .line 262
    iget-object v4, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/Uri;

    .line 263
    .local v4, "uriArray":[Landroid/net/Uri;
    const/4 v6, 0x0

    .line 264
    .local v6, "numValidUris":I
    iget-object v7, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 266
    .local v8, "uri":Landroid/net/Uri;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v9

    .line 267
    .local v9, "uid":I
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "file"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_f

    .line 268
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v12, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v13, -0x1

    invoke-virtual {v10, v12, v13, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_f

    .line 270
    invoke-virtual {p0}, Lcom/android/nfc/BeamShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v10, 0x7f0b000b

    invoke-static {v7, v10, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 272
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 273
    const-string v7, "File based Uri doesn\'t have External Storage Permission."

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const v7, 0x534e4554

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const-string v12, "37287958"

    aput-object v12, v10, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 275
    goto :goto_9

    .line 277
    :cond_f
    const-string v10, "com.android.nfc"

    invoke-virtual {p0, v10, v8, v11}, Lcom/android/nfc/BeamShareActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 278
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "numValidUris":I
    .local v10, "numValidUris":I
    :try_start_2
    aput-object v8, v4, v6
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 286
    .end local v9    # "uid":I
    nop

    .line 287
    .end local v8    # "uri":Landroid/net/Uri;
    move v6, v10

    goto :goto_6

    .line 283
    .restart local v8    # "uri":Landroid/net/Uri;
    :catch_2
    move-exception v7

    move v6, v10

    goto :goto_7

    .line 280
    :catch_3
    move-exception v7

    move v6, v10

    goto :goto_8

    .line 283
    .end local v10    # "numValidUris":I
    .restart local v6    # "numValidUris":I
    :catch_4
    move-exception v7

    .line 284
    .local v7, "e":Landroid/os/RemoteException;
    :goto_7
    const-string v9, "Remote exception accessing uid of the calling process."

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    goto :goto_9

    .line 280
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v7

    .line 281
    .local v7, "e":Ljava/lang/SecurityException;
    :goto_8
    const-string v9, "Security exception granting uri permission to NFC process."

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    nop

    .line 288
    .end local v7    # "e":Ljava/lang/SecurityException;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_10
    :goto_9
    if-eqz v6, :cond_11

    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v6, v2, :cond_11

    .line 289
    new-instance v2, Landroid/nfc/BeamShareData;

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .local v2, "shareData":Landroid/nfc/BeamShareData;
    goto :goto_a

    .line 292
    .end local v2    # "shareData":Landroid/nfc/BeamShareData;
    :cond_11
    new-instance v2, Landroid/nfc/BeamShareData;

    invoke-direct {v2, v5, v5, v1, v3}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 294
    .end local v4    # "uriArray":[Landroid/net/Uri;
    .end local v6    # "numValidUris":I
    .restart local v2    # "shareData":Landroid/nfc/BeamShareData;
    :goto_a
    goto :goto_b

    .end local v2    # "shareData":Landroid/nfc/BeamShareData;
    :cond_12
    iget-object v2, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    if-eqz v2, :cond_13

    .line 295
    new-instance v4, Landroid/nfc/BeamShareData;

    invoke-direct {v4, v2, v5, v1, v3}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    move-object v2, v4

    .restart local v2    # "shareData":Landroid/nfc/BeamShareData;
    goto :goto_b

    .line 300
    .end local v2    # "shareData":Landroid/nfc/BeamShareData;
    :cond_13
    new-instance v2, Landroid/nfc/BeamShareData;

    invoke-direct {v2, v5, v5, v1, v3}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 304
    .restart local v2    # "shareData":Landroid/nfc/BeamShareData;
    :goto_b
    sget-object v3, Lcom/android/nfc/BeamShareActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/nfc/BeamShareActivity$4;

    invoke-direct {v4, p0, v2}, Lcom/android/nfc/BeamShareActivity$4;-><init>(Lcom/android/nfc/BeamShareActivity;Landroid/nfc/BeamShareData;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    return-void

    .line 177
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v1    # "myUserHandle":Landroid/os/UserHandle;
    .end local v2    # "shareData":Landroid/nfc/BeamShareData;
    :cond_14
    :goto_c
    return-void
.end method

.method tryText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 162
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 166
    .local v0, "parsedUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/nfc/BeamShareActivity;->continueShare(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/nfc/BeamShareActivity;->tryUri(Landroid/net/Uri;)V

    .line 169
    .end local v0    # "parsedUri":Landroid/net/Uri;
    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/nfc/NdefRecord;->createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 172
    :goto_0
    return-void
.end method

.method tryUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 151
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-static {p1}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_1

    .line 154
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_1
    return-void
.end method
