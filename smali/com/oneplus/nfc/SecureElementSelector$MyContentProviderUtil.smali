.class Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;
.super Ljava/lang/Object;
.source "SecureElementSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/nfc/SecureElementSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentProviderUtil"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/nfc/SecureElementSelector;


# direct methods
.method public constructor <init>(Lcom/oneplus/nfc/SecureElementSelector;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    return-void
.end method


# virtual methods
.method public getActiveSeChangeByUser()I
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v0}, Lcom/oneplus/nfc/SecureElementSelector;->access$300(Lcom/oneplus/nfc/SecureElementSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active_by_user"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 291
    .local v0, "value":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveSeChangeByUser(), return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecureElementSelector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v0
.end method

.method public getActiveSeString()Ljava/lang/String;
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v0}, Lcom/oneplus/nfc/SecureElementSelector;->access$300(Lcom/oneplus/nfc/SecureElementSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "se":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveSeString(), return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecureElementSelector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-object v0
.end method

.method public getPreActiveSeString()Ljava/lang/String;
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v0}, Lcom/oneplus/nfc/SecureElementSelector;->access$300(Lcom/oneplus/nfc/SecureElementSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_pre_active"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "se":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreActiveSeString(), return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecureElementSelector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-object v0
.end method

.method public setActiveSeChangeByUser(I)V
    .locals 2
    .param p1, "value"    # I

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveSeChangeByUser(), value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureElementSelector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v0}, Lcom/oneplus/nfc/SecureElementSelector;->access$300(Lcom/oneplus/nfc/SecureElementSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active_by_user"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    return-void
.end method

.method public setActiveSeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "seStr"    # Ljava/lang/String;

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveSeString(), seStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureElementSelector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v0}, Lcom/oneplus/nfc/SecureElementSelector;->access$300(Lcom/oneplus/nfc/SecureElementSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 319
    :cond_0
    return-void
.end method

.method public setAvailableSeList(Ljava/lang/String;)V
    .locals 2
    .param p1, "seList"    # Ljava/lang/String;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAvailableSeList, outStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureElementSelector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v0}, Lcom/oneplus/nfc/SecureElementSelector;->access$300(Lcom/oneplus/nfc/SecureElementSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_list"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 344
    return-void
.end method

.method public setPreActiveSeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "seStr"    # Ljava/lang/String;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreActiveSeString(), seStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureElementSelector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->this$0:Lcom/oneplus/nfc/SecureElementSelector;

    invoke-static {v0}, Lcom/oneplus/nfc/SecureElementSelector;->access$300(Lcom/oneplus/nfc/SecureElementSelector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_pre_active"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 337
    :cond_0
    return-void
.end method
