.class Lcom/android/nfc/P2pLinkManager$3;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Lcom/android/nfc/snep/SnepServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/P2pLinkManager;

    .line 1027
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 2
    .param p1, "acceptableLength"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, "response":Landroid/nfc/NdefMessage;
    sget-boolean v1, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v1, :cond_0

    .line 1046
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v1, v1, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1, p2}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1047
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v1, v1, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1, p2}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v1

    iget-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    goto :goto_0

    .line 1050
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v1, v1, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1, p2}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v1

    iget-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    .line 1052
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1053
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager;->onReceiveHandover()V

    .line 1054
    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getSuccessResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    return-object v1

    .line 1056
    :cond_2
    const/16 v1, -0x20

    invoke-static {v1}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    return-object v1
.end method

.method public doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .line 1030
    sget-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v0, :cond_0

    .line 1031
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "DTA mode enabled, dont dispatch the tag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/P2pLinkManager;->onReceiveComplete(Landroid/nfc/NdefMessage;)V

    .line 1034
    :goto_0
    const/16 v0, -0x7f

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    return-object v0
.end method
