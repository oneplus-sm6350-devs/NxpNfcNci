.class Lcom/android/nfc/beam/SendUi$1;
.super Landroid/content/BroadcastReceiver;
.source "SendUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/SendUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/beam/SendUi;


# direct methods
.method constructor <init>(Lcom/android/nfc/beam/SendUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/beam/SendUi;

    .line 898
    iput-object p1, p0, Lcom/android/nfc/beam/SendUi$1;->this$0:Lcom/android/nfc/beam/SendUi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 901
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$1;->this$0:Lcom/android/nfc/beam/SendUi;

    iget-object v0, v0, Lcom/android/nfc/beam/SendUi;->mCallback:Lcom/android/nfc/beam/SendUi$Callback;

    invoke-interface {v0}, Lcom/android/nfc/beam/SendUi$Callback;->onCanceled()V

    .line 904
    :cond_0
    return-void
.end method
