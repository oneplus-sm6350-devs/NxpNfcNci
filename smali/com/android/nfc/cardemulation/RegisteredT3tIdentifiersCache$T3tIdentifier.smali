.class final Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
.super Ljava/lang/Object;
.source "RegisteredT3tIdentifiersCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "T3tIdentifier"
.end annotation


# instance fields
.field public final nfcid2:Ljava/lang/String;

.field public final systemCode:Ljava/lang/String;

.field public final t3tPmm:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;
    .param p2, "systemCode"    # Ljava/lang/String;
    .param p3, "nfcid2"    # Ljava/lang/String;
    .param p4, "t3tPmm"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->this$0:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->t3tPmm:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 61
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 64
    .local v2, "that":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 65
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 67
    :cond_3
    return v0

    .line 61
    .end local v2    # "that":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 73
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 74
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
