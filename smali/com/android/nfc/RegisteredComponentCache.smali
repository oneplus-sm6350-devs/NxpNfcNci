.class public Lcom/android/nfc/RegisteredComponentCache;
.super Ljava/lang/Object;
.source "RegisteredComponentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RegisteredComponentCache"


# instance fields
.field final mAction:Ljava/lang/String;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mMetaDataName:Ljava/lang/String;

.field final mReceiver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "metaDataName"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/nfc/RegisteredComponentCache;->mAction:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/android/nfc/RegisteredComponentCache;->generateComponentsList()V

    .line 63
    new-instance v0, Lcom/android/nfc/RegisteredComponentCache$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/RegisteredComponentCache$1;-><init>(Lcom/android/nfc/RegisteredComponentCache;)V

    .line 77
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 78
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v1

    .line 79
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "package"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 85
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v8, v1

    .line 86
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v9, v1

    .line 91
    .local v9, "userFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 93
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 134
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    :cond_0
    return-void
.end method

.method dump(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 150
    .local v1, "component":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    invoke-virtual {v1}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegisteredComponentCache"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v1    # "component":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "RegisteredComponentCache"

    const-string v1, "RegisteredServicesCache finalized without being closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/RegisteredComponentCache;->close()V

    .line 145
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 146
    return-void
.end method

.method generateComponentsList()V
    .locals 8

    .line 157
    :try_start_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 158
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    .line 163
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/nfc/RegisteredComponentCache;->mAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    .line 166
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 165
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 167
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 169
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_1
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/nfc/RegisteredComponentCache;->parseComponentInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    :goto_1
    goto :goto_2

    .line 172
    :catch_0
    move-exception v5

    .line 173
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RegisteredComponentCache"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 170
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 171
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RegisteredComponentCache"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1

    .line 175
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_2
    goto :goto_0

    .line 181
    :cond_0
    monitor-enter p0

    .line 182
    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;

    .line 183
    monitor-exit p0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 160
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_2
    move-exception v0

    .line 161
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RegisteredComponentCache"

    const-string v2, "Could not create user package context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public getComponents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;"
        }
    .end annotation

    .line 122
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;

    monitor-exit p0

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method parseComponentInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    .local p3, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 190
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .line 192
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 193
    if-eqz v1, :cond_0

    .line 197
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v3, p0

    move-object v6, v1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/nfc/RegisteredComponentCache;->parseTechLists(Landroid/content/res/Resources;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 204
    return-void

    .line 194
    :cond_0
    :try_start_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/nfc/RegisteredComponentCache;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    throw v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/nfc/RegisteredComponentCache;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load resources for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/nfc/RegisteredComponentCache;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/nfc/RegisteredComponentCache;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v2
.end method

.method parseTechLists(Landroid/content/res/Resources;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    .local p5, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 210
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 211
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 214
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 218
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "tagName":Ljava/lang/String;
    if-ne v0, v1, :cond_1

    const-string v4, "tech"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 221
    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    const-string v4, "tech-list"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 223
    .local v4, "size":I
    if-lez v4, :cond_2

    .line 224
    new-array v5, v4, [Ljava/lang/String;

    .line 225
    .local v5, "techs":[Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, [Ljava/lang/String;

    .line 226
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 227
    new-instance v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    invoke-direct {v6, p4, v5}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;-><init>(Landroid/content/pm/ResolveInfo;[Ljava/lang/String;)V

    invoke-virtual {p5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v4    # "size":I
    .end local v5    # "techs":[Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 231
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 232
    return-void

    .line 231
    :cond_3
    goto :goto_1
.end method
