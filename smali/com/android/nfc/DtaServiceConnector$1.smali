.class Lcom/android/nfc/DtaServiceConnector$1;
.super Ljava/lang/Object;
.source "DtaServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/DtaServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/DtaServiceConnector;


# direct methods
.method constructor <init>(Lcom/android/nfc/DtaServiceConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/DtaServiceConnector;

    .line 54
    iput-object p1, p0, Lcom/android/nfc/DtaServiceConnector$1;->this$0:Lcom/android/nfc/DtaServiceConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 56
    iget-object v0, p0, Lcom/android/nfc/DtaServiceConnector$1;->this$0:Lcom/android/nfc/DtaServiceConnector;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/android/nfc/DtaServiceConnector;->dtaMessenger:Landroid/os/Messenger;

    .line 57
    iget-object v0, p0, Lcom/android/nfc/DtaServiceConnector$1;->this$0:Lcom/android/nfc/DtaServiceConnector;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/nfc/DtaServiceConnector;->isBound:Z

    .line 58
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 61
    iget-object v0, p0, Lcom/android/nfc/DtaServiceConnector$1;->this$0:Lcom/android/nfc/DtaServiceConnector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/nfc/DtaServiceConnector;->dtaMessenger:Landroid/os/Messenger;

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/nfc/DtaServiceConnector;->isBound:Z

    .line 63
    return-void
.end method
