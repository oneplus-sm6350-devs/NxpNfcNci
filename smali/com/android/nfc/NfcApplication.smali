.class public Lcom/android/nfc/NfcApplication;
.super Landroid/app/Application;
.source "NfcApplication.java"


# static fields
.field static final NFC_PROCESS:Ljava/lang/String; = "com.android.nfc"

.field static final TAG:Ljava/lang/String; = "NfcApplication"


# instance fields
.field mNfcService:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 8

    .line 43
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 44
    invoke-virtual {p0}, Lcom/android/nfc/NfcApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 45
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.nfc.any"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    return-void

    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 55
    .local v1, "isMainProcess":Z
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 56
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 57
    .local v3, "processes":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 58
    .local v4, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 60
    .local v5, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 61
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v7, "com.android.nfc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 62
    goto :goto_1

    .line 64
    .end local v5    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_0

    .line 65
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    .line 66
    new-instance v5, Lcom/android/nfc/NfcService;

    invoke-direct {v5, p0}, Lcom/android/nfc/NfcService;-><init>(Landroid/app/Application;)V

    iput-object v5, p0, Lcom/android/nfc/NfcApplication;->mNfcService:Lcom/android/nfc/NfcService;

    .line 67
    invoke-static {}, Landroid/view/ThreadedRenderer;->enableForegroundTrimming()V

    .line 69
    :cond_3
    return-void
.end method
