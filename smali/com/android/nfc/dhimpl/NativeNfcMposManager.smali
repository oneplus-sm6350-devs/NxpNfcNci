.class public Lcom/android/nfc/dhimpl/NativeNfcMposManager;
.super Ljava/lang/Object;
.source "NativeNfcMposManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeNfcMposManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native doEtsiInitConfig()V
.end method

.method public native doEtsiReaderConfig(I)V
.end method

.method public native doEtsiResetReaderConfig()V
.end method

.method public native doGetEtsiReaederState()I
.end method

.method public native doMposGetReaderMode()Z
.end method

.method public native doMposSetReaderMode(Z)I
.end method

.method public native doNotifyEEReaderEvent(I)V
.end method

.method public native doSetEtsiReaederState(I)V
.end method

.method public native doStartPoll()V
.end method

.method public native doStopPoll(I)V
.end method
