.class public interface abstract Lcom/android/nfc/DeviceHost;
.super Ljava/lang/Object;
.source "DeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;,
        Lcom/android/nfc/DeviceHost$LlcpServerSocket;,
        Lcom/android/nfc/DeviceHost$LlcpSocket;,
        Lcom/android/nfc/DeviceHost$NfcDepEndpoint;,
        Lcom/android/nfc/DeviceHost$NfceeEndpoint;,
        Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;,
        Lcom/android/nfc/DeviceHost$TagEndpoint;,
        Lcom/android/nfc/DeviceHost$DeviceHostListener;
    }
.end annotation


# virtual methods
.method public abstract accessControlForCOSU(I)Z
.end method

.method public abstract canMakeReadOnly(I)Z
.end method

.method public abstract checkFirmware()Z
.end method

.method public abstract clearRoutingEntry(I)Z
.end method

.method public abstract clearT3tIdentifiersCache()V
.end method

.method public abstract commitRouting()Z
.end method

.method public abstract createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract deinitialize()Z
.end method

.method public abstract deregisterT3tIdentifier([B)V
.end method

.method public abstract disableDiscovery()V
.end method

.method public abstract disableDtaMode()V
.end method

.method public abstract disableScreenOffSuspend()Z
.end method

.method public abstract doAbort(Ljava/lang/String;)V
.end method

.method public abstract doActivateLlcp()Z
.end method

.method public abstract doChangeDiscoveryTech(II)V
.end method

.method public abstract doCheckLlcp()Z
.end method

.method public abstract doGetActiveSecureElementList()[I
.end method

.method public abstract doGetSelectedUicc()I
.end method

.method public abstract doSetEseListenTechMask(II)Z
.end method

.method public abstract doSetScreenState(I)V
.end method

.method public abstract doselectUicc(I)I
.end method

.method public abstract dump(Ljava/io/FileDescriptor;)V
.end method

.method public abstract enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
.end method

.method public abstract enableDtaMode()V
.end method

.method public abstract enableScreenOffSuspend()Z
.end method

.method public abstract etsiInitConfig()V
.end method

.method public abstract etsiReaderConfig(I)V
.end method

.method public abstract etsiResetReaderConfig()V
.end method

.method public abstract factoryReset()V
.end method

.method public abstract getAidTableSize()I
.end method

.method public abstract getDefaultAidPowerState()I
.end method

.method public abstract getDefaultAidRoute()I
.end method

.method public abstract getDefaultDesfirePowerState()I
.end method

.method public abstract getDefaultDesfireRoute()I
.end method

.method public abstract getDefaultFelicaCLTPowerState()I
.end method

.method public abstract getDefaultFelicaCLTRoute()I
.end method

.method public abstract getDefaultLlcpMiu()I
.end method

.method public abstract getDefaultLlcpRwSize()I
.end method

.method public abstract getDefaultMifareCLTPowerState()I
.end method

.method public abstract getDefaultMifareCLTRoute()I
.end method

.method public abstract getDieId()[B
.end method

.method public abstract getEtsiReaederState()I
.end method

.method public abstract getExtendedLengthApdusSupported()Z
.end method

.method public abstract getFWVersion()I
.end method

.method public abstract getGsmaPwrState()I
.end method

.method public abstract getLfT3tMax()I
.end method

.method public abstract getMaxTransceiveLength(I)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNciVersion()I
.end method

.method public abstract getRemainingAidTableSize()I
.end method

.method public abstract getTimeout(I)I
.end method

.method public abstract initialize()Z
.end method

.method public abstract isNfccBusy()Z
.end method

.method public abstract mposGetReaderMode()Z
.end method

.method public abstract mposSetReaderMode(Z)I
.end method

.method public abstract notifyEEReaderEvent(I)V
.end method

.method public abstract readerPassThruMode(BB)[B
.end method

.method public abstract registerT3tIdentifier([B)V
.end method

.method public abstract resetTimeouts()V
.end method

.method public abstract routeAid([BIII)Z
.end method

.method public abstract routeApduPattern(II[B[B)Z
.end method

.method public abstract sendRawFrame([B)Z
.end method

.method public abstract setEmptyAidRoute(I)V
.end method

.method public abstract setEtsiReaederState(I)V
.end method

.method public abstract setNfcSecure(Z)Z
.end method

.method public abstract setP2pInitiatorModes(I)V
.end method

.method public abstract setP2pTargetModes(I)V
.end method

.method public abstract setPreferredSimSlot(I)I
.end method

.method public abstract setRoutingEntry(IIII)Z
.end method

.method public abstract setTimeout(II)Z
.end method

.method public abstract setTransitConfig(Ljava/lang/String;)I
.end method

.method public abstract shutdown()V
.end method

.method public abstract startPoll()V
.end method

.method public abstract stopPoll(I)V
.end method

.method public abstract transceiveAppData([B)[B
.end method

.method public abstract unrouteAid([B)Z
.end method

.method public abstract unrouteApduPattern([B)Z
.end method
