.class Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;
.super Ljava/lang/Object;
.source "SecureElementSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/nfc/SecureElementSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserverUtil"
.end annotation


# instance fields
.field private final mObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/oneplus/nfc/SecureElementSelector;


# direct methods
.method public constructor <init>(Lcom/oneplus/nfc/SecureElementSelector;)V
    .locals 1

    .line 216
    iput-object p1, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance p1, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil$1;-><init>(Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->mObserver:Landroid/database/ContentObserver;

    .line 217
    return-void
.end method


# virtual methods
.method public register()V
    .locals 4

    .line 221
    const-string v0, "SecureElementSelector"

    const-string v1, " MyContentObserverUtil register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v0}, Lcom/oneplus/nfc/SecureElementSelector;->access$300(Lcom/oneplus/nfc/SecureElementSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    const-string v1, "nfc_multise_active"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->mObserver:Landroid/database/ContentObserver;

    .line 223
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 225
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 229
    const-string v0, "SecureElementSelector"

    const-string v1, " MyContentObserverUtil unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v0}, Lcom/oneplus/nfc/SecureElementSelector;->access$300(Lcom/oneplus/nfc/SecureElementSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    return-void
.end method
