.class Lcom/oneplus/nfc/SecureElementSelector$1;
.super Landroid/os/Handler;
.source "SecureElementSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/nfc/SecureElementSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/nfc/SecureElementSelector;


# direct methods
.method constructor <init>(Lcom/oneplus/nfc/SecureElementSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/nfc/SecureElementSelector;

    .line 79
    iput-object p1, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 83
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v0}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->getActiveSeString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "activeSe":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v1}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->getPreActiveSeString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "preActiveSe":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v2}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->getActiveSeChangeByUser()I

    move-result v2

    .line 86
    .local v2, "selectBydefault":I
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "SIM1"

    goto :goto_0

    :cond_0
    const-string v3, "SIM2"

    .line 87
    .local v3, "currentSIM":Ljava/lang/String;
    :goto_0
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    .line 88
    .local v4, "targetRouteId":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage currentSIM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ; isConnected  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SecureElementSelector"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v5, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_4

    .line 91
    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    .line 92
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setPreActiveSeString(Ljava/lang/String;)V

    .line 93
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setActiveSeString(Ljava/lang/String;)V

    .line 95
    :cond_2
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 96
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setActiveSeChangeByUser(I)V

    .line 98
    :cond_3
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$100(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;

    move-result-object v5

    invoke-interface {v5, v4, v6}, Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;->onSecureElementChangeByUser(IZ)V

    goto :goto_2

    .line 100
    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 102
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setPreActiveSeString(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 105
    sget-object v1, Lcom/oneplus/nfc/SecureElementSelector;->SETTINGS_STR_DEFAULT:Ljava/lang/String;

    .line 107
    :cond_5
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setActiveSeString(Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setActiveSeChangeByUser(I)V

    .line 109
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$100(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 110
    iget-object v5, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v5}, Lcom/oneplus/nfc/SecureElementSelector;->access$100(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/nfc/SecureElementSelector$1;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v6, v1}, Lcom/oneplus/nfc/SecureElementSelector;->access$200(Lcom/oneplus/nfc/SecureElementSelector;Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6, v7}, Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;->onSecureElementChangeByUser(IZ)V

    .line 114
    :cond_6
    :goto_2
    return-void
.end method
