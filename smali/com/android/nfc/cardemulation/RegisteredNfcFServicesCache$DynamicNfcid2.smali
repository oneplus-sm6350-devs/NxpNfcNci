.class Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
.super Ljava/lang/Object;
.source "RegisteredNfcFServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DynamicNfcid2"
.end annotation


# instance fields
.field public final nfcid2:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "nfcid2"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->uid:I

    .line 99
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->nfcid2:Ljava/lang/String;

    .line 100
    return-void
.end method
