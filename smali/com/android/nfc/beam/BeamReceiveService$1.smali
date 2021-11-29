.class Lcom/android/nfc/beam/BeamReceiveService$1;
.super Landroid/content/BroadcastReceiver;
.source "BeamReceiveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/BeamReceiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/beam/BeamReceiveService;


# direct methods
.method constructor <init>(Lcom/android/nfc/beam/BeamReceiveService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/beam/BeamReceiveService;

    .line 46
    iput-object p1, p0, Lcom/android/nfc/beam/BeamReceiveService$1;->this$0:Lcom/android/nfc/beam/BeamReceiveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const/high16 v1, -0x80000000

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 53
    .local v1, "state":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService$1;->this$0:Lcom/android/nfc/beam/BeamReceiveService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/nfc/beam/BeamReceiveService;->access$002(Lcom/android/nfc/beam/BeamReceiveService;Z)Z

    goto :goto_0

    .line 57
    :cond_0
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService$1;->this$0:Lcom/android/nfc/beam/BeamReceiveService;

    invoke-static {v2}, Lcom/android/nfc/beam/BeamReceiveService;->access$000(Lcom/android/nfc/beam/BeamReceiveService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-static {}, Lcom/android/nfc/beam/BeamReceiveService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bluetooth enabled, tries to send whitelist broadcast again."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService$1;->this$0:Lcom/android/nfc/beam/BeamReceiveService;

    invoke-static {v2}, Lcom/android/nfc/beam/BeamReceiveService;->access$200(Lcom/android/nfc/beam/BeamReceiveService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/nfc/beam/BeamReceiveService;->whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 63
    .end local v1    # "state":I
    :cond_1
    :goto_0
    return-void
.end method
