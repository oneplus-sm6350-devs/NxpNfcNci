.class public Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;
.super Ljava/lang/Object;
.source "NativeLlcpServiceSocket.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$LlcpServerSocket;


# instance fields
.field private mHandle:I

.field private mLocalLinearBufferLength:I

.field private mLocalMiu:I

.field private mLocalRw:I

.field private mSap:I

.field private mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native doAccept(III)Lcom/android/nfc/dhimpl/NativeLlcpSocket;
.end method

.method private native doClose()Z
.end method


# virtual methods
.method public accept()Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;->mLocalMiu:I

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;->mLocalRw:I

    iget v2, p0, Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;->mLocalLinearBufferLength:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;->doAccept(III)Lcom/android/nfc/dhimpl/NativeLlcpSocket;

    move-result-object v0

    .line 42
    .local v0, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v0, :cond_0

    .line 43
    return-object v0

    .line 42
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;->doClose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
