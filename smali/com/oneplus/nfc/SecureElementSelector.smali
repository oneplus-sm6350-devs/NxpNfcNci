.class public Lcom/oneplus/nfc/SecureElementSelector;
.super Ljava/lang/Object;
.source "SecureElementSelector.java"

# interfaces
.implements Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;,
        Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;,
        Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;
    }
.end annotation


# static fields
.field private static final ACTIVE_SE_UICC:I = 0x1

.field private static final ACTIVE_SE_UICC2:I = 0x2

.field private static final AVAILABLE_TERMINAL_LIST:Ljava/lang/String; = "available_terminal_list"

.field private static final DBG:Z = true

.field private static final MSG_SE_ESE_SELECT:I = 0x4

.field private static final MSG_SE_HCE_SELECT:I = 0x1

.field private static final MSG_SWP_SIM1_SELECT:I = 0x2

.field private static final MSG_SWP_SIM2_SELECT:I = 0x3

.field private static final MSG_SWP_SIM_TIMEOUT:I = 0x5

.field public static final NFC_MULTISE_ACTIVE:Ljava/lang/String; = "nfc_multise_active"

.field public static final NFC_MULTISE_ACTIVE_BYUSER:Ljava/lang/String; = "nfc_multise_active_by_user"

.field public static final NFC_MULTISE_ACTIVE_BY_USER:I = 0x1

.field public static final NFC_MULTISE_ACTIVE_DEFAULT:I = 0x0

.field public static final NFC_MULTISE_LIST:Ljava/lang/String; = "nfc_multise_list"

.field public static final NFC_MULTISE_PRE_ACTIVE:Ljava/lang/String; = "nfc_multise_pre_active"

.field private static final ROUTE_ID_HOST:I = 0x0

.field private static final ROUTE_ID_SMX:I = 0x1

.field private static final ROUTE_ID_UICC:I = 0x2

.field private static final ROUTE_ID_UICC2:I = 0x3

.field public static SETTINGS_STR_DEFAULT:Ljava/lang/String; = null

.field public static final SETTING_STR_ESE:Ljava/lang/String; = "Embedded SE"

.field public static final SETTING_STR_HCE:Ljava/lang/String; = "HCE"

.field public static final SETTING_STR_SIM1:Ljava/lang/String; = "SIM1"

.field public static final SETTING_STR_SIM2:Ljava/lang/String; = "SIM2"

.field private static final TAG:Ljava/lang/String; = "SecureElementSelector"


# instance fields
.field private isSwpUiccRetry:Z

.field private mContentObserverUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

.field private mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastActiveSe:Ljava/lang/String;

.field private mNativeNfcManager:Lcom/android/nfc/dhimpl/NativeNfcManager;

.field private mSeSelectorInit:Z

.field private mSecureElementCallBackListener:Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;

.field private mSyncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "HCE"

    sput-object v0, Lcom/oneplus/nfc/SecureElementSelector;->SETTINGS_STR_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/dhimpl/NativeNfcManager;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeNfcManager"    # Lcom/android/nfc/dhimpl/NativeNfcManager;
    .param p3, "syncLock"    # Ljava/lang/Object;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->isSwpUiccRetry:Z

    .line 54
    iput-boolean v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mSeSelectorInit:Z

    .line 79
    new-instance v0, Lcom/oneplus/nfc/SecureElementSelector$1;

    invoke-direct {v0, p0}, Lcom/oneplus/nfc/SecureElementSelector$1;-><init>(Lcom/oneplus/nfc/SecureElementSelector;)V

    iput-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mHandler:Landroid/os/Handler;

    .line 118
    iput-object p1, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/oneplus/nfc/SecureElementSelector;->mNativeNfcManager:Lcom/android/nfc/dhimpl/NativeNfcManager;

    .line 120
    iput-object p3, p0, Lcom/oneplus/nfc/SecureElementSelector;->mSyncLock:Ljava/lang/Object;

    .line 121
    invoke-direct {p0}, Lcom/oneplus/nfc/SecureElementSelector;->initDefaultSE()V

    .line 122
    invoke-static {p1}, Lcom/oneplus/nfc/TerminalListProvider;->createSingleton(Landroid/content/Context;)V

    .line 123
    new-instance v0, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    invoke-direct {v0, p0}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;-><init>(Lcom/oneplus/nfc/SecureElementSelector;)V

    iput-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    .line 124
    new-instance v0, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    invoke-direct {v0, p0}, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;-><init>(Lcom/oneplus/nfc/SecureElementSelector;)V

    iput-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentObserverUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/nfc/SecureElementSelector;

    .line 14
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/nfc/SecureElementSelector;)Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/nfc/SecureElementSelector;

    .line 14
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mSecureElementCallBackListener:Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/nfc/SecureElementSelector;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/nfc/SecureElementSelector;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/oneplus/nfc/SecureElementSelector;->seRouteStringToId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/nfc/SecureElementSelector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/nfc/SecureElementSelector;

    .line 14
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/nfc/SecureElementSelector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/nfc/SecureElementSelector;

    .line 14
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mLastActiveSe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/nfc/SecureElementSelector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/nfc/SecureElementSelector;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/oneplus/nfc/SecureElementSelector;->mLastActiveSe:Ljava/lang/String;

    return-object p1
.end method

.method private initDefaultSE()V
    .locals 2

    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "Embedded SE"

    sput-object v0, Lcom/oneplus/nfc/SecureElementSelector;->SETTINGS_STR_DEFAULT:Ljava/lang/String;

    .line 131
    :cond_0
    return-void
.end method

.method private initSecurityElementContent()V
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    invoke-virtual {v0}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->getActiveSeString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    sget-object v1, Lcom/oneplus/nfc/SecureElementSelector;->SETTINGS_STR_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setActiveSeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    sget-object v1, Lcom/oneplus/nfc/SecureElementSelector;->SETTINGS_STR_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setPreActiveSeString(Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-static {}, Lcom/oneplus/nfc/TerminalListProvider;->getInstance()Lcom/oneplus/nfc/TerminalListProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/nfc/TerminalListProvider;->updateAvailableSEList()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "seList":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    invoke-virtual {v1, v0}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setAvailableSeList(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    invoke-virtual {v1}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->getActiveSeChangeByUser()I

    move-result v1

    .line 177
    .local v1, "selectBydefault":I
    iget-object v2, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    invoke-virtual {v2}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->getActiveSeString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "candidateSE":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 179
    const-string v3, "SIM1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    const-string v2, "SIM1"

    goto :goto_0

    .line 181
    :cond_1
    const-string v3, "SIM2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    const-string v2, "SIM2"

    goto :goto_0

    .line 184
    :cond_2
    sget-object v2, Lcom/oneplus/nfc/SecureElementSelector;->SETTINGS_STR_DEFAULT:Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 188
    iget-object v3, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    invoke-virtual {v3}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->getPreActiveSeString()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 190
    sget-object v2, Lcom/oneplus/nfc/SecureElementSelector;->SETTINGS_STR_DEFAULT:Ljava/lang/String;

    .line 194
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    invoke-virtual {v3}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->getActiveSeString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/nfc/SecureElementSelector;->mLastActiveSe:Ljava/lang/String;

    .line 195
    iget-object v3, p0, Lcom/oneplus/nfc/SecureElementSelector;->mLastActiveSe:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 197
    :cond_5
    iget-object v3, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    sget-object v4, Lcom/oneplus/nfc/SecureElementSelector;->SETTINGS_STR_DEFAULT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setPreActiveSeString(Ljava/lang/String;)V

    .line 199
    :cond_6
    iget-object v3, p0, Lcom/oneplus/nfc/SecureElementSelector;->mLastActiveSe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 200
    iget-object v3, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    iget-object v4, p0, Lcom/oneplus/nfc/SecureElementSelector;->mLastActiveSe:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setPreActiveSeString(Ljava/lang/String;)V

    .line 204
    :cond_7
    iget-object v3, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentProviderUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;

    invoke-virtual {v3, v2}, Lcom/oneplus/nfc/SecureElementSelector$MyContentProviderUtil;->setActiveSeString(Ljava/lang/String;)V

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "candidate SE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", last active SE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/nfc/SecureElementSelector;->mLastActiveSe:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecureElementSelector"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-object v2, p0, Lcom/oneplus/nfc/SecureElementSelector;->mLastActiveSe:Ljava/lang/String;

    .line 210
    iget-object v3, p0, Lcom/oneplus/nfc/SecureElementSelector;->mSecureElementCallBackListener:Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;

    if-eqz v3, :cond_8

    .line 211
    invoke-direct {p0, v2}, Lcom/oneplus/nfc/SecureElementSelector;->seRouteStringToId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;->onSecureElementChangeByUser(IZ)V

    .line 213
    :cond_8
    return-void
.end method

.method private seRouteIdToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "routeId"    # I

    .line 349
    const-string v0, "HCE"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 359
    return-object v0

    .line 355
    :cond_0
    const-string v0, "SIM2"

    return-object v0

    .line 353
    :cond_1
    const-string v0, "SIM1"

    return-object v0

    .line 351
    :cond_2
    const-string v0, "Embedded SE"

    return-object v0

    .line 357
    :cond_3
    return-object v0
.end method

.method private seRouteStringToId(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 364
    if-nez p1, :cond_0

    .line 365
    const/16 v0, 0xff

    return v0

    .line 368
    :cond_0
    const-string v0, "Embedded SE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    const/4 v0, 0x1

    return v0

    .line 370
    :cond_1
    const-string v0, "SIM1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    const/4 v0, 0x2

    return v0

    .line 372
    :cond_2
    const-string v0, "SIM2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    const/4 v0, 0x3

    return v0

    .line 374
    :cond_3
    const-string v0, "HCE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 375
    return v1

    .line 377
    :cond_4
    return v1
.end method


# virtual methods
.method public declared-synchronized deInit()V
    .locals 2

    monitor-enter p0

    .line 145
    :try_start_0
    const-string v0, "SecureElementSelector"

    const-string v1, "deInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mSeSelectorInit:Z

    .line 148
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentObserverUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    invoke-virtual {v0}, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->unregister()V

    .line 149
    invoke-static {}, Lcom/oneplus/nfc/TerminalListProvider;->getInstance()Lcom/oneplus/nfc/TerminalListProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/nfc/TerminalListProvider;->unregisterTerminalStateListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 144
    .end local p0    # "this":Lcom/oneplus/nfc/SecureElementSelector;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 2

    monitor-enter p0

    .line 135
    :try_start_0
    const-string v0, "SecureElementSelector"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mSeSelectorInit:Z

    .line 138
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mContentObserverUtil:Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;

    invoke-virtual {v0}, Lcom/oneplus/nfc/SecureElementSelector$MyContentObserverUtil;->register()V

    .line 139
    invoke-direct {p0}, Lcom/oneplus/nfc/SecureElementSelector;->initSecurityElementContent()V

    .line 140
    invoke-static {}, Lcom/oneplus/nfc/TerminalListProvider;->getInstance()Lcom/oneplus/nfc/TerminalListProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/nfc/TerminalListProvider;->registerTerminalStateListener(Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 134
    .end local p0    # "this":Lcom/oneplus/nfc/SecureElementSelector;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTerminalStateChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "terminal"    # Ljava/lang/String;
    .param p2, "isConnected"    # I

    .line 61
    monitor-enter p0

    .line 63
    :try_start_0
    const-string v0, "SecureElementSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTerminalStateChanged terminal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ; isConnected  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v0, "eSE1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mSeSelectorInit:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 69
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "SIM1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 71
    :cond_1
    const-string v1, "SIM2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 74
    :cond_2
    :goto_0
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 75
    iget-object v1, p0, Lcom/oneplus/nfc/SecureElementSelector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    nop

    .end local v0    # "msg":Landroid/os/Message;
    monitor-exit p0

    .line 77
    return-void

    .line 66
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerSecureElementCallBackListener(Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;)V
    .locals 0
    .param p1, "seCallbackListener"    # Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;

    .line 153
    iput-object p1, p0, Lcom/oneplus/nfc/SecureElementSelector;->mSecureElementCallBackListener:Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;

    .line 154
    return-void
.end method

.method public unregisterSecureElementCallBackListener()V
    .locals 1

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/nfc/SecureElementSelector;->mSecureElementCallBackListener:Lcom/oneplus/nfc/SecureElementSelector$SecureElementCallBackListener;

    .line 158
    return-void
.end method
