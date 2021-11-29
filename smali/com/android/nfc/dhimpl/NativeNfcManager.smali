.class public Lcom/android/nfc/dhimpl/NativeNfcManager;
.super Ljava/lang/Object;
.source "NativeNfcManager.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost;


# static fields
.field static final DEFAULT_LLCP_MIU:I = 0x7bc

.field static final DEFAULT_LLCP_RWSIZE:I = 0x2

.field static final DRIVER_NAME:Ljava/lang/String; = "android-nci"

.field static final MODE_DEDICATED:I = 0x1

.field static final MODE_NORMAL:I = 0x0

.field static final PREF:Ljava/lang/String; = "NciDeviceHost"

.field private static final TAG:Ljava/lang/String; = "NativeNfcManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsoDepMaxTransceiveLength:I

.field private final mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

.field private final mLock:Ljava/lang/Object;

.field private final mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

.field private mNative:J

.field private final mT3tIdentifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-string v0, "nxpnfc_nci_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    .line 81
    iput-object p2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 82
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->initializeNativeStructure()Z

    .line 83
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-direct {v0}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    .line 85
    return-void
.end method

.method private native doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;
.end method

.method private native doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;
.end method

.method private native doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;
.end method

.method private native doDeinitialize()Z
.end method

.method private native doDisableDtaMode()V
.end method

.method private native doDisableScreenOffSuspend()V
.end method

.method private native doDownload()Z
.end method

.method private native doDump(Ljava/io/FileDescriptor;)V
.end method

.method private native doEnableDiscovery(IZZZZZ)V
.end method

.method private native doEnableDtaMode()V
.end method

.method private native doEnableScreenOffSuspend()V
.end method

.method private native doFactoryReset()V
.end method

.method private native doGetTimeout(I)I
.end method

.method private native doInitialize()Z
.end method

.method private native doResetTimeouts()V
.end method

.method private native doSetNfcSecure(Z)Z
.end method

.method private native doSetP2pInitiatorModes(I)V
.end method

.method private native doSetP2pTargetModes(I)V
.end method

.method private native doSetTimeout(II)Z
.end method

.method private native doShutdown()V
.end method

.method private native getIsoDepMaxTransceiveLength()I
.end method

.method private notifyETSIReaderRequested(ZZ)V
    .locals 1
    .param p1, "istechA"    # Z
    .param p2, "istechB"    # Z

    .line 583
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onETSIReaderRequestedEvent(ZZ)V

    .line 584
    return-void
.end method

.method private notifyETSIReaderRequestedFail(I)V
    .locals 1
    .param p1, "FailureCause"    # I

    .line 587
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onETSIReaderRequestedFail(I)V

    .line 588
    return-void
.end method

.method private notifyHostEmuActivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 599
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationActivated(I)V

    .line 600
    return-void
.end method

.method private notifyHostEmuData(I[B)V
    .locals 1
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .line 611
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationData(I[B)V

    .line 612
    return-void
.end method

.method private notifyHostEmuDeactivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 615
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationDeactivated(I)V

    .line 616
    return-void
.end method

.method private notifyLlcpLinkActivation(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .line 564
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 565
    return-void
.end method

.method private notifyLlcpLinkDeactivated(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .line 571
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 572
    return-void
.end method

.method private notifyLlcpLinkFirstPacketReceived(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .line 578
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 579
    return-void
.end method

.method private notifyNdefMessageListeners(Lcom/android/nfc/dhimpl/NativeNfcTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .line 547
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 548
    return-void
.end method

.method private notifyRfFieldActivated()V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 620
    return-void
.end method

.method private notifyRfFieldDeactivated()V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 624
    return-void
.end method

.method private notifySeInitialized()V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeInitialized()V

    .line 559
    return-void
.end method

.method private notifySeListenActivated()V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeListenActivated()V

    .line 551
    return-void
.end method

.method private notifySeListenDeactivated()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeListenDeactivated()V

    .line 555
    return-void
.end method

.method private notifyTransactionListeners([B[BLjava/lang/String;)V
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "evtSrc"    # Ljava/lang/String;

    .line 627
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onNfcTransactionEvent([B[BLjava/lang/String;)V

    .line 628
    return-void
.end method

.method private notifyonETSIReaderModeRestart()V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onETSIReaderModeRestart()V

    .line 608
    return-void
.end method

.method private notifyonETSIReaderModeStartConfig(I)V
    .locals 1
    .param p1, "eeHandle"    # I

    .line 591
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onETSIReaderModeStartConfig(I)V

    .line 592
    return-void
.end method

.method private notifyonETSIReaderModeStopConfig(I)V
    .locals 1
    .param p1, "disc_ntf_timeout"    # I

    .line 595
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onETSIReaderModeStopConfig(I)V

    .line 596
    return-void
.end method

.method private notifyonETSIReaderModeSwpTimeout(I)V
    .locals 1
    .param p1, "disc_ntf_timeout"    # I

    .line 603
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onETSIReaderModeSwpTimeout(I)V

    .line 604
    return-void
.end method


# virtual methods
.method public accessControlForCOSU(I)Z
    .locals 2
    .param p1, "mode"    # I

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "stat":Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doPartialInitForEseCosUpdate()Z

    move-result v0

    goto :goto_0

    .line 113
    :cond_0
    if-nez p1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doPartialDeinitForEseCosUpdate()Z

    move-result v0

    .line 116
    :cond_1
    :goto_0
    return v0
.end method

.method public canMakeReadOnly(I)Z
    .locals 2
    .param p1, "ndefType"    # I

    .line 460
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public checkFirmware()Z
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDownload()Z

    move-result v0

    return v0
.end method

.method public clearRoutingEntry(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doClearRoutingEntry(I)Z

    move-result v0

    return v0
.end method

.method public clearT3tIdentifiersCache()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 276
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public native commitRouting()Z
.end method

.method public createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 4
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    move-result-object v0

    .line 363
    .local v0, "socket":Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    if-eqz v0, :cond_0

    .line 364
    return-object v0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v1

    .line 369
    .local v1, "error":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create llcp socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NativeNfcManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/16 v2, -0xc

    if-eq v1, v2, :cond_1

    const/16 v2, -0x9

    if-eq v1, v2, :cond_1

    .line 376
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 374
    :cond_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v1}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 4
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 386
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;

    move-result-object v0

    .line 387
    .local v0, "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    if-eqz v0, :cond_0

    .line 388
    return-object v0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v1

    .line 393
    .local v1, "error":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create llcp socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NativeNfcManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/16 v2, -0xc

    if-eq v1, v2, :cond_1

    const/16 v2, -0x9

    if-eq v1, v2, :cond_1

    .line 400
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 398
    :cond_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v1}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 4
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 410
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;

    move-result-object v0

    .line 411
    .local v0, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v0, :cond_0

    .line 412
    return-object v0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v1

    .line 417
    .local v1, "error":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create llcp socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NativeNfcManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/16 v2, -0xc

    if-eq v1, v2, :cond_1

    const/16 v2, -0x9

    if-eq v1, v2, :cond_1

    .line 424
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 422
    :cond_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v1}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2
.end method

.method public deinitialize()Z
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeinitialize()Z

    move-result v0

    return v0
.end method

.method public deregisterT3tIdentifier([B)V
    .locals 6
    .param p1, "t3tIdentifier"    # [B

    .line 258
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 260
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 262
    .local v2, "handle":I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 263
    .local v3, "value":[B
    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    invoke-virtual {p0, v2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeregisterT3tIdentifier(I)V

    .line 265
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    goto :goto_1

    .line 268
    .end local v2    # "handle":I
    .end local v3    # "value":[B
    :cond_0
    goto :goto_0

    .line 269
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public native disableDiscovery()V
.end method

.method public disableDtaMode()V
    .locals 2

    .line 141
    const-string v0, "NativeNfcManager"

    const-string v1, "disableDtaMode : entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDisableDtaMode()V

    .line 143
    return-void
.end method

.method public disableScreenOffSuspend()Z
    .locals 1

    .line 533
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDisableScreenOffSuspend()V

    .line 534
    const/4 v0, 0x1

    return v0
.end method

.method public native doAbort(Ljava/lang/String;)V
.end method

.method public native doActivateLlcp()Z
.end method

.method public native doChangeDiscoveryTech(II)V
.end method

.method public native doCheckLlcp()Z
.end method

.method public native doClearRoutingEntry(I)Z
.end method

.method public native doDeregisterT3tIdentifier(I)V
.end method

.method public native doGetActiveSecureElementList()[I
.end method

.method public native doGetDieId()[B
.end method

.method public native doGetLastError()I
.end method

.method public native doGetSelectedUicc()I
.end method

.method public native doPartialDeinitForEseCosUpdate()Z
.end method

.method public native doPartialInitForEseCosUpdate()Z
.end method

.method public native doRegisterT3tIdentifier([B)I
.end method

.method public native doSetEseListenTechMask(II)Z
.end method

.method public native doSetRoutingEntry(IIII)Z
.end method

.method public native doSetScreenState(I)V
.end method

.method public native doselectUicc(I)I
.end method

.method public dump(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 520
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDump(Ljava/io/FileDescriptor;)V

    .line 521
    return-void
.end method

.method public enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .locals 7
    .param p1, "params"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p2, "restart"    # Z

    .line 296
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->getTechMask()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableLowPowerDiscovery()Z

    move-result v2

    .line 297
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableReaderMode()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableHostRouting()Z

    move-result v4

    .line 298
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableP2p()Z

    move-result v5

    .line 296
    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDiscovery(IZZZZZ)V

    .line 299
    return-void
.end method

.method public enableDtaMode()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDtaMode()V

    .line 135
    return-void
.end method

.method public enableScreenOffSuspend()Z
    .locals 1

    .line 526
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableScreenOffSuspend()V

    .line 527
    const/4 v0, 0x1

    return v0
.end method

.method public etsiInitConfig()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doEtsiInitConfig()V

    .line 329
    return-void
.end method

.method public etsiReaderConfig(I)V
    .locals 1
    .param p1, "eeHandle"    # I

    .line 318
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doEtsiReaderConfig(I)V

    .line 319
    return-void
.end method

.method public etsiResetReaderConfig()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doEtsiResetReaderConfig()V

    .line 334
    return-void
.end method

.method public factoryReset()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doFactoryReset()V

    .line 150
    return-void
.end method

.method public native getAidTableSize()I
.end method

.method public native getDefaultAidPowerState()I
.end method

.method public native getDefaultAidRoute()I
.end method

.method public native getDefaultDesfirePowerState()I
.end method

.method public native getDefaultDesfireRoute()I
.end method

.method public native getDefaultFelicaCLTPowerState()I
.end method

.method public native getDefaultFelicaCLTRoute()I
.end method

.method public getDefaultLlcpMiu()I
    .locals 1

    .line 509
    const/16 v0, 0x7bc

    return v0
.end method

.method public getDefaultLlcpRwSize()I
    .locals 1

    .line 514
    const/4 v0, 0x2

    return v0
.end method

.method public native getDefaultMifareCLTPowerState()I
.end method

.method public native getDefaultMifareCLTRoute()I
.end method

.method public getDieId()[B
    .locals 3

    .line 656
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetDieId()[B

    move-result-object v0

    .line 657
    .local v0, "buff":[B
    if-nez v0, :cond_0

    .line 660
    const/4 v1, 0x0

    new-array v0, v1, [B

    .line 661
    const-string v1, "NativeNfcManager"

    const-string v2, "get die id failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    return-object v0
.end method

.method public getEtsiReaederState()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doGetEtsiReaederState()I

    move-result v0

    .line 313
    .local v0, "state":I
    return v0
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 2

    .line 502
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->getMaxTransceiveLength(I)I

    move-result v0

    const/16 v1, 0x105

    if-le v0, v1, :cond_0

    .line 503
    const/4 v0, 0x1

    return v0

    .line 504
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public native getFWVersion()I
.end method

.method public native getGsmaPwrState()I
.end method

.method public native getLfT3tMax()I
.end method

.method public getMaxTransceiveLength(I)I
    .locals 2
    .param p1, "technology"    # I

    .line 465
    const/4 v0, 0x1

    const/16 v1, 0xfd

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    .line 482
    const/4 v0, 0x0

    return v0

    .line 476
    :cond_0
    return v1

    .line 480
    :cond_1
    const/16 v0, 0xff

    return v0

    .line 478
    :cond_2
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsoDepMaxTransceiveLength:I

    return v0

    .line 474
    :cond_3
    return v1

    .line 469
    :cond_4
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 168
    const-string v0, "android-nci"

    return-object v0
.end method

.method public native getNciVersion()I
.end method

.method public native getRemainingAidTableSize()I
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "tech"    # I

    .line 454
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetTimeout(I)I

    move-result v0

    return v0
.end method

.method public initialize()Z
    .locals 2

    .line 125
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doInitialize()Z

    move-result v0

    .line 126
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->getIsoDepMaxTransceiveLength()I

    move-result v1

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsoDepMaxTransceiveLength:I

    .line 127
    return v0
.end method

.method public native initializeNativeStructure()Z
.end method

.method public native isNfccBusy()Z
.end method

.method public mposGetReaderMode()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doMposGetReaderMode()Z

    move-result v0

    return v0
.end method

.method public mposSetReaderMode(Z)I
    .locals 1
    .param p1, "on"    # Z

    .line 348
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doMposSetReaderMode(Z)I

    move-result v0

    return v0
.end method

.method public notifyEEReaderEvent(I)V
    .locals 1
    .param p1, "evt"    # I

    .line 323
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doNotifyEEReaderEvent(I)V

    .line 324
    return-void
.end method

.method public native readerPassThruMode(BB)[B
.end method

.method public registerT3tIdentifier([B)V
    .locals 4
    .param p1, "t3tIdentifier"    # [B

    .line 246
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doRegisterT3tIdentifier([B)I

    move-result v1

    .line 248
    .local v1, "handle":I
    const v2, 0xffff

    if-eq v1, v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v1    # "handle":I
    :cond_0
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetTimeouts()V
    .locals 0

    .line 439
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doResetTimeouts()V

    .line 440
    return-void
.end method

.method public native routeAid([BIII)Z
.end method

.method public native routeApduPattern(II[B[B)Z
.end method

.method public native sendRawFrame([B)Z
.end method

.method public native setEmptyAidRoute(I)V
.end method

.method public setEtsiReaederState(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 306
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doSetEtsiReaederState(I)V

    .line 307
    return-void
.end method

.method public setNfcSecure(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .line 540
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetNfcSecure(Z)Z

    move-result v0

    return v0
.end method

.method public setP2pInitiatorModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .line 490
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pInitiatorModes(I)V

    .line 491
    return-void
.end method

.method public setP2pTargetModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .line 496
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pTargetModes(I)V

    .line 497
    return-void
.end method

.method public native setPreferredSimSlot(I)I
.end method

.method public setRoutingEntry(IIII)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # I
    .param p3, "route"    # I
    .param p4, "power"    # I

    .line 184
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetRoutingEntry(IIII)Z

    move-result v0

    return v0
.end method

.method public setTimeout(II)Z
    .locals 1
    .param p1, "tech"    # I
    .param p2, "timeout"    # I

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetTimeout(II)Z

    move-result v0

    return v0
.end method

.method public native setTransitConfig(Ljava/lang/String;)I
.end method

.method public shutdown()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doShutdown()V

    .line 157
    return-void
.end method

.method public startPoll()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doStartPoll()V

    .line 344
    return-void
.end method

.method public stopPoll(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 338
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doStopPoll(I)V

    .line 339
    return-void
.end method

.method public native transceiveAppData([B)[B
.end method

.method public native unrouteAid([B)Z
.end method

.method public native unrouteApduPattern([B)Z
.end method
