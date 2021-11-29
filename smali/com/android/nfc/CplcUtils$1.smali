.class Lcom/android/nfc/CplcUtils$1;
.super Ljava/lang/Object;
.source "CplcUtils.java"

# interfaces
.implements Landroid/se/omapi/SEService$OnConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/CplcUtils;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/CplcUtils;


# direct methods
.method constructor <init>(Lcom/android/nfc/CplcUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/CplcUtils;

    .line 27
    iput-object p1, p0, Lcom/android/nfc/CplcUtils$1;->this$0:Lcom/android/nfc/CplcUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/nfc/CplcUtils$1;->this$0:Lcom/android/nfc/CplcUtils;

    invoke-virtual {v0}, Lcom/android/nfc/CplcUtils;->getCplc()Ljava/lang/String;

    .line 32
    return-void
.end method
