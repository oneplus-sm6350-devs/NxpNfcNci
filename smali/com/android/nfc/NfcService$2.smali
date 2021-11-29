.class Lcom/android/nfc/NfcService$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 4195
    iput-object p1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4198
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4199
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_6

    .line 4200
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4201
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 4228
    :cond_0
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4229
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4230
    .local v1, "userId":I
    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v5, v5, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-eqz v5, :cond_3

    .line 4231
    const/4 v5, 0x0

    .line 4234
    .local v5, "beamSetting":I
    :try_start_0
    const-string v6, "package"

    .line 4235
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 4234
    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 4236
    .local v6, "mIpm":Landroid/content/pm/IPackageManager;
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/android/nfc/BeamShareActivity;

    .line 4237
    invoke-virtual {v8}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/android/nfc/BeamShareActivity;

    .line 4238
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4236
    invoke-interface {v6, v7, v1}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .line 4242
    .end local v6    # "mIpm":Landroid/content/pm/IPackageManager;
    goto :goto_0

    .line 4240
    :catch_0
    move-exception v6

    .line 4241
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "NfcService"

    const-string v8, "Error int getComponentEnabledSetting for BeamShareActivity"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-enter p0

    .line 4244
    :try_start_1
    iget-object v6, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6, v1}, Lcom/android/nfc/NfcService;->access$1802(Lcom/android/nfc/NfcService;I)I

    .line 4245
    if-ne v5, v2, :cond_1

    .line 4246
    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v2, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    goto :goto_1

    .line 4248
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v4, v2, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 4250
    :goto_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 4251
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    .line 4252
    .local v6, "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    .line 4253
    .local v8, "uh":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v10, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v10, v10, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v8}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 4254
    .end local v8    # "uh":Landroid/os/UserHandle;
    goto :goto_2

    .line 4255
    :cond_2
    iget-object v7, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v8, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v8, v8, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    iget-object v10, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v10}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 4256
    .end local v2    # "um":Landroid/os/UserManager;
    .end local v6    # "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4257
    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v6}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/nfc/P2pLinkManager;->onUserSwitched(I)V

    goto :goto_3

    .line 4256
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4259
    .end local v5    # "beamSetting":I
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_4

    .line 4260
    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onUserSwitched(I)V

    .line 4262
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v2

    .line 4263
    .local v2, "screenState":I
    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v5, v5, Lcom/android/nfc/NfcService;->mScreenState:I

    if-eq v2, v5, :cond_e

    .line 4264
    new-instance v5, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v6, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v5, v6}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v5, v4}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_9

    .line 4228
    .end local v1    # "userId":I
    .end local v2    # "screenState":I
    :cond_5
    :goto_4
    goto/16 :goto_9

    .line 4203
    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v1

    .line 4204
    .local v1, "screenState":I
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4205
    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v5, v5, Lcom/android/nfc/NfcService;->mScreenState:I

    if-eq v5, v2, :cond_c

    .line 4206
    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$3700(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4207
    goto :goto_6

    :cond_7
    move v2, v4

    :goto_6
    move v1, v2

    goto :goto_8

    .line 4209
    :cond_8
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x8

    if-eqz v2, :cond_a

    .line 4210
    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$3700(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4211
    const/4 v5, 0x4

    goto :goto_7

    .line 4212
    :cond_9
    nop

    :goto_7
    move v1, v5

    goto :goto_8

    .line 4213
    :cond_a
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4216
    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    if-eq v2, v5, :cond_b

    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4217
    const-string v2, "NfcService"

    const-string v5, "screen state user present"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    const/16 v1, 0x8

    goto :goto_8

    .line 4220
    :cond_b
    return-void

    .line 4224
    :cond_c
    :goto_8
    invoke-static {}, Lcom/android/nfc/NfcService;->access$700()I

    move-result v2

    const/16 v5, 0x20

    if-eq v2, v5, :cond_d

    .line 4225
    new-instance v2, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v2, v5}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v2, v4}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4227
    :cond_d
    iget-object v2, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    const/16 v3, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .end local v1    # "screenState":I
    goto/16 :goto_4

    .line 4267
    :cond_e
    :goto_9
    return-void
.end method
