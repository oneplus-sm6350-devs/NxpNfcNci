.class final Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;
.super Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NxpNfcAdapterExtrasService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 2732
    iput-object p1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;-><init>()V

    return-void
.end method

.method private _getAtr()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2796
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 2797
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2800
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2801
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    const/16 v1, 0x4c0

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doGetAtr(I)[B

    move-result-object v0

    return-object v0

    .line 2798
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "NFC is not enabled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;
    throw v1

    .line 2800
    .restart local p0    # "this":Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeEeException(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 2740
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2741
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2742
    const-string v1, "m"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    return-object v0
.end method

.method private writeNoException()Landroid/os/Bundle;
    .locals 3

    .line 2734
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2735
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2736
    return-object v0
.end method


# virtual methods
.method _nfcEeReset()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2771
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 2772
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2775
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    const/16 v2, 0x4c0

    invoke-virtual {v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doReset(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2773
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "NFC adapter is disabled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;
    throw v1

    .line 2776
    .restart local p0    # "this":Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public accessControlForCOSU(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 2753
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->accessControlForCOSU(I)Z

    move-result v0

    return v0
.end method

.method public getAtr(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2785
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->_getAtr()[B

    move-result-object v0

    .line 2786
    .local v0, "out":[B
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v1

    .line 2787
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "out"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2790
    goto :goto_0

    .line 2788
    .end local v0    # "out":[B
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 2789
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 2791
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "result":Landroid/os/Bundle;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAtr result "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NfcService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    return-object v1
.end method

.method public reset(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2759
    const/4 v0, 0x0

    .line 2761
    .local v0, "stat":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->_nfcEeReset()Z

    move-result v1

    move v0, v1

    .line 2762
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2765
    .local v1, "result":Landroid/os/Bundle;
    goto :goto_0

    .line 2763
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2764
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 2766
    .local v1, "result":Landroid/os/Bundle;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    return v0
.end method
