.class final Lcom/android/nfc/NfcService$NfcDtaService;
.super Landroid/nfc/INfcDta$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcDtaService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 2659
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcDta$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableClient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2714
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v0, :cond_0

    .line 2715
    return-void

    .line 2716
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2717
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->disableDtaSnepClient()V

    .line 2718
    return-void
.end method

.method public disableDta()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2670
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2671
    sget-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v0, :cond_0

    .line 2672
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDtaMode()V

    .line 2673
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    .line 2675
    :cond_0
    return-void
.end method

.method public disableServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2689
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v0, :cond_0

    .line 2690
    return-void

    .line 2691
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2692
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->disableExtDtaSnepServer()V

    .line 2693
    return-void
.end method

.method public enableClient(Ljava/lang/String;III)Z
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I
    .param p4, "testCaseId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2697
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2699
    const/4 v0, 0x0

    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 2702
    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0x14

    if-le p4, v2, :cond_1

    .line 2703
    sput-boolean v1, Lcom/android/nfc/NfcService;->sIsShortRecordLayout:Z

    .line 2704
    add-int/lit8 p4, p4, -0x14

    goto :goto_0

    .line 2706
    :cond_1
    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsShortRecordLayout:Z

    .line 2708
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "testCaseId"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/nfc/P2pLinkManager;->enableDtaSnepClient(Ljava/lang/String;III)V

    .line 2710
    return v1

    .line 2700
    :cond_2
    :goto_1
    return v0
.end method

.method public enableDta()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2661
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2662
    sget-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-nez v0, :cond_0

    .line 2663
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->enableDtaMode()V

    .line 2664
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    .line 2665
    const-string v0, "NfcService"

    const-string v1, "DTA Mode is Enabled "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    :cond_0
    return-void
.end method

.method public enableServer(Ljava/lang/String;IIII)Z
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "miu"    # I
    .param p4, "rwSize"    # I
    .param p5, "testCaseId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2679
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2681
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2684
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/nfc/P2pLinkManager;->enableExtDtaSnepServer(Ljava/lang/String;IIII)V

    .line 2685
    const/4 v0, 0x1

    return v0

    .line 2682
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerMessageService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "msgServiceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2722
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2723
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2724
    const/4 v0, 0x0

    return v0

    .line 2726
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/DtaServiceConnector;->setMessageService(Ljava/lang/String;)V

    .line 2727
    const/4 v0, 0x1

    return v0
.end method
