.class public Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
.super Landroid/app/Activity;
.source "ConfirmConnectToWifiNetworkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final ENABLE_WIFI_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mEnableWifiInProgress:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 146
    new-instance v0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    iput-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 19
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getAndClearEnableWifiInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 19
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 19
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .line 19
    invoke-direct {p0, p1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method private doConnect(Landroid/net/wifi/WifiManager;)V
    .locals 2
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 101
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 102
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 104
    .local v0, "networkId":I
    if-gez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v1, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 122
    :goto_0
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->fadeFinish()V

    .line 123
    return-void
.end method

.method private fadeFinish()V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->finish()V

    .line 180
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->overridePendingTransition(II)V

    .line 181
    return-void
.end method

.method private getAndClearEnableWifiInProgress()Z
    .locals 2

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 169
    .local v0, "enableWifiInProgress":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 170
    monitor-exit p0

    .line 172
    return v0

    .line 170
    .end local v0    # "enableWifiInProgress":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isChangeWifiStateGranted()Z
    .locals 4

    .line 94
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 95
    .local v0, "appOps":Landroid/app/AppOpsManager;
    nop

    .line 96
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 95
    const/16 v2, 0x47

    const/16 v3, 0x403

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    .line 97
    .local v1, "modeChangeWifiState":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private showFailToast()V
    .locals 2

    .line 127
    const v0, 0x7f0b0024

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 68
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 70
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->isChangeWifiStateGranted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 74
    iput-boolean v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 76
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 33
    const-string v1, "com.android.nfc.WIFI_CONFIG_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iput-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 37
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 40
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "printableSsid":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 42
    const v4, 0x7f0b0029

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 44
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 46
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 47
    const/4 v3, 0x0

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 48
    const v4, 0x7f0b002b

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 51
    iput-boolean v5, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 52
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 142
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 144
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 133
    iget-boolean v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->fadeFinish()V

    .line 136
    :cond_0
    return-void
.end method
