.class public final Lcom/android/nfc/sneptest/ExtDtaSnepServer;
.super Ljava/lang/Object;
.source "ExtDtaSnepServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;,
        Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;,
        Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DEFAULT_PORT:I = 0x5

.field public static final DEFAULT_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:sneptest"

.field public static final EXTENDED_SNEP_DTA_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:sneptest"

.field private static final TAG:Ljava/lang/String; = "ExtDtaSnepServer"

.field static dtaServiceConnector:Lcom/android/nfc/DtaServiceConnector;

.field public static mContext:Landroid/content/Context;

.field public static mTestCaseId:I


# instance fields
.field final mDtaFragmentLength:I

.field final mDtaMiu:I

.field final mDtaRwSize:I

.field final mDtaServiceName:Ljava/lang/String;

.field final mDtaServiceSap:I

.field final mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

.field mServerRunning:Z

.field mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;Landroid/content/Context;I)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "miu"    # I
    .param p4, "rwSize"    # I
    .param p5, "callback"    # Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;
    .param p6, "mContext"    # Landroid/content/Context;
    .param p7, "testCaseId"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerRunning:Z

    .line 62
    iput-object p5, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

    .line 63
    iput-object p1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaServiceName:Ljava/lang/String;

    .line 64
    iput p2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaServiceSap:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaFragmentLength:I

    .line 66
    iput p3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaMiu:I

    .line 67
    iput p4, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaRwSize:I

    .line 68
    sput p7, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mTestCaseId:I

    .line 69
    new-instance v0, Lcom/android/nfc/DtaServiceConnector;

    invoke-direct {v0, p6}, Lcom/android/nfc/DtaServiceConnector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->dtaServiceConnector:Lcom/android/nfc/DtaServiceConnector;

    .line 70
    sget-object v0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->dtaServiceConnector:Lcom/android/nfc/DtaServiceConnector;

    invoke-virtual {v0}, Lcom/android/nfc/DtaServiceConnector;->bindService()V

    .line 71
    return-void
.end method

.method static handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;)Z
    .locals 7
    .param p0, "messenger"    # Lcom/android/nfc/snep/SnepMessenger;
    .param p1, "callback"    # Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const-string v0, "ExtDtaSnepServer"

    const/16 v1, -0x3e

    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .local v2, "request":Lcom/android/nfc/snep/SnepMessage;
    nop

    .line 126
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getVersion()B

    move-result v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 127
    const/16 v0, -0x1f

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto/16 :goto_1

    .line 129
    :cond_0
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getLength()I

    move-result v3

    const/16 v5, 0x400

    const/4 v6, -0x1

    if-gt v3, v5, :cond_4

    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getLength()I

    move-result v3

    if-ne v3, v6, :cond_1

    goto/16 :goto_0

    .line 132
    :cond_1
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v3

    if-ne v3, v4, :cond_2

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting message "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getAcceptableLength()I

    move-result v0

    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;->doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 135
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 136
    sget-object v0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->dtaServiceConnector:Lcom/android/nfc/DtaServiceConnector;

    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putting message "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;->doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 140
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 141
    sget-object v0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->dtaServiceConnector:Lcom/android/nfc/DtaServiceConnector;

    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown request ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {v1}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_1

    .line 130
    :cond_4
    :goto_0
    const-string v1, "Bad requested length"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {v6}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 146
    :cond_5
    :goto_1
    return v4

    .line 117
    .end local v2    # "request":Lcom/android/nfc/snep/SnepMessage;
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Lcom/android/nfc/snep/SnepException;
    const-string v3, "Bad snep message"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :try_start_1
    invoke-static {v1}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 122
    :catch_1
    move-exception v0

    :goto_2
    nop

    .line 123
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    const-string v0, "ExtDtaSnepServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    if-nez v0, :cond_0

    .line 240
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "starting new server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;-><init>(Lcom/android/nfc/sneptest/ExtDtaSnepServer;)V

    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    .line 242
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->start()V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerRunning:Z

    .line 245
    :cond_0
    monitor-exit p0

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 3

    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    const-string v0, "ExtDtaSnepServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop, thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "shuting down server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->shutdown()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerRunning:Z

    .line 257
    :cond_0
    monitor-exit p0

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
