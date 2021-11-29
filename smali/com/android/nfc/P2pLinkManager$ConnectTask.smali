.class final Lcom/android/nfc/P2pLinkManager$ConnectTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConnectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/P2pLinkManager;

    .line 770
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, "needsHandover":Z
    const/4 v1, 0x0

    .line 788
    .local v1, "needsNdef":Z
    const/4 v2, 0x0

    .line 789
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 790
    .local v3, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    const/4 v4, 0x0

    .line 791
    .local v4, "snepClient":Lcom/android/nfc/snep/SnepClient;
    const/4 v5, 0x0

    .line 793
    .local v5, "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v6

    .line 794
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v7, :cond_0

    .line 795
    const/4 v0, 0x1

    .line 798
    :cond_0
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-eqz v7, :cond_1

    .line 799
    const/4 v1, 0x1

    .line 801
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 804
    if-eqz v0, :cond_2

    .line 805
    new-instance v6, Lcom/android/nfc/handover/HandoverClient;

    invoke-direct {v6}, Lcom/android/nfc/handover/HandoverClient;-><init>()V

    move-object v3, v6

    .line 807
    :try_start_1
    invoke-virtual {v3}, Lcom/android/nfc/handover/HandoverClient;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 808
    const/4 v2, 0x1

    .line 811
    move-object v7, v3

    goto :goto_0

    .line 809
    :catch_0
    move-exception v6

    .line 810
    .local v6, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    move-object v7, v3

    goto :goto_0

    .line 804
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    move-object v7, v3

    .line 813
    .end local v3    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    .local v7, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    :goto_0
    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    if-nez v7, :cond_3

    goto :goto_1

    .line 847
    :cond_3
    move v10, v2

    move-object v8, v4

    move-object v9, v5

    goto/16 :goto_5

    .line 814
    :cond_4
    :goto_1
    sget-boolean v3, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v3, :cond_5

    .line 815
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v3}, Lcom/android/nfc/P2pLinkManager;->access$000(Lcom/android/nfc/P2pLinkManager;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 816
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v3}, Lcom/android/nfc/P2pLinkManager;->access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;

    move-result-object v3

    if-nez v3, :cond_6

    .line 817
    const-string v3, "NfcP2pLinkManager"

    const-string v6, "Creating DTA Snep Client"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    new-instance v6, Lcom/android/nfc/sneptest/DtaSnepClient;

    invoke-static {v3}, Lcom/android/nfc/P2pLinkManager;->access$200(Lcom/android/nfc/P2pLinkManager;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v9}, Lcom/android/nfc/P2pLinkManager;->access$300(Lcom/android/nfc/P2pLinkManager;)I

    move-result v9

    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v10}, Lcom/android/nfc/P2pLinkManager;->access$400(Lcom/android/nfc/P2pLinkManager;)I

    move-result v10

    iget-object v11, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v11}, Lcom/android/nfc/P2pLinkManager;->access$500(Lcom/android/nfc/P2pLinkManager;)I

    move-result v11

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/android/nfc/sneptest/DtaSnepClient;-><init>(Ljava/lang/String;III)V

    invoke-static {v3, v6}, Lcom/android/nfc/P2pLinkManager;->access$102(Lcom/android/nfc/P2pLinkManager;Lcom/android/nfc/sneptest/DtaSnepClient;)Lcom/android/nfc/sneptest/DtaSnepClient;

    goto :goto_2

    .line 822
    :cond_5
    new-instance v3, Lcom/android/nfc/snep/SnepClient;

    invoke-direct {v3}, Lcom/android/nfc/snep/SnepClient;-><init>()V

    move-object v4, v3

    .line 824
    :cond_6
    :goto_2
    :try_start_2
    sget-boolean v3, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v3, :cond_7

    .line 825
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v3}, Lcom/android/nfc/P2pLinkManager;->access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 826
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v3}, Lcom/android/nfc/P2pLinkManager;->access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;

    move-result-object v3

    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/android/nfc/sneptest/DtaSnepClient;->DtaClientOperations(Landroid/content/Context;)V

    goto :goto_3

    .line 829
    :cond_7
    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepClient;->connect()V

    .line 830
    :cond_8
    :goto_3
    const/4 v2, 0x1

    .line 831
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/nfc/P2pLinkManager;->access$102(Lcom/android/nfc/P2pLinkManager;Lcom/android/nfc/sneptest/DtaSnepClient;)Lcom/android/nfc/sneptest/DtaSnepClient;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 834
    goto :goto_4

    .line 832
    :catch_1
    move-exception v3

    .line 833
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 836
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4
    if-nez v2, :cond_9

    .line 837
    new-instance v3, Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-direct {v3}, Lcom/android/nfc/ndefpush/NdefPushClient;-><init>()V

    move-object v5, v3

    .line 839
    :try_start_3
    invoke-virtual {v5}, Lcom/android/nfc/ndefpush/NdefPushClient;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 840
    const/4 v2, 0x1

    .line 843
    move v10, v2

    move-object v8, v4

    move-object v9, v5

    goto :goto_5

    .line 841
    :catch_2
    move-exception v3

    .line 842
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    move v10, v2

    move-object v8, v4

    move-object v9, v5

    goto :goto_5

    .line 836
    .end local v3    # "e":Ljava/io/IOException;
    :cond_9
    move v10, v2

    move-object v8, v4

    move-object v9, v5

    .line 847
    .end local v2    # "success":Z
    .end local v4    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    .end local v5    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    .local v8, "snepClient":Lcom/android/nfc/snep/SnepClient;
    .local v9, "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    .local v10, "success":Z
    :goto_5
    iget-object v11, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v11

    .line 848
    :try_start_4
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 850
    if-eqz v7, :cond_a

    .line 851
    invoke-virtual {v7}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 853
    :cond_a
    if-eqz v8, :cond_b

    .line 854
    invoke-virtual {v8}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 856
    :cond_b
    if-eqz v9, :cond_c

    .line 857
    invoke-virtual {v9}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 859
    :cond_c
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v2}, Lcom/android/nfc/P2pLinkManager;->access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 860
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v2}, Lcom/android/nfc/P2pLinkManager;->access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 862
    :cond_d
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    monitor-exit v11

    return-object v2

    .line 867
    :cond_e
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v7, v2, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 868
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v8, v2, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 869
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v9, v2, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 870
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    monitor-exit v11

    return-object v2

    .line 872
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 801
    .end local v7    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    .end local v8    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    .end local v9    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    .end local v10    # "success":Z
    .restart local v2    # "success":Z
    .local v3, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    .restart local v4    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    .restart local v5    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 770
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 773
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v0

    const-string v1, "NfcP2pLinkManager"

    if-eqz v0, :cond_0

    .line 774
    const-string v0, "ConnectTask was cancelled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void

    .line 777
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpServicesConnected()V

    goto :goto_0

    .line 780
    :cond_1
    const-string v0, "Could not connect required NFC transports"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 770
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
