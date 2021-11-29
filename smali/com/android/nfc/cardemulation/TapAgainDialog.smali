.class public Lcom/android/nfc/cardemulation/TapAgainDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "TapAgainDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "com.android.nfc.cardemulation.action.CLOSE_TAP_DIALOG"

.field public static final EXTRA_APDU_SERVICE:Ljava/lang/String; = "apdu_service"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"


# instance fields
.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mClosedOnRequest:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    .line 47
    new-instance v0, Lcom/android/nfc/cardemulation/TapAgainDialog$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/TapAgainDialog$1;-><init>(Lcom/android/nfc/cardemulation/TapAgainDialog;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/cardemulation/TapAgainDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/cardemulation/TapAgainDialog;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    return p1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 114
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->finish()V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x10302d2

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->setTheme(I)V

    .line 61
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 62
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 63
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "category"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "category":Ljava/lang/String;
    const-string v3, "apdu_service"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 66
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.nfc.cardemulation.action.CLOSE_TAP_DIALOG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v5, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v4}, Lcom/android/nfc/cardemulation/TapAgainDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    iget-object v5, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 71
    .local v5, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f09000a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 75
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x7f070023

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 76
    .local v7, "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "description":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 78
    invoke-virtual {v3, v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 79
    .local v9, "label":Ljava/lang/CharSequence;
    if-nez v9, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->finish()V

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    .end local v9    # "label":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    const-string v9, "payment"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    .line 86
    const v9, 0x7f0b0027

    invoke-virtual {p0, v9}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, "formatString":Ljava/lang/String;
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v10

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .end local v9    # "formatString":Ljava/lang/String;
    goto :goto_1

    .line 89
    :cond_2
    const v9, 0x7f0b0026

    invoke-virtual {p0, v9}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 90
    .restart local v9    # "formatString":Ljava/lang/String;
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v10

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .end local v9    # "formatString":Ljava/lang/String;
    :goto_1
    const/high16 v9, 0x1040000

    invoke-virtual {p0, v9}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->setupAlert()V

    .line 94
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 95
    .local v9, "window":Landroid/view/Window;
    const/high16 v10, 0x400000

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 101
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 107
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->setDefaultForNextTap(Landroid/content/ComponentName;)Z

    .line 110
    :cond_0
    return-void
.end method
