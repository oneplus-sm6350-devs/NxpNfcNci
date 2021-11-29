.class public Lcom/android/nfc/DtaServiceConnector;
.super Ljava/lang/Object;
.source "DtaServiceConnector.java"


# static fields
.field private static sMessageService:Ljava/lang/String;


# instance fields
.field dtaMessenger:Landroid/os/Messenger;

.field isBound:Z

.field mContext:Landroid/content/Context;

.field private myConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/DtaServiceConnector;->dtaMessenger:Landroid/os/Messenger;

    .line 54
    new-instance v0, Lcom/android/nfc/DtaServiceConnector$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/DtaServiceConnector$1;-><init>(Lcom/android/nfc/DtaServiceConnector;)V

    iput-object v0, p0, Lcom/android/nfc/DtaServiceConnector;->myConnection:Landroid/content/ServiceConnection;

    .line 43
    iput-object p1, p0, Lcom/android/nfc/DtaServiceConnector;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "implicitIntent"    # Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 83
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 88
    .local v1, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 89
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 90
    .local v4, "className":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v5, "component":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 92
    .local v6, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 93
    return-object v6

    .line 85
    .end local v1    # "serviceInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v6    # "explicitIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static setMessageService(Ljava/lang/String;)V
    .locals 0
    .param p0, "service"    # Ljava/lang/String;

    .line 97
    sput-object p0, Lcom/android/nfc/DtaServiceConnector;->sMessageService:Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 5

    .line 47
    iget-boolean v0, p0, Lcom/android/nfc/DtaServiceConnector;->isBound:Z

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/nfc/DtaServiceConnector;->sMessageService:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/DtaServiceConnector;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/nfc/DtaServiceConnector;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/DtaServiceConnector;->myConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 52
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "ndefMessage"    # Ljava/lang/String;

    .line 67
    iget-boolean v0, p0, Lcom/android/nfc/DtaServiceConnector;->isBound:Z

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 69
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "NDEF_MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/DtaServiceConnector;->dtaMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 75
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 79
    :goto_1
    return-void
.end method
