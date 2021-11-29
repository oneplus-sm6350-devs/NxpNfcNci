.class Lcom/oneplus/nfc/TerminalListProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "TerminalListProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/nfc/TerminalListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/nfc/TerminalListProvider;


# direct methods
.method constructor <init>(Lcom/oneplus/nfc/TerminalListProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/nfc/TerminalListProvider;

    .line 43
    iput-object p1, p0, Lcom/oneplus/nfc/TerminalListProvider$1;->this$0:Lcom/oneplus/nfc/TerminalListProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SecureElementSelector"

    if-nez v0, :cond_0

    .line 48
    const-string v2, "onReceive() action == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 51
    :cond_0
    const-string v2, "action.terminal_state_change"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "terminalName":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 57
    .local v4, "isConnected":Z
    const-string v5, "support"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 58
    .local v3, "isOEMSupport":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_TERMINAL_STATE_CHANGE receiver with terminal = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", terminalState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v5, 0x1

    const-string v6, "nfc.oem_support_enable"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 61
    .local v6, "oemSupportEnable":I
    if-ne v6, v5, :cond_1

    .line 62
    if-nez v3, :cond_1

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not support"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/oneplus/nfc/TerminalListProvider$1;->this$0:Lcom/oneplus/nfc/TerminalListProvider;

    invoke-virtual {v1}, Lcom/oneplus/nfc/TerminalListProvider;->updateAvailableSEList()Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/oneplus/nfc/TerminalListProvider$1;->this$0:Lcom/oneplus/nfc/TerminalListProvider;

    invoke-static {v1}, Lcom/oneplus/nfc/TerminalListProvider;->access$000(Lcom/oneplus/nfc/TerminalListProvider;)Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/oneplus/nfc/TerminalListProvider$1;->this$0:Lcom/oneplus/nfc/TerminalListProvider;

    invoke-static {v1}, Lcom/oneplus/nfc/TerminalListProvider;->access$000(Lcom/oneplus/nfc/TerminalListProvider;)Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;

    move-result-object v1

    .line 70
    nop

    .line 69
    invoke-interface {v1, v2, v4}, Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;->onTerminalStateChanged(Ljava/lang/String;I)V

    .line 73
    .end local v2    # "terminalName":Ljava/lang/String;
    .end local v3    # "isOEMSupport":Z
    .end local v4    # "isConnected":Z
    .end local v6    # "oemSupportEnable":I
    :cond_2
    return-void
.end method
