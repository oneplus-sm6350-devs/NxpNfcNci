.class public final Lcom/android/nfc/handover/HandoverServer;
.super Ljava/lang/Object;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverServer$ConnectionThread;,
        Lcom/android/nfc/handover/HandoverServer$ServerThread;,
        Lcom/android/nfc/handover/HandoverServer$Callback;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean;

.field static final HANDOVER_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:handover"

.field static final MIU:I = 0x80

.field static final TAG:Ljava/lang/String; = "HandoverServer"


# instance fields
.field final mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

.field private final mContext:Landroid/content/Context;

.field final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field final mSap:I

.field mServerRunning:Z

.field mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/nfc/handover/HandoverDataParser;Lcom/android/nfc/handover/HandoverServer$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sap"    # I
    .param p3, "manager"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p4, "callback"    # Lcom/android/nfc/handover/HandoverServer$Callback;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    .line 59
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer;->mContext:Landroid/content/Context;

    .line 60
    iput p2, p0, Lcom/android/nfc/handover/HandoverServer;->mSap:I

    .line 61
    iput-object p3, p0, Lcom/android/nfc/handover/HandoverServer;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 62
    iput-object p4, p0, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/HandoverServer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverServer;

    .line 38
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/nfc/handover/HandoverServer$ServerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/HandoverServer$ServerThread;-><init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/handover/HandoverServer$1;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    .line 68
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer$ServerThread;->start()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverServer;
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer$ServerThread;->shutdown()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverServer;
    :cond_0
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
