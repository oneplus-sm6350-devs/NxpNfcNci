.class Lcom/android/nfc/NfcService$TagRemoveTaskTimer;
.super Ljava/util/TimerTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagRemoveTaskTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 4175
    iput-object p1, p0, Lcom/android/nfc/NfcService$TagRemoveTaskTimer;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4179
    .local v0, "swpReaderTagRemoveIntent":Landroid/content/Intent;
    const-string v1, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_REMOVE_CARD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4181
    const-string v1, "NfcService"

    const-string v2, "SWP READER - Tag Remove"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagRemoveTaskTimer;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4184
    return-void
.end method
