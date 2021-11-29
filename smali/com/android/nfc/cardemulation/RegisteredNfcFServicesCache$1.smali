.class Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredNfcFServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 128
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 131
    const/4 v0, -0x1

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 132
    .local v1, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "action":Ljava/lang/String;
    sget-boolean v3, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    const-string v4, "RegisteredNfcFServicesCache"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent action: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    if-eq v1, v0, :cond_5

    .line 135
    const/4 v0, 0x0

    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 138
    .local v0, "replaced":Z
    :goto_0
    if-nez v0, :cond_4

    .line 139
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 140
    .local v3, "currentUser":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 141
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 145
    .end local v3    # "currentUser":I
    :cond_3
    goto :goto_1

    .line 146
    :cond_4
    sget-boolean v3, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "Ignoring package intent due to package being replaced."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "replaced":Z
    :cond_5
    :goto_1
    return-void
.end method
