.class public final Lcom/android/nfc/NfcDiscoveryParameters;
.super Ljava/lang/Object;
.source "NfcDiscoveryParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    }
.end annotation


# static fields
.field static final NFC_POLL_DEFAULT:I = -0x1


# instance fields
.field private mEnableHostRouting:Z

.field private mEnableLowPowerDiscovery:Z

.field private mEnableP2p:Z

.field private mEnableReaderMode:Z

.field private mTechMask:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/NfcDiscoveryParameters;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p1, "x1"    # I

    .line 23
    iput p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcDiscoveryParameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;

    .line 23
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/nfc/NfcDiscoveryParameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;

    .line 23
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/nfc/NfcDiscoveryParameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;

    .line 23
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 1

    .line 145
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-direct {v0}, Lcom/android/nfc/NfcDiscoveryParameters;-><init>()V

    return-object v0
.end method

.method public static getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 1

    .line 149
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-direct {v0}, Lcom/android/nfc/NfcDiscoveryParameters;-><init>()V

    return-object v0
.end method

.method public static newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .locals 2

    .line 141
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;-><init>(Lcom/android/nfc/NfcDiscoveryParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 110
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 111
    return v0

    .line 114
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/nfc/NfcDiscoveryParameters;

    .line 118
    .local v2, "params":Lcom/android/nfc/NfcDiscoveryParameters;
    iget v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    iget v4, v2, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    iget-boolean v4, v2, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    iget-boolean v4, v2, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    iget-boolean v4, v2, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    iget-boolean v4, v2, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 115
    .end local v2    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    :cond_3
    :goto_1
    return v1
.end method

.method public getTechMask()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    return v0
.end method

.method public shouldEnableDiscovery()Z
    .locals 1

    .line 101
    iget v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public shouldEnableHostRouting()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    return v0
.end method

.method public shouldEnableLowPowerDiscovery()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    return v0
.end method

.method public shouldEnableP2p()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    return v0
.end method

.method public shouldEnableReaderMode()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    const-string v2, "\n"

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 129
    const-string v1, "mTechMask: default\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTechMask: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnableLPD: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnableReader: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnableHostRouting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnableP2p: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/nfc/NfcDiscoveryParameters;->mEnableP2p:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
