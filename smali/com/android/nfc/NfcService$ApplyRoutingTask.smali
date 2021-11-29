.class Lcom/android/nfc/NfcService$ApplyRoutingTask;
.super Landroid/os/AsyncTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplyRoutingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 4153
    iput-object p1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4153
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Integer;

    .line 4156
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 4157
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    array-length v3, p1

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 4162
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 4164
    iget-object v2, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4166
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4168
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4169
    nop

    .line 4170
    monitor-exit v0

    return-object v1

    .line 4168
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .end local p0    # "this":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    .end local p1    # "params":[Ljava/lang/Integer;
    throw v1

    .line 4159
    .restart local p0    # "this":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    .restart local p1    # "params":[Ljava/lang/Integer;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 4160
    monitor-exit v0

    return-object v1

    .line 4171
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
