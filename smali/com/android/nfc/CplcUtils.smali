.class public Lcom/android/nfc/CplcUtils;
.super Ljava/lang/Object;
.source "CplcUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/CplcUtils$OnCplcAttachListener;
    }
.end annotation


# static fields
.field private static final COMMAND_CPLC:Ljava/lang/String; = "80CA9F7F00"

.field private static final TAG:Ljava/lang/String; = "CplcUtils"


# instance fields
.field private context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/Executor;

.field private listener:Lcom/android/nfc/CplcUtils$OnCplcAttachListener;

.field private seService:Landroid/se/omapi/SEService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/CplcUtils;->executor:Ljava/util/concurrent/Executor;

    .line 23
    iput-object p1, p0, Lcom/android/nfc/CplcUtils;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 96
    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 98
    return-object v0

    .line 100
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v2

    .line 101
    .local v0, "len":I
    new-array v1, v0, [B

    .line 102
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 103
    mul-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .line 110
    if-nez p0, :cond_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    array-length v0, p0

    .line 114
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 116
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 119
    :cond_1
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getCplc()Ljava/lang/String;
    .locals 9

    .line 37
    const-string v0, ""

    .line 38
    .local v0, "cplc":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/CplcUtils;->seService:Landroid/se/omapi/SEService;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 39
    iget-object v1, p0, Lcom/android/nfc/CplcUtils;->seService:Landroid/se/omapi/SEService;

    invoke-virtual {v1}, Landroid/se/omapi/SEService;->getReaders()[Landroid/se/omapi/Reader;

    move-result-object v1

    .line 40
    .local v1, "readers":[Landroid/se/omapi/Reader;
    const/4 v2, 0x0

    .line 42
    .local v2, "session":Landroid/se/omapi/Session;
    const-string v3, ""

    if-eqz v1, :cond_6

    array-length v4, v1

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 49
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/se/omapi/Reader;->openSession()Landroid/se/omapi/Session;

    move-result-object v5

    move-object v2, v5

    .line 50
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/se/omapi/Session;->openLogicalChannel([B)Landroid/se/omapi/Channel;

    move-result-object v5

    .line 51
    .local v5, "channel":Landroid/se/omapi/Channel;
    if-eqz v5, :cond_3

    .line 52
    const-string v6, "80CA9F7F00"

    invoke-static {v6}, Lcom/android/nfc/CplcUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/se/omapi/Channel;->transmit([B)[B

    move-result-object v6

    .line 53
    .local v6, "result":[B
    invoke-static {v6}, Lcom/android/nfc/CplcUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_1

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 57
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/CplcUtils;->listener:Lcom/android/nfc/CplcUtils$OnCplcAttachListener;

    if-eqz v4, :cond_2

    .line 58
    iget-object v4, p0, Lcom/android/nfc/CplcUtils;->listener:Lcom/android/nfc/CplcUtils$OnCplcAttachListener;

    invoke-interface {v4, v0}, Lcom/android/nfc/CplcUtils$OnCplcAttachListener;->onCplcAttached(Ljava/lang/String;)V

    .line 60
    :cond_2
    invoke-virtual {v5}, Landroid/se/omapi/Channel;->close()V

    .line 61
    invoke-virtual {v2}, Landroid/se/omapi/Session;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v6    # "result":[B
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/CplcUtils;->seService:Landroid/se/omapi/SEService;

    invoke-virtual {v3}, Landroid/se/omapi/SEService;->shutdown()V

    .line 75
    goto :goto_0

    .line 74
    .end local v5    # "channel":Landroid/se/omapi/Channel;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 63
    :catch_0
    move-exception v4

    .line 64
    .local v4, "e":Ljava/io/IOException;
    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v2}, Landroid/se/omapi/Session;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 65
    invoke-virtual {v2}, Landroid/se/omapi/Session;->closeChannels()V

    .line 66
    invoke-virtual {v2}, Landroid/se/omapi/Session;->close()V

    .line 68
    :cond_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 70
    iget-object v5, p0, Lcom/android/nfc/CplcUtils;->listener:Lcom/android/nfc/CplcUtils$OnCplcAttachListener;

    if-eqz v5, :cond_5

    .line 71
    iget-object v5, p0, Lcom/android/nfc/CplcUtils;->listener:Lcom/android/nfc/CplcUtils$OnCplcAttachListener;

    invoke-interface {v5, v3}, Lcom/android/nfc/CplcUtils$OnCplcAttachListener;->onCplcAttached(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    iget-object v3, p0, Lcom/android/nfc/CplcUtils;->seService:Landroid/se/omapi/SEService;

    invoke-virtual {v3}, Landroid/se/omapi/SEService;->shutdown()V

    .line 75
    nop

    .line 76
    .end local v1    # "readers":[Landroid/se/omapi/Reader;
    .end local v2    # "session":Landroid/se/omapi/Session;
    :goto_0
    goto :goto_3

    .line 74
    .restart local v1    # "readers":[Landroid/se/omapi/Reader;
    .restart local v2    # "session":Landroid/se/omapi/Session;
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/CplcUtils;->seService:Landroid/se/omapi/SEService;

    invoke-virtual {v4}, Landroid/se/omapi/SEService;->shutdown()V

    throw v3

    .line 43
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/nfc/CplcUtils;->listener:Lcom/android/nfc/CplcUtils$OnCplcAttachListener;

    if-eqz v4, :cond_7

    .line 44
    invoke-interface {v4, v3}, Lcom/android/nfc/CplcUtils$OnCplcAttachListener;->onCplcAttached(Ljava/lang/String;)V

    .line 46
    :cond_7
    const-string v3, "reader is null"

    return-object v3

    .line 77
    .end local v1    # "readers":[Landroid/se/omapi/Reader;
    .end local v2    # "session":Landroid/se/omapi/Session;
    :cond_8
    const-string v0, "seService init fail"

    .line 79
    :goto_3
    return-object v0
.end method

.method public init()V
    .locals 4

    .line 27
    new-instance v0, Landroid/se/omapi/SEService;

    iget-object v1, p0, Lcom/android/nfc/CplcUtils;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/CplcUtils;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/nfc/CplcUtils$1;

    invoke-direct {v3, p0}, Lcom/android/nfc/CplcUtils$1;-><init>(Lcom/android/nfc/CplcUtils;)V

    invoke-direct {v0, v1, v2, v3}, Landroid/se/omapi/SEService;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/se/omapi/SEService$OnConnectedListener;)V

    iput-object v0, p0, Lcom/android/nfc/CplcUtils;->seService:Landroid/se/omapi/SEService;

    .line 34
    return-void
.end method

.method public setCplcAttachListener(Lcom/android/nfc/CplcUtils$OnCplcAttachListener;)Lcom/android/nfc/CplcUtils;
    .locals 0
    .param p1, "listener"    # Lcom/android/nfc/CplcUtils$OnCplcAttachListener;

    .line 87
    iput-object p1, p0, Lcom/android/nfc/CplcUtils;->listener:Lcom/android/nfc/CplcUtils$OnCplcAttachListener;

    .line 88
    return-object p0
.end method
