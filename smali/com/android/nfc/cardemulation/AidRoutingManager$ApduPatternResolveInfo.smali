.class final Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;
.super Ljava/lang/Object;
.source "AidRoutingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/AidRoutingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ApduPatternResolveInfo"
.end annotation


# instance fields
.field public mask:Ljava/lang/String;

.field public powerState:I

.field public referenceData:Ljava/lang/String;

.field public route:I

.field final synthetic this$0:Lcom/android/nfc/cardemulation/AidRoutingManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 476
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;->this$0:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
