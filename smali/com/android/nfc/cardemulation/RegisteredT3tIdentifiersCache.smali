.class public Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;
.super Ljava/lang/Object;
.source "RegisteredT3tIdentifiersCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "RegisteredT3tIdentifiersCache"


# instance fields
.field final mContext:Landroid/content/Context;

.field mEnabledForegroundService:Landroid/content/ComponentName;

.field final mForegroundT3tIdentifiersCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mNfcEnabled:Z

.field final mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

.field mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-string v0, "persist.nfc.ce_debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mServices:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    .line 86
    const-string v0, "RegisteredT3tIdentifiersCache"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    .line 89
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 214
    const-string v0, "T3T Identifier cache entries: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 216
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    NFCID2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    const-string v2, "    NfcFServiceInfo: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v2, p1, p2, p3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 219
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    goto :goto_0

    .line 220
    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method generateForegroundT3tIdentifiersCacheLocked()V
    .locals 5

    .line 103
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    const-string v1, "RegisteredT3tIdentifiersCache"

    if-eqz v0, :cond_0

    const-string v0, "generateForegroundT3tIdentifiersCacheLocked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 105
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 107
    .local v2, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NULL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 114
    .end local v2    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_1
    goto :goto_0

    .line 117
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    if-eqz v0, :cond_3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mForegroundT3tIdentifiersCache: size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    .line 119
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 122
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    goto :goto_2

    .line 127
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->updateRoutingLocked(Z)V

    .line 128
    return-void
.end method

.method public onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 173
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredT3tIdentifiersCache"

    const-string v1, "Enabled foreground service changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    if-eqz p1, :cond_2

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 177
    monitor-exit v0

    return-void

    .line 179
    :cond_1
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    goto :goto_0

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    if-nez v1, :cond_3

    .line 182
    monitor-exit v0

    return-void

    .line 184
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->generateForegroundT3tIdentifiersCacheLocked()V

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNfcDisabled()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    .line 199
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    .line 201
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->onNfccRoutingTableCleared()V

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onNfcEnabled()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    .line 193
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSecureNfcToggled()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->updateRoutingLocked(Z)V

    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredT3tIdentifiersCache"

    const-string v1, "onServicesUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 165
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mServices:Ljava/util/List;

    goto :goto_0

    .line 167
    :cond_1
    const-string v1, "RegisteredT3tIdentifiersCache"

    const-string v2, "Ignoring update because it\'s not for the current user."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitched()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 208
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->updateRoutingLocked(Z)V

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    .line 210
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveNfcid2(Ljava/lang/String;)Landroid/nfc/cardemulation/NfcFServiceInfo;
    .locals 5
    .param p1, "nfcid2"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-boolean v1, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "RegisteredT3tIdentifiersCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveNfcid2: resolving NFCID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 96
    .local v1, "resolveInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const-string v2, "RegisteredT3tIdentifiersCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolved to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    if-nez v1, :cond_1

    const-string v4, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    monitor-exit v0

    return-object v1

    .line 99
    .end local v1    # "resolveInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateRoutingLocked(Z)V
    .locals 7
    .param p1, "force"    # Z

    .line 131
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->DBG:Z

    const-string v1, "RegisteredT3tIdentifiersCache"

    if-eqz v0, :cond_0

    const-string v0, "updateRoutingLocked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    if-nez v0, :cond_1

    .line 133
    const-string v0, "Not updating routing table because NFC is off."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 136
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "t3tIdentifiers":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;>;"
    if-eqz p1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v1, v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->configureRouting(Ljava/util/List;)Z

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 145
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    nop

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v3, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getT3tPmm()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;-><init>(Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    goto :goto_0

    .line 151
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v2, v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->configureRouting(Ljava/util/List;)Z

    .line 152
    return-void
.end method
