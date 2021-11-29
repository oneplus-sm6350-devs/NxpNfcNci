.class Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmConnectToWifiNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
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

    .line 146
    iput-object p1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x0

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 152
    .local v1, "wifiState":I
    iget-object v2, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-static {v2}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$200(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-static {v2}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$000(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 157
    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 155
    invoke-static {v2, v3}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$300(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;)V

    .line 161
    .end local v1    # "wifiState":I
    :cond_0
    return-void
.end method
