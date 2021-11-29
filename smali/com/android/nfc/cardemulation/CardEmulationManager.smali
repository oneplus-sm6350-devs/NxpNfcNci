.class public Lcom/android/nfc/cardemulation/CardEmulationManager;
.super Ljava/lang/Object;
.source "CardEmulationManager.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;
.implements Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;
.implements Lcom/android/nfc/cardemulation/PreferredServices$Callback;
.implements Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;,
        Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final NFC_HCE_APDU:I = 0x1

.field static final NFC_HCE_NFCF:I = 0x4

.field static final TAG:Ljava/lang/String; = "CardEmulationManager"


# instance fields
.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field final mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

.field final mContext:Landroid/content/Context;

.field final mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

.field final mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

.field final mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

.field final mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

.field final mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

.field final mPowerManager:Landroid/os/PowerManager;

.field final mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

.field final mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

.field final mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    const-string v0, "persist.nfc.ce_debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    .line 110
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    .line 111
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 112
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 113
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 114
    new-instance v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    .line 115
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 116
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 117
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/PreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 118
    new-instance v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    .line 120
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->initialize()V

    .line 121
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->initialize()V

    .line 122
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    .line 123
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/PreferredServices;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public getAllServices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 658
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 659
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "validateInstalled"    # Z

    .line 272
    const-string v0, "payment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowing defaults for category "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CardEmulationManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-object v1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 278
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    const-string v2, "nfc_payment_default_component"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 281
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 282
    .local v2, "service":Landroid/content/ComponentName;
    if-eqz p3, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    .line 285
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1

    .line 283
    :cond_3
    :goto_0
    return-object v2

    .line 288
    .end local v2    # "service":Landroid/content/ComponentName;
    :cond_4
    return-object v1
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    return-object v0
.end method

.method public getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    return-object v0
.end method

.method public getRegisteredAidCache()Lcom/android/nfc/cardemulation/RegisteredAidCache;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    return-object v0
.end method

.method public getServicesAidInfo(ILjava/lang/String;)Ljava/util/List;
    .locals 18
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/nxp/nfc/NfcAidServiceInfo;",
            ">;"
        }
    .end annotation

    .line 613
    move-object/from16 v0, p0

    const-string v1, "payment"

    move-object/from16 v2, p2

    if-ne v2, v1, :cond_0

    .line 614
    const/4 v1, 0x0

    return-object v1

    .line 616
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v1, "nonPaymentServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v3, "nfcAidServiceInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/nxp/nfc/NfcAidServiceInfo;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 619
    .local v5, "serviceAidCacheSize":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 620
    .local v6, "serviceComponent":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 621
    iget-object v7, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 622
    iget-object v7, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    const-string v8, "other"

    move/from16 v9, p1

    invoke-virtual {v7, v9, v8}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServicesForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 623
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 624
    .local v10, "serviceinfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 625
    const/4 v6, 0x0

    .line 626
    if-eqz v10, :cond_3

    .line 627
    invoke-virtual {v10}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 628
    .local v12, "aid":Ljava/lang/String;
    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 629
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    div-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x4

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    .line 631
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x4

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 633
    .end local v12    # "aid":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 634
    :cond_2
    invoke-virtual {v10}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 635
    new-instance v11, Lcom/nxp/nfc/NfcAidServiceInfo;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 636
    invoke-virtual {v10, v8}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->isServiceEnabled(Ljava/lang/String;)Z

    move-result v15

    .line 637
    invoke-virtual {v10}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getOtherAidGroupDescription()Ljava/lang/String;

    move-result-object v17

    move-object v12, v11

    move-object v13, v6

    invoke-direct/range {v12 .. v17}, Lcom/nxp/nfc/NfcAidServiceInfo;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .line 638
    .local v11, "aidServiceInfo":Lcom/nxp/nfc/NfcAidServiceInfo;
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    .end local v10    # "serviceinfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    .end local v11    # "aidServiceInfo":Lcom/nxp/nfc/NfcAidServiceInfo;
    :cond_3
    goto :goto_0

    .line 643
    :cond_4
    return-object v3
.end method

.method isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 326
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 327
    .local v0, "serviceFound":Z
    if-nez v0, :cond_1

    .line 333
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CardEmulationManager"

    const-string v2, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method isServiceRegistered(ILandroid/content/ComponentName;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 312
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 313
    .local v0, "serviceFound":Z
    if-nez v0, :cond_1

    .line 319
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CardEmulationManager"

    const-string v2, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 654
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V

    .line 655
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V

    .line 656
    return-void
.end method

.method public onHostCardEmulationActivated(I)V
    .locals 5
    .param p1, "technology"    # I

    .line 138
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 141
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationActivated()V

    .line 143
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationActivated()V

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onHostEmulationActivated()V

    .line 146
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onHostEmulationActivated()V

    .line 147
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onHostEmulationActivated()V

    .line 149
    :cond_2
    :goto_0
    return-void
.end method

.method public onHostCardEmulationData(I[B)V
    .locals 5
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .line 152
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 155
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationData([B)V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onHostEmulationData([B)V

    .line 160
    :cond_2
    :goto_0
    return-void
.end method

.method public onHostCardEmulationDeactivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 163
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationDeactivated()V

    .line 165
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationDeactivated()V

    goto :goto_0

    .line 166
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onHostEmulationDeactivated()V

    .line 168
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onHostEmulationDeactivated()V

    .line 169
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onHostEmulationDeactivated()V

    .line 171
    :cond_1
    :goto_0
    return-void
.end method

.method public onNfcDisabled()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcDisabled()V

    .line 200
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onNfcDisabled()V

    .line 201
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onNfcDisabled()V

    .line 202
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onNfcDisabled()V

    .line 203
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onNfcDisabled()V

    .line 204
    return-void
.end method

.method public onNfcEnabled()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcEnabled()V

    .line 193
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onNfcEnabled()V

    .line 194
    return-void
.end method

.method public onNfcFServicesUpdated(ILjava/util/List;)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onServicesUpdated(ILjava/util/List;)V

    .line 237
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onServicesUpdated()V

    .line 238
    return-void
.end method

.method public onOffHostAidSelected()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onOffHostAidSelected()V

    .line 175
    return-void
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 604
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 605
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 606
    return-void
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 598
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 599
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 600
    return-void
.end method

.method public onRoutingTableChanged()V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onRoutingTableChanged()V

    .line 610
    return-void
.end method

.method public onSecureNfcToggled()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onSecureNfcToggled()V

    .line 208
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onSecureNfcToggled()V

    .line 209
    return-void
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 225
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->verifyDefaults(ILjava/util/List;)V

    .line 227
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onServicesUpdated(ILjava/util/List;)V

    .line 229
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onServicesUpdated()V

    .line 230
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 179
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 180
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->onUserSwitched(I)V

    .line 182
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onUserSwitched()V

    .line 183
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onUserSwitched()V

    .line 184
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onUserSwitched(I)V

    .line 185
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onUserSwitched()V

    .line 186
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 187
    return-void
.end method

.method public packageHasPreferredService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->packageHasPreferredService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .line 294
    const-string v0, "payment"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CardEmulationManager"

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowing defaults for category "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x0

    return v0

    .line 301
    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find default service to make default: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 302
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 304
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 302
    :goto_1
    const-string v2, "nfc_payment_default_component"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 308
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method public updateServiceState(ILjava/util/Map;)I
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 647
    .local p2, "serviceState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 648
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 649
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->updateServiceState(IILjava/util/Map;)I

    move-result v0

    return v0
.end method

.method public updateStatusOfServices(Z)V
    .locals 1
    .param p1, "commitStatus"    # Z

    .line 662
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->updateStatusOfServices(Z)V

    .line 663
    return-void
.end method

.method verifyDefaults(ILjava/util/List;)V
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    nop

    .line 242
    const-string v0, "payment"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 243
    .local v1, "defaultPaymentService":Landroid/content/ComponentName;
    sget-boolean v2, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    const-string v3, "CardEmulationManager"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current default: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    if-nez v1, :cond_6

    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, "numPaymentServices":I
    const/4 v4, 0x0

    .line 249
    .local v4, "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 250
    .local v6, "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    invoke-virtual {v6, v0}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 251
    add-int/lit8 v2, v2, 0x1

    .line 252
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 254
    .end local v6    # "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_1
    goto :goto_0

    .line 255
    :cond_2
    const/4 v5, 0x1

    if-le v2, v5, :cond_3

    .line 257
    sget-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "No default set, more than one service left."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    :cond_3
    if-ne v2, v5, :cond_5

    .line 260
    sget-boolean v5, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "No default set, making single service default."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_4
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_1

    .line 265
    :cond_5
    sget-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "No default set, last payment service removed."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v2    # "numPaymentServices":I
    .end local v4    # "lastFoundPaymentService":Landroid/content/ComponentName;
    :cond_6
    :goto_1
    return-void
.end method
