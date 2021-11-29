.class public Lcom/android/nfc/NfcBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "NfcBackupAgent.java"


# static fields
.field static final SHARED_PREFS_BACKUP_KEY:Ljava/lang/String; = "shared_prefs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 31
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    const-string v1, "NfcServicePrefs"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 33
    .local v0, "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    const-string v1, "shared_prefs"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 34
    return-void
.end method

.method public onRestoreFinished()V
    .locals 4

    .line 38
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 40
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_2

    .line 41
    const/4 v1, 0x4

    const-string v2, "NfcServicePrefs"

    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/NfcBackupAgent;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    .local v1, "prefs":Landroid/content/SharedPreferences;
    nop

    .line 46
    invoke-static {}, Lcom/android/nfc/NfcService;->getDefaultNdefPushOn()Z

    move-result v2

    .line 43
    const-string v3, "ndef_push_on"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 53
    :goto_0
    nop

    .line 56
    invoke-static {}, Lcom/android/nfc/NfcService;->getDefaultNdefPushOn()Z

    move-result v2

    .line 53
    const-string v3, "nfc_on"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 63
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    :goto_1
    return-void
.end method
