.class public final Lcom/android/nfc/sneptest/DtaSnepClient;
.super Ljava/lang/Object;
.source "DtaSnepClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ACCEPTABLE_LENGTH:I = 0x400

.field private static final DEFAULT_MIU:I = 0x80

.field private static final DEFAULT_PORT:I = 0x3f

.field private static final DEFAULT_RWSIZE:I = 0x1

.field private static final DEFAULT_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:snep"

.field private static final DISCONNECTED:I = 0x0

.field private static final SNEP_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:snep"

.field private static final TAG:Ljava/lang/String; = "DtaSnepClient"

.field public static mTestCaseId:I


# instance fields
.field private final mAcceptableLength:I

.field private final mFragmentLength:I

.field mMessenger:Lcom/android/nfc/snep/SnepMessenger;

.field private final mMiu:I

.field private final mPort:I

.field private final mRwSize:I

.field private final mServiceName:Ljava/lang/String;

.field private mState:I

.field private final mTransmissionLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 65
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mServiceName:Ljava/lang/String;

    .line 66
    const/16 v0, 0x3f

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    .line 67
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mAcceptableLength:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mFragmentLength:I

    .line 69
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMiu:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mRwSize:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I
    .param p4, "testCaseId"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 74
    iput-object p1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mServiceName:Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    .line 76
    const/16 v1, 0x400

    iput v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mAcceptableLength:I

    .line 77
    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mFragmentLength:I

    .line 78
    iput p2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMiu:I

    .line 79
    iput p3, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mRwSize:I

    .line 80
    sput p4, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    .line 81
    return-void
.end method


# virtual methods
.method public DtaClientOperations(Landroid/content/Context;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/android/nfc/DtaServiceConnector;

    invoke-direct {v0, p1}, Lcom/android/nfc/DtaServiceConnector;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "dtaServiceConnector":Lcom/android/nfc/DtaServiceConnector;
    invoke-virtual {v0}, Lcom/android/nfc/DtaServiceConnector;->bindService()V

    .line 86
    const-string v1, "DtaSnepClient"

    const-string v2, "Connecting remote server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Error connecting remote server"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    sget v2, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    const-string v3, "PUT Large Ndef Data"

    const-string v4, "GET Ndef Message"

    const-string v5, "PUT Small Ndef Data"

    packed-switch v2, :pswitch_data_0

    .line 229
    const-string v2, "Unknown test case"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 217
    :pswitch_0
    :try_start_1
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    .line 219
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 222
    :catch_1
    move-exception v1

    goto :goto_1

    .line 220
    :catch_2
    move-exception v1

    goto :goto_2

    .line 223
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 221
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 224
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    nop

    .line 225
    :goto_4
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 227
    goto/16 :goto_25

    .line 202
    :pswitch_1
    :try_start_2
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    .line 204
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_7

    .line 207
    :catch_3
    move-exception v1

    goto :goto_5

    .line 205
    :catch_4
    move-exception v1

    goto :goto_6

    .line 208
    .local v1, "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 206
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_6
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 209
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_7
    nop

    .line 210
    :goto_8
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 212
    goto/16 :goto_25

    .line 187
    :pswitch_2
    :try_start_3
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    .line 189
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_b

    .line 192
    :catch_5
    move-exception v1

    goto :goto_9

    .line 190
    :catch_6
    move-exception v1

    goto :goto_a

    .line 193
    .local v1, "e":Ljava/io/IOException;
    :goto_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 191
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_a
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 194
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_b
    nop

    .line 195
    :goto_c
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 197
    goto/16 :goto_25

    .line 172
    :pswitch_3
    :try_start_4
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getLargeNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 174
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getLargeNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_f

    .line 177
    :catch_7
    move-exception v1

    goto :goto_d

    .line 175
    :catch_8
    move-exception v1

    goto :goto_e

    .line 178
    .local v1, "e":Ljava/io/IOException;
    :goto_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 176
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_e
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 179
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_f
    nop

    .line 180
    :goto_10
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 182
    goto/16 :goto_25

    .line 157
    :pswitch_4
    :try_start_5
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getLargeNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 159
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getLargeNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_13

    .line 162
    :catch_9
    move-exception v1

    goto :goto_11

    .line 160
    :catch_a
    move-exception v1

    goto :goto_12

    .line 163
    .local v1, "e":Ljava/io/IOException;
    :goto_11
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 161
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_12
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 164
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_13
    nop

    .line 165
    :goto_14
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 167
    goto/16 :goto_25

    .line 142
    :pswitch_5
    :try_start_6
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 144
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    goto :goto_17

    .line 147
    :catch_b
    move-exception v1

    goto :goto_15

    .line 145
    :catch_c
    move-exception v1

    goto :goto_16

    .line 148
    .local v1, "e":Ljava/io/IOException;
    :goto_15
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 146
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_16
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 149
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_17
    nop

    .line 150
    :goto_18
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 152
    goto/16 :goto_25

    .line 127
    :pswitch_6
    :try_start_7
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 129
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    goto :goto_1b

    .line 132
    :catch_d
    move-exception v1

    goto :goto_19

    .line 130
    :catch_e
    move-exception v1

    goto :goto_1a

    .line 133
    .local v1, "e":Ljava/io/IOException;
    :goto_19
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 131
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1a
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 134
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1b
    nop

    .line 135
    :goto_1c
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 137
    goto :goto_25

    .line 112
    :pswitch_7
    :try_start_8
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 114
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f

    goto :goto_1f

    .line 117
    :catch_f
    move-exception v1

    goto :goto_1d

    .line 115
    :catch_10
    move-exception v1

    goto :goto_1e

    .line 118
    .local v1, "e":Ljava/io/IOException;
    :goto_1d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    .line 116
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1e
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 119
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1f
    nop

    .line 120
    :goto_20
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 122
    goto :goto_25

    .line 97
    :pswitch_8
    :try_start_9
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 99
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/DtaServiceConnector;->sendMessage(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11

    goto :goto_23

    .line 102
    :catch_11
    move-exception v1

    goto :goto_21

    .line 100
    :catch_12
    move-exception v1

    goto :goto_22

    .line 103
    .local v1, "e":Ljava/io/IOException;
    :goto_21
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    .line 101
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_22
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 104
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_23
    nop

    .line 105
    :goto_24
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 107
    nop

    .line 231
    :goto_25
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 3

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessenger;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    goto :goto_0

    :catchall_0
    move-exception v2

    iput-object v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 330
    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    throw v2

    .line 326
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    :catch_0
    move-exception v2

    .line 329
    iput-object v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 330
    :goto_0
    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 333
    :cond_0
    monitor-exit p0

    .line 334
    return-void

    .line 333
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    iget v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    if-nez v0, :cond_4

    .line 276
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 277
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 279
    const/4 v1, 0x0

    .line 282
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "DtaSnepClient"

    const-string v4, "about to create socket"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMiu:I

    iget v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mRwSize:I

    const/16 v6, 0x400

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v3

    move-object v1, v3

    .line 285
    if-eqz v1, :cond_2

    .line 288
    iget v3, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 289
    const-string v3, "DtaSnepClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "about to connect to service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v3, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mServiceName:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_0
    const-string v3, "DtaSnepClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "about to connect to port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget v3, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    invoke-interface {v1, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToSap(I)V

    .line 295
    :goto_0
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v3

    .line 296
    .local v3, "miu":I
    iget v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mFragmentLength:I

    if-ne v5, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mFragmentLength:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 297
    .local v4, "fragmentLength":I
    :goto_1
    new-instance v5, Lcom/android/nfc/snep/SnepMessenger;

    invoke-direct {v5, v0, v1, v4}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v5

    .line 313
    .end local v3    # "miu":I
    .end local v4    # "fragmentLength":I
    .local v0, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    nop

    .line 315
    monitor-enter p0

    .line 316
    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 317
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 318
    monitor-exit p0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 286
    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not connect to socket."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    throw v0
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 303
    .restart local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    :catch_0
    move-exception v0

    move-object v3, v1

    .line 304
    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .local v0, "e":Ljava/io/IOException;
    .local v3, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v3, :cond_3

    .line 306
    :try_start_4
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 307
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    .line 309
    :cond_3
    :goto_3
    monitor-enter p0

    .line 310
    :try_start_5
    iput v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 311
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 312
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to connect to socket"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 298
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_2
    move-exception v0

    .line 299
    .local v0, "e":Lcom/android/nfc/LlcpException;
    monitor-enter p0

    .line 300
    :try_start_7
    iput v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 301
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 302
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not connect to socket"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    .line 274
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :cond_4
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket already in use."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    throw v0

    .line 277
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    iget v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 259
    .local v0, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 261
    iget-object v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_1
    iget v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mAcceptableLength:I

    invoke-static {v2, p1}, Lcom/android/nfc/snep/SnepMessage;->getGetRequest(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 264
    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2
    :try_end_1
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-object v2

    .line 268
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 265
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v3

    .line 268
    .end local v2    # "e":Lcom/android/nfc/snep/SnepException;
    .restart local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 256
    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v0

    .line 259
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public put(Landroid/nfc/NdefMessage;)V
    .locals 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iget v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 240
    .local v0, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    iget-object v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_1
    invoke-static {p1}, Lcom/android/nfc/snep/SnepMessage;->getPutRequest(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 245
    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_1
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    nop

    .line 249
    :try_start_2
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 246
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v3

    .line 249
    .end local v2    # "e":Lcom/android/nfc/snep/SnepException;
    .restart local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 237
    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v0

    .line 240
    .restart local p0    # "this":Lcom/android/nfc/sneptest/DtaSnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
