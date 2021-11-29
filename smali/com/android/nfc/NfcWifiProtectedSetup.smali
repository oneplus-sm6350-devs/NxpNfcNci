.class public final Lcom/android/nfc/NfcWifiProtectedSetup;
.super Ljava/lang/Object;
.source "NfcWifiProtectedSetup.java"


# static fields
.field private static final AUTH_TYPE_EXPECTED_SIZE:S = 0x2s

.field private static final AUTH_TYPE_FIELD_ID:S = 0x1003s

.field private static final AUTH_TYPE_OPEN:S = 0x1s

.field private static final AUTH_TYPE_WPA2_EAP:S = 0x10s

.field private static final AUTH_TYPE_WPA2_PSK:S = 0x20s

.field private static final AUTH_TYPE_WPA_AND_WPA2_PSK:S = 0x22s

.field private static final AUTH_TYPE_WPA_EAP:S = 0x8s

.field private static final AUTH_TYPE_WPA_PSK:S = 0x2s

.field private static final CREDENTIAL_FIELD_ID:S = 0x100es

.field public static final EXTRA_WIFI_CONFIG:Ljava/lang/String; = "com.android.nfc.WIFI_CONFIG_EXTRA"

.field private static final MAX_NETWORK_KEY_SIZE_BYTES:I = 0x40

.field private static final NETWORK_KEY_FIELD_ID:S = 0x1027s

.field public static final NFC_TOKEN_MIME_TYPE:Ljava/lang/String; = "application/vnd.wfa.wsc"

.field private static final SSID_FIELD_ID:S = 0x1045s


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskValidFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 188
    const-string v0, "[0-9A-Fa-f]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-static {p0}, Lcom/android/nfc/NfcWifiProtectedSetup;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 191
    :cond_0
    return-object p0
.end method

.method private static parse(Landroid/nfc/NdefMessage;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p0, "message"    # Landroid/nfc/NdefMessage;

    .line 99
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 101
    .local v0, "records":[Landroid/nfc/NdefRecord;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 102
    .local v3, "record":Landroid/nfc/NdefRecord;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, "application/vnd.wfa.wsc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 104
    .local v4, "payload":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 106
    .local v5, "fieldId":S
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    .line 107
    .local v6, "fieldSize":I
    const/16 v7, 0x100e

    if-ne v5, v7, :cond_0

    .line 108
    invoke-static {v4, v6}, Lcom/android/nfc/NfcWifiProtectedSetup;->parseCredential(Ljava/nio/ByteBuffer;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1

    .line 110
    :cond_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    .end local v5    # "fieldId":S
    .end local v6    # "fieldSize":I
    goto :goto_1

    .line 101
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    .end local v4    # "payload":Ljava/nio/ByteBuffer;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseCredential(Ljava/nio/ByteBuffer;I)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 119
    .local v0, "startPosition":I
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 120
    .local v1, "result":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int v3, v0, p1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_7

    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 122
    .local v2, "fieldId":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    const v5, 0xffff

    and-int/2addr v3, v5

    .line 125
    .local v3, "fieldSize":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v3

    add-int v6, v0, p1

    if-le v5, v6, :cond_0

    .line 126
    return-object v4

    .line 129
    :cond_0
    const/16 v5, 0x1003

    if-eq v2, v5, :cond_4

    const/16 v5, 0x1027

    if-eq v2, v5, :cond_2

    const/16 v4, 0x1045

    if-eq v2, v4, :cond_1

    .line 156
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 131
    :cond_1
    new-array v4, v3, [B

    .line 132
    .local v4, "ssid":[B
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 134
    goto :goto_1

    .line 136
    .end local v4    # "ssid":[B
    :cond_2
    const/16 v5, 0x40

    if-le v3, v5, :cond_3

    .line 137
    return-object v4

    .line 139
    :cond_3
    new-array v4, v3, [B

    .line 140
    .local v4, "networkKey":[B
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 141
    if-lez v3, :cond_6

    .line 142
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcom/android/nfc/NfcWifiProtectedSetup;->getPskValidFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 146
    .end local v4    # "networkKey":[B
    :cond_4
    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    .line 148
    return-object v4

    .line 151
    :cond_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 152
    .local v4, "authType":S
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v5, v4}, Lcom/android/nfc/NfcWifiProtectedSetup;->populateAllowedKeyManagement(Ljava/util/BitSet;S)V

    .line 153
    nop

    .line 159
    .end local v2    # "fieldId":S
    .end local v3    # "fieldSize":I
    .end local v4    # "authType":S
    :cond_6
    :goto_1
    goto :goto_0

    .line 161
    :cond_7
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 162
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v2

    if-nez v2, :cond_8

    .line 163
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 164
    return-object v1

    .line 167
    :cond_8
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 168
    return-object v1

    .line 173
    :cond_9
    return-object v4
.end method

.method private static populateAllowedKeyManagement(Ljava/util/BitSet;S)V
    .locals 3
    .param p0, "allowedKeyManagement"    # Ljava/util/BitSet;
    .param p1, "authType"    # S

    .line 177
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/16 v2, 0x20

    if-eq p1, v2, :cond_3

    const/16 v2, 0x22

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    const/16 v2, 0x10

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    if-ne p1, v0, :cond_4

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 181
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 179
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 185
    :cond_4
    :goto_2
    return-void
.end method

.method public static tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z
    .locals 6
    .param p0, "ndef"    # Landroid/nfc/tech/Ndef;
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 70
    .local v1, "cachedNdefMessage":Landroid/nfc/NdefMessage;
    if-nez v1, :cond_1

    .line 71
    return v0

    .line 76
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/android/nfc/NfcWifiProtectedSetup;->parse(Landroid/nfc/NdefMessage;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v2, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    nop

    .line 82
    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 85
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 82
    const-string v5, "no_config_wifi"

    invoke-virtual {v3, v5, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    const-string v3, "com.android.nfc.WIFI_CONFIG_EXTRA"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-class v3, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 88
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const v3, 0x10008000

    .line 89
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, "configureNetworkIntent":Landroid/content/Intent;
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 92
    const/4 v3, 0x1

    return v3

    .line 95
    .end local v0    # "configureNetworkIntent":Landroid/content/Intent;
    :cond_2
    return v0

    .line 77
    .end local v2    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    return v0

    .line 66
    .end local v1    # "cachedNdefMessage":Landroid/nfc/NdefMessage;
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :cond_3
    :goto_0
    return v0
.end method
