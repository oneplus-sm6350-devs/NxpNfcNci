.class final Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;
.super Landroid/nfc/INfcFCardEmulation$Stub;
.source "CardEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/CardEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcFCardEmulationInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 500
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-direct {p0}, Landroid/nfc/INfcFCardEmulation$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableNfcFForegroundService()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 576
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    .line 577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 576
    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->unregisteredEnabledForegroundService(I)Z

    move-result v0

    return v0
.end method

.method public enableNfcFForegroundService(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 566
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    .line 568
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 567
    invoke-virtual {v0, p1, v1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->registerEnabledForegroundService(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0

    .line 570
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxNumOfRegisterableSystemCodes()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 592
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getLfT3tMax()I

    move-result v0

    return v0
.end method

.method public getNfcFServices(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 584
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 585
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 542
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 543
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    const/4 v0, 0x0

    return-object v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 547
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 546
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getNfcid2ForService(IILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 505
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 506
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    const/4 v0, 0x0

    return-object v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 510
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 509
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getSystemCodeForService(IILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "systemCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 518
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 519
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x0

    return v0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 523
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 522
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->registerSystemCodeForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeSystemCodeForService(ILandroid/content/ComponentName;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 530
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 531
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    const/4 v0, 0x0

    return v0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 535
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 534
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->removeSystemCodeForService(IILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "nfcid2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 554
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 555
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const/4 v0, 0x0

    return v0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 558
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->setNfcid2ForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
