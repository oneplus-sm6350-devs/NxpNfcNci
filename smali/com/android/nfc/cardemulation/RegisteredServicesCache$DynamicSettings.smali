.class Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DynamicSettings"
.end annotation


# instance fields
.field public final aidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/NfcAidGroup;",
            ">;"
        }
    .end annotation
.end field

.field public offHostSE:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->aidGroups:Ljava/util/HashMap;

    .line 122
    iput p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicSettings;->uid:I

    .line 123
    return-void
.end method
