.class public Lcom/android/nfc/snep/SnepMessenger;
.super Ljava/lang/Object;
.source "SnepMessenger.java"


# static fields
.field private static final DBG:Z = true

.field private static final HEADER_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SnepMessenger"


# instance fields
.field final mFragmentLength:I

.field final mIsClient:Z

.field final mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;


# direct methods
.method public constructor <init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .locals 0
    .param p1, "isClient"    # Z
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 62
    iput p3, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    .line 63
    iput-boolean p1, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    .line 64
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V

    .line 300
    return-void
.end method

.method public getMessage()Lcom/android/nfc/snep/SnepMessage;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/nfc/snep/SnepException;
        }
    .end annotation

    .line 154
    move-object/from16 v1, p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v2, v1, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v2, v0

    .line 155
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    iget v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    new-array v3, v0, [B

    .line 157
    .local v3, "partial":[B
    const/4 v4, 0x0

    .line 158
    .local v4, "requestSize":I
    const/4 v5, 0x0

    .line 159
    .local v5, "readSize":I
    const/4 v6, 0x0

    .line 160
    .local v6, "requestVersion":B
    const/4 v7, 0x0

    .line 161
    .local v7, "requestField":B
    const/4 v8, 0x0

    .line 164
    .local v8, "doneReading":Z
    iget-boolean v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "fieldContinue":B
    const/16 v9, 0x7f

    move v10, v0

    .local v9, "fieldReject":B
    goto :goto_0

    .line 168
    .end local v0    # "fieldContinue":B
    .end local v9    # "fieldReject":B
    :cond_0
    const/16 v0, -0x80

    .line 169
    .restart local v0    # "fieldContinue":B
    const/4 v9, -0x1

    move v10, v0

    .line 172
    .end local v0    # "fieldContinue":B
    .restart local v9    # "fieldReject":B
    .local v10, "fieldContinue":B
    :goto_0
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v11

    .line 173
    .local v11, "size":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "read "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " bytes"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "SnepMessenger"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-ltz v11, :cond_12

    .line 181
    const/4 v0, 0x6

    if-ge v11, v0, :cond_2

    .line 183
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v0, :cond_1

    .line 184
    const-string v0, "Invalid header length"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    goto :goto_1

    .line 187
    :cond_1
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v9}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 190
    :goto_1
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v9}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_2

    .line 191
    :catch_0
    move-exception v0

    .line 194
    :goto_2
    new-instance v0, Ljava/io/IOException;

    const-string v12, "Invalid fragment from sender."

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2
    add-int/lit8 v0, v11, -0x6

    .line 197
    .end local v5    # "readSize":I
    .local v0, "readSize":I
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 200
    new-instance v15, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v15, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v15

    .line 201
    .local v5, "dataIn":Ljava/io/DataInputStream;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 202
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    .line 203
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 205
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v22, v5

    .end local v5    # "dataIn":Ljava/io/DataInputStream;
    .local v22, "dataIn":Ljava/io/DataInputStream;
    const-string v5, " of "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    and-int/lit16 v5, v6, 0xf0

    shr-int/lit8 v5, v5, 0x4

    const/4 v15, 0x1

    if-eq v5, v15, :cond_5

    .line 208
    sget-boolean v5, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    const/16 v15, -0x1f

    if-eqz v5, :cond_3

    .line 209
    invoke-static {v15}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    goto :goto_3

    .line 212
    :cond_3
    sget-boolean v5, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v5, :cond_4

    .line 213
    invoke-static {v15}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    goto :goto_3

    .line 217
    :cond_4
    new-instance v5, Lcom/android/nfc/snep/SnepMessage;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-direct/range {v16 .. v21}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v5

    .line 223
    :cond_5
    :goto_3
    sget-boolean v5, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v5, :cond_c

    .line 224
    iget-boolean v5, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v5, :cond_7

    const/16 v5, -0x80

    if-eq v7, v5, :cond_6

    const/16 v5, -0x7f

    if-eq v7, v5, :cond_6

    const/16 v5, -0x40

    if-ne v7, v5, :cond_7

    .line 227
    :cond_6
    const-string v5, "errorneous response received, disconnecting client"

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 230
    :cond_7
    iget-boolean v5, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v5, :cond_8

    const/4 v5, 0x3

    if-ne v7, v5, :cond_8

    .line 231
    const-string v5, "unknown request received, disconnecting client"

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/16 v5, -0x3e

    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 236
    :cond_8
    iget-boolean v5, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    if-ne v7, v5, :cond_9

    .line 237
    const-string v5, "errorneous PUT request received, disconnecting from server"

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 241
    :cond_9
    iget-boolean v5, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    const-string v15, "responding reject"

    move/from16 v23, v8

    .end local v8    # "doneReading":Z
    .local v23, "doneReading":Z
    const/16 v8, 0x400

    if-eqz v5, :cond_a

    if-le v4, v8, :cond_a

    .line 242
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v5, Lcom/android/nfc/snep/SnepMessage;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v4

    invoke-direct/range {v16 .. v21}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v5

    .line 246
    :cond_a
    iget-boolean v5, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v5, :cond_d

    if-gt v4, v8, :cond_b

    const/4 v5, -0x1

    if-ne v4, v5, :cond_d

    .line 248
    :cond_b
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v5, Lcom/android/nfc/snep/SnepMessage;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v4

    invoke-direct/range {v16 .. v21}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v5

    .line 223
    .end local v23    # "doneReading":Z
    .restart local v8    # "doneReading":Z
    :cond_c
    move/from16 v23, v8

    .line 253
    .end local v8    # "doneReading":Z
    .restart local v23    # "doneReading":Z
    :cond_d
    if-le v4, v0, :cond_e

    .line 254
    const-string v5, "requesting continuation"

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v5, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    move v5, v0

    move/from16 v8, v23

    goto :goto_4

    .line 257
    :cond_e
    const/4 v8, 0x1

    move v5, v0

    .line 261
    .end local v0    # "readSize":I
    .end local v23    # "doneReading":Z
    .local v5, "readSize":I
    .restart local v8    # "doneReading":Z
    :goto_4
    if-nez v8, :cond_11

    .line 263
    :try_start_1
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v0

    move v11, v0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-ltz v11, :cond_10

    .line 273
    add-int/2addr v5, v11

    .line 274
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 275
    if-ne v5, v4, :cond_f

    .line 276
    const/4 v8, 0x1

    .line 286
    :cond_f
    goto :goto_4

    .line 267
    :cond_10
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v9}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 270
    goto :goto_5

    .line 268
    :catch_1
    move-exception v0

    .line 271
    :goto_5
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .end local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "partial":[B
    .end local v4    # "requestSize":I
    .end local v5    # "readSize":I
    .end local v6    # "requestVersion":B
    .end local v7    # "requestField":B
    .end local v8    # "doneReading":Z
    .end local v9    # "fieldReject":B
    .end local v10    # "fieldContinue":B
    .end local v11    # "size":I
    .end local v22    # "dataIn":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/nfc/snep/SnepMessenger;
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 279
    .restart local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "partial":[B
    .restart local v4    # "requestSize":I
    .restart local v5    # "readSize":I
    .restart local v6    # "requestVersion":B
    .restart local v7    # "requestField":B
    .restart local v8    # "doneReading":Z
    .restart local v9    # "fieldReject":B
    .restart local v10    # "fieldContinue":B
    .restart local v11    # "size":I
    .restart local v22    # "dataIn":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepMessenger;
    :catch_2
    move-exception v0

    move-object v12, v0

    .line 281
    .local v12, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v9}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v13

    invoke-interface {v0, v13}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 284
    goto :goto_6

    .line 282
    :catch_3
    move-exception v0

    .line 285
    :goto_6
    throw v12

    .line 291
    .end local v12    # "e":Ljava/io/IOException;
    :cond_11
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0
    :try_end_5
    .catch Landroid/nfc/FormatException; {:try_start_5 .. :try_end_5} :catch_4

    return-object v0

    .line 292
    :catch_4
    move-exception v0

    .line 293
    .local v0, "e":Landroid/nfc/FormatException;
    const-string v12, "Badly formatted NDEF message, ignoring"

    invoke-static {v14, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    new-instance v12, Lcom/android/nfc/snep/SnepException;

    invoke-direct {v12, v0}, Lcom/android/nfc/snep/SnepException;-><init>(Ljava/lang/Exception;)V

    throw v12

    .line 176
    .end local v0    # "e":Landroid/nfc/FormatException;
    .end local v22    # "dataIn":Ljava/io/DataInputStream;
    :cond_12
    move/from16 v23, v8

    .end local v8    # "doneReading":Z
    .restart local v23    # "doneReading":Z
    :try_start_6
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v9}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 179
    goto :goto_7

    .line 177
    :catch_5
    move-exception v0

    .line 180
    :goto_7
    new-instance v0, Ljava/io/IOException;

    const-string v8, "Error reading SNEP message."

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    .locals 14
    .param p1, "msg"    # Lcom/android/nfc/snep/SnepMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const-string v0, "Invalid SNEP message"

    invoke-virtual {p1}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v1

    .line 69
    .local v1, "buffer":[B
    iget-boolean v2, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v2, :cond_0

    .line 70
    const/16 v2, -0x80

    .local v2, "remoteContinue":B
    goto :goto_0

    .line 72
    .end local v2    # "remoteContinue":B
    :cond_0
    const/4 v2, 0x0

    .line 74
    .restart local v2    # "remoteContinue":B
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "about to send a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " byte message"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SnepMessenger"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    array-length v3, v1

    iget v6, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 78
    .local v3, "length":I
    const/4 v6, 0x0

    invoke-static {v1, v6, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 79
    .local v6, "tmpBuffer":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " byte fragment"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v7, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v7, v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 82
    array-length v7, v1

    if-ne v3, v7, :cond_1

    .line 83
    return-void

    .line 87
    :cond_1
    move v7, v3

    .line 88
    .local v7, "offset":I
    const/4 v9, 0x6

    new-array v10, v9, [B

    .line 89
    .local v10, "responseBytes":[B
    iget-object v11, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v11, v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 92
    :try_start_0
    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v11
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    .local v11, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    nop

    .line 97
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got response from first fragment: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v11}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v12

    if-ne v12, v2, :cond_6

    .line 103
    sget-boolean v12, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v12, :cond_2

    .line 104
    iget-boolean v12, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v12, :cond_2

    sget v12, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    if-ne v12, v9, :cond_2

    .line 105
    array-length v9, v1

    sub-int/2addr v9, v7

    iget v12, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 106
    add-int v9, v7, v3

    invoke-static {v1, v7, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v9, v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 109
    add-int/2addr v7, v3

    .line 111
    iget-object v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v9, v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 114
    :try_start_1
    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v9
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v11, v9

    .line 117
    nop

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got response from second fragment: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v11}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v9

    if-ne v9, v2, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 121
    return-void

    .line 115
    :catch_0
    move-exception v4

    .line 116
    .local v4, "e":Landroid/nfc/FormatException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 127
    .end local v4    # "e":Landroid/nfc/FormatException;
    :cond_2
    :goto_1
    array-length v9, v1

    if-ge v7, v9, :cond_5

    .line 128
    array-length v9, v1

    sub-int/2addr v9, v7

    iget v12, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 129
    add-int v9, v7, v3

    invoke-static {v1, v7, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v9, v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 133
    sget-boolean v9, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v9, :cond_4

    .line 134
    iget-boolean v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v9, :cond_4

    sget v9, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mTestCaseId:I

    const/4 v12, 0x1

    if-ne v9, v12, :cond_4

    .line 135
    iget-object v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v9, v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 137
    :try_start_2
    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v9
    :try_end_2
    .catch Landroid/nfc/FormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 140
    .end local v11    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    .local v9, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    nop

    .line 141
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got continue response after second fragment: and now disconnecting..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v9}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v11

    if-ne v11, v2, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 144
    return-void

    .line 142
    :cond_3
    move-object v11, v9

    goto :goto_2

    .line 138
    .end local v9    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    .restart local v11    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :catch_1
    move-exception v4

    .line 139
    .restart local v4    # "e":Landroid/nfc/FormatException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 149
    .end local v4    # "e":Landroid/nfc/FormatException;
    :cond_4
    :goto_2
    add-int/2addr v7, v3

    goto :goto_1

    .line 151
    :cond_5
    return-void

    .line 99
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid response from server ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v11}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    .end local v11    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :catch_2
    move-exception v4

    .line 94
    .restart local v4    # "e":Landroid/nfc/FormatException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
