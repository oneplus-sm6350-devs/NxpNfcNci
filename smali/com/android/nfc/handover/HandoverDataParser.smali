.class public Lcom/android/nfc/handover/HandoverDataParser;
.super Ljava/lang/Object;
.source "HandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;,
        Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    }
.end annotation


# static fields
.field public static final BT_HANDOVER_LE_ROLE_CENTRAL_ONLY:I = 0x1

.field private static final BT_HANDOVER_TYPE_128_BIT_UUIDS_COMPLETE:I = 0x7

.field private static final BT_HANDOVER_TYPE_128_BIT_UUIDS_PARTIAL:I = 0x6

.field private static final BT_HANDOVER_TYPE_16_BIT_UUIDS_COMPLETE:I = 0x3

.field private static final BT_HANDOVER_TYPE_16_BIT_UUIDS_PARTIAL:I = 0x2

.field private static final BT_HANDOVER_TYPE_32_BIT_UUIDS_COMPLETE:I = 0x5

.field private static final BT_HANDOVER_TYPE_32_BIT_UUIDS_PARTIAL:I = 0x4

.field private static final BT_HANDOVER_TYPE_APPEARANCE:I = 0x19

.field private static final BT_HANDOVER_TYPE_CLASS_OF_DEVICE:I = 0xd

.field private static final BT_HANDOVER_TYPE_LE_ROLE:I = 0x1c

.field private static final BT_HANDOVER_TYPE_LE_SC_CONFIRMATION:I = 0x22

.field private static final BT_HANDOVER_TYPE_LE_SC_RANDOM:I = 0x23

.field private static final BT_HANDOVER_TYPE_LONG_LOCAL_NAME:I = 0x9

.field private static final BT_HANDOVER_TYPE_MAC:I = 0x1b

.field private static final BT_HANDOVER_TYPE_SECURITY_MANAGER_TK:I = 0x10

.field private static final BT_HANDOVER_TYPE_SHORT_LOCAL_NAME:I = 0x8

.field private static final CARRIER_POWER_STATE_ACTIVATING:I = 0x2

.field private static final CARRIER_POWER_STATE_ACTIVE:I = 0x1

.field private static final CARRIER_POWER_STATE_INACTIVE:I = 0x0

.field private static final CARRIER_POWER_STATE_UNKNOWN:I = 0x3

.field private static final CLASS_OF_DEVICE_SIZE:I = 0x3

.field private static final DBG:Z = false

.field private static final RTD_COLLISION_RESOLUTION:[B

.field public static final SECURITY_MANAGER_LE_SC_C_SIZE:I = 0x10

.field public static final SECURITY_MANAGER_LE_SC_R_SIZE:I = 0x10

.field public static final SECURITY_MANAGER_TK_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "NfcHandover"

.field private static final TYPE_BLE_OOB:[B

.field private static final TYPE_BT_OOB:[B

.field private static final TYPE_NOKIA:[B


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLocalBluetoothAddress:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 50
    const-string v1, "application/vnd.bluetooth.ep.oob"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    .line 51
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 52
    const-string v1, "application/vnd.bluetooth.le.oob"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    .line 54
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "nokia.com:bt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_NOKIA:[B

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x63t
        0x72t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    .line 116
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 117
    return-void
.end method

.method static addressToReverseBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .line 575
    const/4 v0, 0x0

    const-string v1, "NfcHandover"

    if-nez p0, :cond_0

    .line 576
    const-string v2, "BT address is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-object v0

    .line 579
    :cond_0
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    .line 581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is invalid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-object v0

    .line 584
    :cond_1
    array-length v0, v2

    new-array v0, v0, [B

    .line 586
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 588
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget-object v4, v2, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method static createCollisionRecord()Landroid/nfc/NdefRecord;
    .locals 5

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 121
    .local v0, "random":[B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 122
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method private parseBluetoothClassFromBluetoothRecord(Ljava/nio/ByteBuffer;)Landroid/bluetooth/BluetoothClass;
    .locals 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 630
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 631
    .local v0, "btClass":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 633
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 634
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 635
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 637
    new-instance v2, Landroid/bluetooth/BluetoothClass;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    return-object v2
.end method

.method private parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 562
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 563
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 566
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 567
    aget-byte v2, v0, v1

    .line 568
    .local v2, "temp":B
    rsub-int/lit8 v3, v1, 0x5

    aget-byte v3, v0, v3

    aput-byte v3, v0, v1

    .line 569
    rsub-int/lit8 v3, v1, 0x5

    aput-byte v2, v0, v3

    .line 566
    .end local v2    # "temp":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private parseUuidFromBluetoothRecord(Ljava/nio/ByteBuffer;II)[Landroid/os/ParcelUuid;
    .locals 6
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .param p2, "type"    # I
    .param p3, "len"    # I

    .line 596
    const/4 v0, 0x0

    const-string v1, "NfcHandover"

    packed-switch p2, :pswitch_data_0

    .line 610
    const-string v2, "BT OOB: invalid size of UUID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-object v0

    .line 607
    :pswitch_0
    const/16 v2, 0x10

    .line 608
    .local v2, "uuidSize":I
    goto :goto_0

    .line 603
    .end local v2    # "uuidSize":I
    :pswitch_1
    const/4 v2, 0x4

    .line 604
    .restart local v2    # "uuidSize":I
    goto :goto_0

    .line 599
    .end local v2    # "uuidSize":I
    :pswitch_2
    const/4 v2, 0x2

    .line 600
    .restart local v2    # "uuidSize":I
    nop

    .line 614
    :goto_0
    if-eqz p3, :cond_2

    rem-int v3, p3, v2

    if-eqz v3, :cond_0

    goto :goto_2

    .line 619
    :cond_0
    div-int v0, p3, v2

    .line 620
    .local v0, "num":I
    new-array v1, v0, [Landroid/os/ParcelUuid;

    .line 621
    .local v1, "uuids":[Landroid/os/ParcelUuid;
    new-array v3, v2, [B

    .line 622
    .local v3, "data":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 623
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 624
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v5

    aput-object v5, v1, v4

    .line 622
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 626
    .end local v4    # "i":I
    :cond_1
    return-object v1

    .line 615
    .end local v0    # "num":I
    .end local v1    # "uuids":[Landroid/os/ParcelUuid;
    .end local v3    # "data":[B
    :cond_2
    :goto_2
    const-string v3, "BT OOB: invalid size of UUIDs, should be multiples of UUID bytes length"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Landroid/nfc/NdefMessage;
    .locals 2
    .param p1, "bluetoothData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "selectMessage":Landroid/nfc/NdefMessage;
    if-eqz p1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 279
    .local v1, "bluetoothActivating":Z
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 284
    .end local v1    # "bluetoothActivating":Z
    :cond_0
    return-object v0
.end method


# virtual methods
.method createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;
    .locals 5
    .param p1, "activating"    # Z

    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 127
    .local v0, "payload":[B
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    .line 128
    :cond_0
    move v3, v2

    :goto_0
    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 129
    aput-byte v2, v0, v2

    .line 130
    const/16 v3, 0x62

    aput-byte v3, v0, v1

    .line 131
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 132
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "activating"    # Z

    .line 185
    new-instance v0, Landroid/nfc/NdefMessage;

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    .line 187
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 185
    return-object v0
.end method

.method createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;
    .locals 8

    .line 137
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 142
    .local v1, "payload":[B
    array-length v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 143
    array-length v2, v1

    shr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    .line 145
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "mFetchAddress":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 151
    iput-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 155
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/nfc/handover/HandoverDataParser;->addressToReverseBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 156
    .local v5, "addressBytes":[B
    const/4 v6, 0x2

    if-eqz v5, :cond_1

    .line 157
    const/4 v7, 0x6

    invoke-static {v5, v3, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 160
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 162
    .end local v4    # "mFetchAddress":Ljava/lang/String;
    .end local v5    # "addressBytes":[B
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    new-instance v0, Landroid/nfc/NdefRecord;

    sget-object v4, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    new-array v2, v2, [B

    const/16 v5, 0x62

    aput-byte v5, v2, v3

    invoke-direct {v0, v6, v4, v2, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0

    .line 162
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public createHandoverRequestMessage()Landroid/nfc/NdefMessage;
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    aput-object v2, v0, v1

    .line 179
    .local v0, "dataRecords":[Landroid/nfc/NdefRecord;
    new-instance v1, Landroid/nfc/NdefMessage;

    .line 180
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 179
    return-object v1
.end method

.method createHandoverRequestRecord()Landroid/nfc/NdefRecord;
    .locals 9

    .line 206
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/nfc/NdefRecord;

    .line 207
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v3

    aput-object v3, v1, v2

    .line 210
    .local v1, "messages":[Landroid/nfc/NdefRecord;
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-static {}, Lcom/android/nfc/handover/HandoverDataParser;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 212
    .local v3, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v4

    .line 214
    .local v4, "nestedPayload":[B
    array-length v5, v4

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 215
    .local v5, "payload":Ljava/nio/ByteBuffer;
    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 218
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    new-array v6, v6, [B

    .line 219
    .local v6, "payloadBytes":[B
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 221
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v7, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    const/4 v8, 0x0

    invoke-direct {v2, v0, v7, v8, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2
.end method

.method createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;
    .locals 8
    .param p1, "alternateCarrier"    # Landroid/nfc/NdefRecord;

    .line 191
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, p1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 192
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 194
    .local v2, "nestedPayload":[B
    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 195
    .local v3, "payload":Ljava/nio/ByteBuffer;
    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    new-array v5, v5, [B

    .line 199
    .local v5, "payloadBytes":[B
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 201
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const/4 v7, 0x0

    invoke-direct {v1, v4, v6, v7, v5}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method public getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .locals 9
    .param p1, "handoverRequest"    # Landroid/nfc/NdefMessage;

    .line 230
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    return-object v0

    .line 235
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 236
    .local v1, "handoverRequestRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 237
    return-object v0

    .line 240
    :cond_2
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 241
    return-object v0

    .line 245
    :cond_3
    const/4 v3, 0x0

    .line 246
    .local v3, "bluetoothData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_5

    aget-object v6, v4, v2

    .line 247
    .local v6, "dataRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 248
    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    sget-object v8, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 249
    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    .line 246
    .end local v6    # "dataRecord":Landroid/nfc/NdefRecord;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 255
    .local v2, "hs":Landroid/nfc/NdefMessage;
    if-eqz v2, :cond_6

    .line 256
    new-instance v0, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    invoke-direct {v0, v2, v3}, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)V

    return-object v0

    .line 259
    :cond_6
    return-object v0
.end method

.method public getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 1
    .param p1, "handoverSelect"    # Landroid/nfc/NdefMessage;

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    return-object v0
.end method

.method isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z
    .locals 16
    .param p1, "handoverRec"    # Landroid/nfc/NdefRecord;
    .param p2, "carrierId"    # [B

    .line 290
    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    .line 291
    .local v2, "payload":[B
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    array-length v0, v2

    const/4 v4, 0x1

    if-gt v0, v4, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    array-length v0, v2

    sub-int/2addr v0, v4

    new-array v5, v0, [B

    .line 294
    .local v5, "payloadNdef":[B
    array-length v0, v2

    sub-int/2addr v0, v4

    invoke-static {v2, v4, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    :try_start_0
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-direct {v0, v5}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .local v0, "msg":Landroid/nfc/NdefMessage;
    nop

    .line 302
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_0
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 303
    .local v9, "alt":Landroid/nfc/NdefRecord;
    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v10

    .line 304
    .local v10, "acPayload":[B
    if-eqz v10, :cond_3

    .line 305
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 306
    .local v11, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit8 v12, v12, 0x3

    .line 307
    .local v12, "cps":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    .line 308
    .local v13, "carrierRefLength":I
    array-length v14, v1

    if-eq v13, v14, :cond_1

    return v3

    .line 310
    :cond_1
    new-array v14, v13, [B

    .line 311
    .local v14, "carrierRefId":[B
    invoke-virtual {v11, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 312
    invoke-static {v14, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 314
    const/4 v6, 0x2

    if-ne v12, v6, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 302
    .end local v9    # "alt":Landroid/nfc/NdefRecord;
    .end local v10    # "acPayload":[B
    .end local v11    # "buf":Ljava/nio/ByteBuffer;
    .end local v12    # "cps":I
    .end local v13    # "carrierRefLength":I
    .end local v14    # "carrierRefId":[B
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 319
    :cond_4
    return v4

    .line 298
    .end local v0    # "msg":Landroid/nfc/NdefMessage;
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/nfc/FormatException;
    return v3

    .line 291
    .end local v0    # "e":Landroid/nfc/FormatException;
    .end local v5    # "payloadNdef":[B
    :cond_5
    :goto_1
    return v3
.end method

.method public isHandoverSupported()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 10
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 464
    const-string v0, "NfcHandover"

    new-instance v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v1}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 465
    .local v1, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 466
    const/4 v3, 0x2

    iput v3, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    .line 470
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_e

    .line 471
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 472
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 473
    .local v4, "type":I
    const/16 v5, 0x9

    if-eq v4, v5, :cond_c

    const/16 v5, 0x10

    if-eq v4, v5, :cond_9

    const/16 v6, 0x1b

    const/4 v7, 0x1

    if-eq v4, v6, :cond_7

    const/16 v6, 0x1c

    if-eq v4, v6, :cond_6

    const/16 v6, 0x22

    if-eq v4, v6, :cond_3

    const/16 v6, 0x23

    if-eq v4, v6, :cond_0

    .line 548
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v5, v7

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1

    .line 533
    :cond_0
    add-int/lit8 v6, v3, -0x1

    if-eq v6, v5, :cond_1

    .line 534
    const-string v5, "BT OOB: invalid size of LE SC Random, should be 16 bytes."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    goto/16 :goto_1

    .line 539
    :cond_1
    add-int/lit8 v5, v3, -0x1

    new-array v5, v5, [B

    .line 540
    .local v5, "leScR":[B
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 542
    iget-object v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    if-nez v6, :cond_2

    .line 543
    new-instance v6, Landroid/bluetooth/OobData;

    invoke-direct {v6}, Landroid/bluetooth/OobData;-><init>()V

    iput-object v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    .line 544
    :cond_2
    iget-object v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    invoke-virtual {v6, v5}, Landroid/bluetooth/OobData;->setLeSecureConnectionsRandom([B)V

    .line 545
    goto/16 :goto_1

    .line 518
    .end local v5    # "leScR":[B
    :cond_3
    add-int/lit8 v6, v3, -0x1

    if-eq v6, v5, :cond_4

    .line 519
    const-string v5, "BT OOB: invalid size of LE SC Confirmation, should be 16 bytes."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    goto/16 :goto_1

    .line 524
    :cond_4
    add-int/lit8 v5, v3, -0x1

    new-array v5, v5, [B

    .line 525
    .local v5, "leScC":[B
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 527
    iget-object v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    if-nez v6, :cond_5

    .line 528
    new-instance v6, Landroid/bluetooth/OobData;

    invoke-direct {v6}, Landroid/bluetooth/OobData;-><init>()V

    iput-object v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    .line 529
    :cond_5
    iget-object v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    invoke-virtual {v6, v5}, Landroid/bluetooth/OobData;->setLeSecureConnectionsConfirmation([B)V

    .line 530
    goto :goto_1

    .line 490
    .end local v5    # "leScC":[B
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 491
    .local v5, "role":B
    if-ne v5, v7, :cond_d

    .line 493
    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 494
    return-object v1

    .line 476
    .end local v5    # "role":B
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 477
    .local v5, "startpos":I
    const/4 v6, 0x7

    new-array v6, v6, [B

    .line 478
    .local v6, "bdaddr":[B
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 479
    iget-object v8, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    if-nez v8, :cond_8

    .line 480
    new-instance v8, Landroid/bluetooth/OobData;

    invoke-direct {v8}, Landroid/bluetooth/OobData;-><init>()V

    iput-object v8, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    .line 481
    :cond_8
    iget-object v8, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    invoke-virtual {v8, v6}, Landroid/bluetooth/OobData;->setLeBluetoothDeviceAddress([B)V

    .line 482
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 484
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v8

    .line 485
    .local v8, "address":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 486
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    iput-object v9, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 487
    iput-boolean v7, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 488
    goto :goto_1

    .line 503
    .end local v5    # "startpos":I
    .end local v6    # "bdaddr":[B
    .end local v8    # "address":[B
    :cond_9
    add-int/lit8 v6, v3, -0x1

    if-eq v6, v5, :cond_a

    .line 504
    const-string v5, "BT OOB: invalid size of SM TK, should be 16 bytes."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    goto :goto_1

    .line 509
    :cond_a
    add-int/lit8 v5, v3, -0x1

    new-array v5, v5, [B

    .line 510
    .local v5, "securityManagerTK":[B
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 512
    iget-object v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    if-nez v6, :cond_b

    .line 513
    new-instance v6, Landroid/bluetooth/OobData;

    invoke-direct {v6}, Landroid/bluetooth/OobData;-><init>()V

    iput-object v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    .line 514
    :cond_b
    iget-object v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    invoke-virtual {v6, v5}, Landroid/bluetooth/OobData;->setSecurityManagerTk([B)V

    .line 515
    goto :goto_1

    .line 498
    .end local v5    # "securityManagerTK":[B
    :cond_c
    add-int/lit8 v5, v3, -0x1

    new-array v5, v5, [B

    .line 499
    .local v5, "nameBytes":[B
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 500
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v6, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    nop

    .line 551
    .end local v3    # "len":I
    .end local v4    # "type":I
    .end local v5    # "nameBytes":[B
    :cond_d
    :goto_1
    goto/16 :goto_0

    .line 554
    :catch_0
    move-exception v2

    .line 555
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "BT OOB: payload shorter than expected"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 552
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :catch_1
    move-exception v2

    .line 553
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "BLE OOB: error parsing OOB data"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    nop

    .line 557
    :goto_2
    iget-boolean v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    iput-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 558
    :cond_f
    return-object v1
.end method

.method public parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 6
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .line 346
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 347
    .local v0, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    .line 348
    .local v1, "tnf":S
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    .line 351
    .local v2, "type":[B
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v5, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    return-object v3

    .line 356
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    return-object v3

    .line 361
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    .line 362
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    return-object v3

    .line 367
    :cond_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_NOKIA:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 368
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    return-object v3

    .line 371
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .line 326
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 327
    .local v4, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 328
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v7, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 329
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 330
    .local v0, "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/handover/HandoverDataParser;->isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    .line 333
    :cond_0
    return-object v0

    .line 336
    .end local v0    # "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_1
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    if-ne v5, v6, :cond_2

    .line 337
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 338
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverDataParser;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    return-object v0

    .line 326
    .end local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 10
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 399
    const-string v0, "NfcHandover"

    new-instance v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v1}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 400
    .local v1, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 403
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 404
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 405
    .local v2, "address":[B
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 406
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 408
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_5

    .line 409
    const/4 v4, 0x0

    .line 411
    .local v4, "success":Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 412
    .local v5, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 413
    .local v6, "type":I
    const/16 v7, 0xd

    if-eq v6, v7, :cond_1

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 421
    :pswitch_0
    iget-object v7, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-eqz v7, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    add-int/lit8 v7, v5, -0x1

    new-array v7, v7, [B

    .line 423
    .local v7, "nameBytes":[B
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 424
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v8, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 425
    const/4 v4, 0x1

    .line 426
    goto :goto_1

    .line 415
    .end local v7    # "nameBytes":[B
    :pswitch_1
    add-int/lit8 v7, v5, -0x1

    new-array v7, v7, [B

    .line 416
    .restart local v7    # "nameBytes":[B
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 417
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v8, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 418
    const/4 v4, 0x1

    .line 419
    goto :goto_1

    .line 433
    .end local v7    # "nameBytes":[B
    :pswitch_2
    add-int/lit8 v7, v5, -0x1

    invoke-direct {p0, p1, v6, v7}, Lcom/android/nfc/handover/HandoverDataParser;->parseUuidFromBluetoothRecord(Ljava/nio/ByteBuffer;II)[Landroid/os/ParcelUuid;

    move-result-object v7

    iput-object v7, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    .line 434
    iget-object v7, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    if-eqz v7, :cond_3

    .line 435
    const/4 v4, 0x1

    goto :goto_1

    .line 439
    :cond_1
    add-int/lit8 v7, v5, -0x1

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    .line 440
    const-string v7, "BT OOB: invalid size of Class of Device, should be 3 bytes."

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    goto :goto_1

    .line 444
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetoothClassFromBluetoothRecord(Ljava/nio/ByteBuffer;)Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    iput-object v7, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->btClass:Landroid/bluetooth/BluetoothClass;

    .line 445
    const/4 v4, 0x1

    .line 446
    nop

    .line 450
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 451
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v5

    sub-int/2addr v7, v3

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v4    # "success":Z
    .end local v5    # "len":I
    .end local v6    # "type":I
    :cond_4
    goto :goto_0

    .line 408
    .end local v2    # "address":[B
    :cond_5
    goto :goto_2

    .line 456
    :catch_0
    move-exception v2

    .line 457
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "BT OOB: payload shorter than expected"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 454
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :catch_1
    move-exception v2

    .line 455
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "BT OOB: invalid BT address"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    nop

    .line 459
    :goto_3
    iget-boolean v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    iput-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 460
    :cond_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 7
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 375
    const-string v0, "NfcHandover"

    new-instance v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v1}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 376
    .local v1, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 379
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 380
    const/4 v3, 0x6

    new-array v3, v3, [B

    .line 381
    .local v3, "address":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 382
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 383
    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 384
    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 385
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 386
    .local v2, "nameLength":I
    new-array v4, v2, [B

    .line 387
    .local v4, "nameBytes":[B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 388
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "nameLength":I
    .end local v3    # "address":[B
    .end local v4    # "nameBytes":[B
    goto :goto_0

    .line 391
    :catch_0
    move-exception v2

    .line 392
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "nokia: payload shorter than expected"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 389
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :catch_1
    move-exception v2

    .line 390
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "nokia: invalid BT address"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 394
    :goto_1
    iget-boolean v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 395
    :cond_0
    return-object v1
.end method
