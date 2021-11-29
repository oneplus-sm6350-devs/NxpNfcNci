.class Lcom/android/nfc/NfcDispatcher$MessageHandler;
.super Landroid/os/Handler;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/nfc/NfcDispatcher;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher$MessageHandler;->this$0:Lcom/android/nfc/NfcDispatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcDispatcher;Lcom/android/nfc/NfcDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/NfcDispatcher;
    .param p2, "x1"    # Lcom/android/nfc/NfcDispatcher$1;

    .line 707
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcDispatcher$MessageHandler;-><init>(Lcom/android/nfc/NfcDispatcher;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 712
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$MessageHandler;->this$0:Lcom/android/nfc/NfcDispatcher;

    invoke-static {v0}, Lcom/android/nfc/NfcDispatcher;->access$100(Lcom/android/nfc/NfcDispatcher;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 716
    nop

    .line 720
    :goto_1
    return-void
.end method
