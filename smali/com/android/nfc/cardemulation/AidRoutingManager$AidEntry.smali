.class final Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;
.super Ljava/lang/Object;
.source "AidRoutingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/AidRoutingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AidEntry"
.end annotation


# instance fields
.field aidInfo:I

.field isOnHost:Z

.field offHostSE:Ljava/lang/String;

.field powerstate:I

.field route:I

.field final synthetic this$0:Lcom/android/nfc/cardemulation/AidRoutingManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 116
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->this$0:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
