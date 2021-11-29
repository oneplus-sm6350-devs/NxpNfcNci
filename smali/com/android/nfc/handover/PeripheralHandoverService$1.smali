.class Lcom/android/nfc/handover/PeripheralHandoverService$1;
.super Landroid/content/BroadcastReceiver;
.source "PeripheralHandoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/PeripheralHandoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/PeripheralHandoverService;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/handover/PeripheralHandoverService;

    .line 91
    iput-object p1, p0, Lcom/android/nfc/handover/PeripheralHandoverService$1;->this$0:Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService$1;->this$0:Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-static {v1, p2}, Lcom/android/nfc/handover/PeripheralHandoverService;->access$000(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/content/Intent;)V

    .line 98
    :cond_0
    return-void
.end method
