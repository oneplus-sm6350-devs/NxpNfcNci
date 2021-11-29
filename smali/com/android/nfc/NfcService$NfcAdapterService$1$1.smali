.class Lcom/android/nfc/NfcService$NfcAdapterService$1$1;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/CplcUtils$OnCplcAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$NfcAdapterService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/nfc/NfcService$NfcAdapterService$1;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$NfcAdapterService$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/nfc/NfcService$NfcAdapterService$1;

    .line 1909
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterService$1$1;->this$2:Lcom/android/nfc/NfcService$NfcAdapterService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCplcAttached(Ljava/lang/String;)V
    .locals 1
    .param p1, "cplc"    # Ljava/lang/String;

    .line 1912
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService$1$1;->this$2:Lcom/android/nfc/NfcService$NfcAdapterService$1;

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcAdapterService$1;->val$value:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService$1$1;->this$2:Lcom/android/nfc/NfcService$NfcAdapterService$1;

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcAdapterService$1;->val$available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1914
    return-void
.end method
