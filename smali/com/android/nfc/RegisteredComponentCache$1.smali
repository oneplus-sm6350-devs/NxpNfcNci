.class Lcom/android/nfc/RegisteredComponentCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredComponentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/RegisteredComponentCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/RegisteredComponentCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/RegisteredComponentCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/RegisteredComponentCache;

    .line 63
    iput-object p1, p0, Lcom/android/nfc/RegisteredComponentCache$1;->this$0:Lcom/android/nfc/RegisteredComponentCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 68
    new-instance v0, Lcom/android/nfc/RegisteredComponentCache$1$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/RegisteredComponentCache$1$1;-><init>(Lcom/android/nfc/RegisteredComponentCache$1;)V

    .line 73
    .local v0, "mThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method
