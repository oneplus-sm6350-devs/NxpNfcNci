.class Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;
.super Ljava/lang/Object;
.source "ConfirmConnectToWifiNetworkActivity.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 109
    iput-object p1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 118
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-static {v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$100(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    .line 119
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    const v1, 0x7f0b0025

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    return-void
.end method
