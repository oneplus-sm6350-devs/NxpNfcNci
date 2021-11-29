.class Lcom/android/nfc/cardemulation/RegisteredAidCache$2;
.super Ljava/util/ArrayList;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field final synthetic val$resolveinfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 403
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$2;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$2;->val$resolveinfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$2;->val$resolveinfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object p2, p2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
