.class Lcom/android/nfc/NfcService$ToastHandler$1;
.super Ljava/lang/Thread;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$ToastHandler;->runRunnable(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$ToastHandler;

.field final synthetic val$_runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$ToastHandler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/nfc/NfcService$ToastHandler;

    .line 4124
    iput-object p1, p0, Lcom/android/nfc/NfcService$ToastHandler$1;->this$1:Lcom/android/nfc/NfcService$ToastHandler;

    iput-object p2, p0, Lcom/android/nfc/NfcService$ToastHandler$1;->val$_runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4127
    iget-object v0, p0, Lcom/android/nfc/NfcService$ToastHandler$1;->this$1:Lcom/android/nfc/NfcService$ToastHandler;

    invoke-static {v0}, Lcom/android/nfc/NfcService$ToastHandler;->access$3500(Lcom/android/nfc/NfcService$ToastHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$ToastHandler$1;->val$_runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4128
    return-void
.end method
