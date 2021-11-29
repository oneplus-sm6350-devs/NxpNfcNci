.class public Lcom/oneplus/nfc/TerminalListProvider;
.super Ljava/lang/Object;
.source "TerminalListProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_TERMINAL_STATE_CHANGE:Ljava/lang/String; = "action.terminal_state_change"

.field private static final AVAILABLE_TERMINAL_LIST:Ljava/lang/String; = "available_terminal_list"

.field private static final DBG:Z = true

.field private static final EXTRA_NAME:Ljava/lang/String; = "name"

.field private static final EXTRA_OEM_SUPPORT:Ljava/lang/String; = "support"

.field private static final EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "SecureElementSelector"

.field private static mSingleton:Lcom/oneplus/nfc/TerminalListProvider;


# instance fields
.field private mAvailableSEList:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTerminalStateListener:Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/nfc/TerminalListProvider;->mAvailableSEList:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/oneplus/nfc/TerminalListProvider$1;

    invoke-direct {v0, p0}, Lcom/oneplus/nfc/TerminalListProvider$1;-><init>(Lcom/oneplus/nfc/TerminalListProvider;)V

    iput-object v0, p0, Lcom/oneplus/nfc/TerminalListProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    const-string v0, "SecureElementSelector"

    const-string v1, " TerminalStateObserver() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iput-object p1, p0, Lcom/oneplus/nfc/TerminalListProvider;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Lcom/oneplus/nfc/TerminalListProvider;->updateAvailableSEList()Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/oneplus/nfc/TerminalListProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/nfc/TerminalListProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action.terminal_state_change"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/nfc/TerminalListProvider;)Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/nfc/TerminalListProvider;

    .line 12
    iget-object v0, p0, Lcom/oneplus/nfc/TerminalListProvider;->mTerminalStateListener:Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;

    return-object v0
.end method

.method public static createSingleton(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/oneplus/nfc/TerminalListProvider;

    invoke-direct {v0, p0}, Lcom/oneplus/nfc/TerminalListProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/nfc/TerminalListProvider;->mSingleton:Lcom/oneplus/nfc/TerminalListProvider;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/oneplus/nfc/TerminalListProvider;
    .locals 1

    .line 36
    sget-object v0, Lcom/oneplus/nfc/TerminalListProvider;->mSingleton:Lcom/oneplus/nfc/TerminalListProvider;

    return-object v0
.end method


# virtual methods
.method public getAvailableSEList()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/oneplus/nfc/TerminalListProvider;->mAvailableSEList:Ljava/lang/String;

    return-object v0
.end method

.method public registerTerminalStateListener(Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;)V
    .locals 0
    .param p1, "stateListener"    # Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;

    .line 122
    iput-object p1, p0, Lcom/oneplus/nfc/TerminalListProvider;->mTerminalStateListener:Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;

    .line 123
    return-void
.end method

.method public unregisterTerminalStateListener()V
    .locals 1

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/nfc/TerminalListProvider;->mTerminalStateListener:Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;

    .line 127
    return-void
.end method

.method public updateAvailableSEList()Ljava/lang/String;
    .locals 8

    .line 81
    iget-object v0, p0, Lcom/oneplus/nfc/TerminalListProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "available_terminal_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "mList":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "seArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 84
    const-string v2, "HCE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    const-string v2, "eSE1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const-string v2, "Embedded SE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    const-string v2, ""

    .line 101
    .local v2, "outStr":Ljava/lang/String;
    const/4 v3, 0x1

    .line 102
    .local v3, "isFirst":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 103
    .local v5, "se":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    const/4 v3, 0x0

    .line 108
    .end local v5    # "se":Ljava/lang/String;
    goto :goto_0

    .line 109
    :cond_3
    iput-object v2, p0, Lcom/oneplus/nfc/TerminalListProvider;->mAvailableSEList:Ljava/lang/String;

    .line 110
    iget-object v4, p0, Lcom/oneplus/nfc/TerminalListProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/nfc/TerminalListProvider;->mAvailableSEList:Ljava/lang/String;

    const-string v6, "nfc_multise_list"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    iget-object v4, p0, Lcom/oneplus/nfc/TerminalListProvider;->mAvailableSEList:Ljava/lang/String;

    return-object v4
.end method
