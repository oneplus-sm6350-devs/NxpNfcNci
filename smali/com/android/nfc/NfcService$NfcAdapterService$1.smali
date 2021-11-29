.class Lcom/android/nfc/NfcService$NfcAdapterService$1;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$NfcAdapterService;->getCplc()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$NfcAdapterService;

.field final synthetic val$available:Ljava/util/concurrent/Semaphore;

.field final synthetic val$value:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$NfcAdapterService;Ljava/util/concurrent/Semaphore;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 1905
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterService$1;->this$1:Lcom/android/nfc/NfcService$NfcAdapterService;

    iput-object p2, p0, Lcom/android/nfc/NfcService$NfcAdapterService$1;->val$available:Ljava/util/concurrent/Semaphore;

    iput-object p3, p0, Lcom/android/nfc/NfcService$NfcAdapterService$1;->val$value:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1908
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService$1;->val$available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1909
    new-instance v0, Lcom/android/nfc/CplcUtils;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService$1;->this$1:Lcom/android/nfc/NfcService$NfcAdapterService;

    iget-object v1, v1, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/CplcUtils;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/nfc/NfcService$NfcAdapterService$1$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$NfcAdapterService$1$1;-><init>(Lcom/android/nfc/NfcService$NfcAdapterService$1;)V

    invoke-virtual {v0, v1}, Lcom/android/nfc/CplcUtils;->setCplcAttachListener(Lcom/android/nfc/CplcUtils$OnCplcAttachListener;)Lcom/android/nfc/CplcUtils;

    move-result-object v0

    .line 1915
    invoke-virtual {v0}, Lcom/android/nfc/CplcUtils;->init()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    goto :goto_0

    .line 1916
    :catch_0
    move-exception v0

    .line 1917
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NfcService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method
