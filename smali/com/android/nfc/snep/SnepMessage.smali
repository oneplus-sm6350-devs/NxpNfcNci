.class public final Lcom/android/nfc/snep/SnepMessage;
.super Ljava/lang/Object;
.source "SnepMessage.java"


# static fields
.field private static final HEADER_LENGTH:I = 0x6

.field public static final MAL:I = -0x1

.field public static final MAL_IUT:I = 0x400

.field private static final NDEF_SHORT_TEST_RECORD:[B

.field private static final NDEF_TEST_RECORD:[B

.field public static final REQUEST_CONTINUE:B = 0x0t

.field public static final REQUEST_GET:B = 0x1t

.field public static final REQUEST_PUT:B = 0x2t

.field public static final REQUEST_REJECT:B = 0x7ft

.field public static final REQUEST_RFU:B = 0x3t

.field public static final RESPONSE_BAD_REQUEST:B = -0x3et

.field public static final RESPONSE_CONTINUE:B = -0x80t

.field public static final RESPONSE_EXCESS_DATA:B = -0x3ft

.field public static final RESPONSE_NOT_FOUND:B = -0x40t

.field public static final RESPONSE_NOT_IMPLEMENTED:B = -0x20t

.field public static final RESPONSE_REJECT:B = -0x1t

.field public static final RESPONSE_SUCCESS:B = -0x7ft

.field public static final RESPONSE_UNSUPPORTED_VERSION:B = -0x1ft

.field public static final VERSION:B = 0x10t

.field public static final VERSION_MAJOR:B = 0x1t

.field public static final VERSION_MINOR:B


# instance fields
.field private final mAcceptableLength:I

.field private final mField:B

.field private final mLength:I

.field private final mNdefMessage:Landroid/nfc/NdefMessage;

.field private final mVersion:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/snep/SnepMessage;->NDEF_SHORT_TEST_RECORD:[B

    .line 56
    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/nfc/snep/SnepMessage;->NDEF_TEST_RECORD:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x2ft
        0x1t
        0x1et
        0x54t
        0x2t
        0x6ct
        0x61t
        0x4ct
        0x6ft
        0x72t
        0x65t
        0x6dt
        0x20t
        0x69t
        0x70t
        0x73t
        0x75t
        0x6dt
        0x20t
        0x64t
        0x6ft
        0x6ct
        0x6ft
        0x72t
        0x20t
        0x73t
        0x69t
        0x74t
        0x20t
        0x61t
        0x6dt
        0x65t
        0x74t
        0x2et
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x3ft
        0x1t
        0x0t
        0x0t
        0x0t
        0x1et
        0x54t
        0x2t
        0x6ct
        0x61t
        0x4ct
        0x6ft
        0x72t
        0x65t
        0x6dt
        0x20t
        0x69t
        0x70t
        0x73t
        0x75t
        0x6dt
        0x20t
        0x64t
        0x6ft
        0x6ct
        0x6ft
        0x72t
        0x20t
        0x73t
        0x69t
        0x74t
        0x20t
        0x61t
        0x6dt
        0x65t
        0x74t
        0x2et
    .end array-data
.end method

.method constructor <init>(BBIILandroid/nfc/NdefMessage;)V
    .locals 0
    .param p1, "version"    # B
    .param p2, "field"    # B
    .param p3, "length"    # I
    .param p4, "acceptableLength"    # I
    .param p5, "ndefMessage"    # Landroid/nfc/NdefMessage;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-byte p1, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    .line 168
    iput-byte p2, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    .line 169
    iput p3, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    .line 170
    iput p4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    .line 171
    iput-object p5, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 172
    return-void
.end method

.method private constructor <init>([B)V
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 143
    .local v0, "input":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    .line 144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    .line 145
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    .line 146
    iget-byte v1, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    .line 148
    const/16 v1, 0xa

    .line 149
    .local v1, "ndefOffset":I
    iget v2, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    add-int/lit8 v2, v2, -0x4

    .local v2, "ndefLength":I
    goto :goto_0

    .line 151
    .end local v1    # "ndefOffset":I
    .end local v2    # "ndefLength":I
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    .line 152
    const/4 v1, 0x6

    .line 153
    .restart local v1    # "ndefOffset":I
    iget v2, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    .line 156
    .restart local v2    # "ndefLength":I
    :goto_0
    if-lez v2, :cond_1

    .line 157
    new-array v3, v2, [B

    .line 158
    .local v3, "bytes":[B
    const/4 v4, 0x0

    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    new-instance v4, Landroid/nfc/NdefMessage;

    invoke-direct {v4, v3}, Landroid/nfc/NdefMessage;-><init>([B)V

    iput-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 160
    .end local v3    # "bytes":[B
    goto :goto_1

    .line 161
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 163
    :goto_1
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    invoke-direct {v0, p0}, Lcom/android/nfc/snep/SnepMessage;-><init>([B)V

    return-object v0
.end method

.method public static getGetRequest(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 7
    .param p0, "acceptableLength"    # I
    .param p1, "ndef"    # Landroid/nfc/NdefMessage;

    .line 71
    new-instance v6, Lcom/android/nfc/snep/SnepMessage;

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v3, v0, 0x4

    const/16 v1, 0x10

    const/4 v2, 0x1

    move-object v0, v6

    move v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v6
.end method

.method public static getLargeNdef()Landroid/nfc/NdefMessage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 96
    const-string v0, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at lorem nunc, ut venenatis quam. Etiam id dolor quam, at viverra dolor. Phasellus eu lacus ligula, quis euismod erat. Sed feugiat, ligula at mollis aliquet, justo lacus condimentum eros, non tincidunt neque ipsum eu risus. Sed adipiscing dui euismod tellus ullamcorper ornare. Phasellus mattis risus et lectus euismod eu fermentum sem cursus. Phasellus tristique consectetur mauris eu porttitor. Sed lobortis porttitor orci."

    .line 104
    .local v0, "snepTestData2":Ljava/lang/String;
    const-string v1, "la"

    .line 105
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 106
    .local v2, "textBytes":[B
    const-string v3, "US-ASCII"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 107
    .local v3, "langBytes":[B
    array-length v4, v3

    .line 108
    .local v4, "langLength":I
    array-length v5, v2

    .line 110
    .local v5, "textLength":I
    add-int/lit8 v6, v4, 0x1

    add-int/2addr v6, v5

    new-array v6, v6, [B

    .line 111
    .local v6, "payload":[B
    int-to-byte v7, v4

    const/4 v8, 0x0

    aput-byte v7, v6, v8

    .line 113
    const/4 v7, 0x1

    invoke-static {v3, v8, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    add-int/lit8 v9, v4, 0x1

    invoke-static {v2, v8, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    new-instance v9, Landroid/nfc/NdefRecord;

    sget-object v10, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v11, v8, [B

    invoke-direct {v9, v7, v10, v11, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 117
    .local v9, "data2":Landroid/nfc/NdefRecord;
    new-instance v10, Landroid/nfc/NdefMessage;

    new-array v7, v7, [Landroid/nfc/NdefRecord;

    aput-object v9, v7, v8

    invoke-direct {v10, v7}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v10
.end method

.method public static getMessage(B)Lcom/android/nfc/snep/SnepMessage;
    .locals 7
    .param p0, "field"    # B

    .line 80
    new-instance v6, Lcom/android/nfc/snep/SnepMessage;

    const/16 v1, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v6
.end method

.method public static getPutRequest(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 7
    .param p0, "ndef"    # Landroid/nfc/NdefMessage;

    .line 76
    new-instance v6, Lcom/android/nfc/snep/SnepMessage;

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v3, v0

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v6
.end method

.method public static getSmallNdef()Landroid/nfc/NdefMessage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 121
    const-string v0, "Lorem ipsum dolor sit amet."

    .line 122
    .local v0, "snepTestData1":Ljava/lang/String;
    const-string v1, "la"

    .line 123
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 124
    .local v2, "textBytes":[B
    const-string v3, "US-ASCII"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 125
    .local v3, "langBytes":[B
    array-length v4, v3

    .line 126
    .local v4, "langLength":I
    array-length v5, v2

    .line 128
    .local v5, "textLength":I
    add-int/lit8 v6, v4, 0x1

    add-int/2addr v6, v5

    new-array v6, v6, [B

    .line 129
    .local v6, "payload":[B
    int-to-byte v7, v4

    const/4 v8, 0x0

    aput-byte v7, v6, v8

    .line 131
    const/4 v7, 0x1

    invoke-static {v3, v8, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    add-int/lit8 v9, v4, 0x1

    invoke-static {v2, v8, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    new-instance v9, Landroid/nfc/NdefRecord;

    sget-object v10, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v11, v8, [B

    invoke-direct {v9, v7, v10, v11, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 135
    .local v9, "data1":Landroid/nfc/NdefRecord;
    new-instance v10, Landroid/nfc/NdefMessage;

    new-array v7, v7, [Landroid/nfc/NdefRecord;

    aput-object v9, v7, v8

    invoke-direct {v10, v7}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v10
.end method

.method public static getSuccessResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 13
    .param p0, "ndef"    # Landroid/nfc/NdefMessage;

    .line 84
    if-nez p0, :cond_0

    .line 85
    new-instance v6, Lcom/android/nfc/snep/SnepMessage;

    const/16 v1, 0x10

    const/16 v2, -0x7f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v6

    .line 87
    :cond_0
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/16 v8, 0x10

    const/16 v9, -0x7f

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    array-length v10, v1

    const/4 v11, 0x0

    move-object v7, v0

    move-object v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0
.end method


# virtual methods
.method public getAcceptableLength()I
    .locals 2

    .line 236
    iget-byte v0, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 240
    iget v0, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    return v0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Acceptable Length only available on get request messages."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getField()B
    .locals 1

    .line 224
    iget-byte v0, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    return v0
.end method

.method public getNdefMessage()Landroid/nfc/NdefMessage;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method public getVersion()B
    .locals 1

    .line 228
    iget-byte v0, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    return v0
.end method

.method public toByteArray()[B
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    const/4 v1, 0x6

    if-eqz v0, :cond_4

    .line 177
    sget-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    if-eqz v0, :cond_3

    .line 178
    sget v0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    sget v0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    sget-boolean v0, Lcom/android/nfc/NfcService;->sIsShortRecordLayout:Z

    if-eqz v0, :cond_1

    .line 182
    sget-object v0, Lcom/android/nfc/snep/SnepMessage;->NDEF_SHORT_TEST_RECORD:[B

    .local v0, "bytes":[B
    goto :goto_1

    .line 184
    .end local v0    # "bytes":[B
    :cond_1
    sget-object v0, Lcom/android/nfc/snep/SnepMessage;->NDEF_TEST_RECORD:[B

    .restart local v0    # "bytes":[B
    goto :goto_1

    .line 179
    .end local v0    # "bytes":[B
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto :goto_1

    .line 188
    .end local v0    # "bytes":[B
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto :goto_1

    .line 191
    .end local v0    # "bytes":[B
    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 196
    .restart local v0    # "bytes":[B
    :goto_1
    :try_start_0
    iget-byte v2, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 197
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v4, v0

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v1, v2

    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 199
    .end local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    :cond_5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v4, v0

    add-int/2addr v4, v1

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v1, v2

    .line 202
    .restart local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    :goto_2
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 203
    .local v2, "output":Ljava/io/DataOutputStream;
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 204
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 205
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    if-ne v4, v3, :cond_6

    .line 206
    array-length v3, v0

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 207
    iget v3, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_3

    .line 209
    :cond_6
    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 211
    :goto_3
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v2    # "output":Ljava/io/DataOutputStream;
    nop

    .line 216
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 212
    .end local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method
