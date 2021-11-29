.class public Lcom/android/nfc/NfcService$ToastHandler;
.super Ljava/lang/Object;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToastHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;
    .param p2, "_context"    # Landroid/content/Context;

    .line 4110
    iput-object p1, p0, Lcom/android/nfc/NfcService$ToastHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4111
    iput-object p2, p0, Lcom/android/nfc/NfcService$ToastHandler;->mContext:Landroid/content/Context;

    .line 4112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService$ToastHandler;->mHandler:Landroid/os/Handler;

    .line 4113
    return-void
.end method

.method static synthetic access$3500(Lcom/android/nfc/NfcService$ToastHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService$ToastHandler;

    .line 4103
    iget-object v0, p0, Lcom/android/nfc/NfcService$ToastHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/nfc/NfcService$ToastHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService$ToastHandler;

    .line 4103
    iget-object v0, p0, Lcom/android/nfc/NfcService$ToastHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private runRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "_runnable"    # Ljava/lang/Runnable;

    .line 4123
    new-instance v0, Lcom/android/nfc/NfcService$ToastHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/nfc/NfcService$ToastHandler$1;-><init>(Lcom/android/nfc/NfcService$ToastHandler;Ljava/lang/Runnable;)V

    .line 4131
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4132
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4133
    const/4 v0, 0x0

    .line 4134
    return-void
.end method


# virtual methods
.method public showToast(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "_text"    # Ljava/lang/CharSequence;
    .param p2, "_duration"    # I

    .line 4138
    new-instance v0, Lcom/android/nfc/NfcService$ToastHandler$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/NfcService$ToastHandler$2;-><init>(Lcom/android/nfc/NfcService$ToastHandler;Ljava/lang/CharSequence;I)V

    .line 4147
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$ToastHandler;->runRunnable(Ljava/lang/Runnable;)V

    .line 4148
    return-void
.end method
