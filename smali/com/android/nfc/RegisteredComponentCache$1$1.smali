.class Lcom/android/nfc/RegisteredComponentCache$1$1;
.super Ljava/lang/Thread;
.source "RegisteredComponentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/RegisteredComponentCache$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/RegisteredComponentCache$1;


# direct methods
.method constructor <init>(Lcom/android/nfc/RegisteredComponentCache$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/nfc/RegisteredComponentCache$1;

    .line 68
    iput-object p1, p0, Lcom/android/nfc/RegisteredComponentCache$1$1;->this$1:Lcom/android/nfc/RegisteredComponentCache$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache$1$1;->this$1:Lcom/android/nfc/RegisteredComponentCache$1;

    iget-object v0, v0, Lcom/android/nfc/RegisteredComponentCache$1;->this$0:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v0}, Lcom/android/nfc/RegisteredComponentCache;->generateComponentsList()V

    .line 71
    return-void
.end method
