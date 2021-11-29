.class Lcom/android/nfc/handover/ConfirmConnectActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/ConfirmConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/handover/ConfirmConnectActivity;

    .line 88
    iput-object p1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity$3;->this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.nfc.handover.action.TIMEOUT_CONNECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity$3;->this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-virtual {v0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->finish()V

    .line 94
    :cond_0
    return-void
.end method
