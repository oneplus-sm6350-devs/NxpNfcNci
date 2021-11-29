.class Lcom/android/nfc/beam/BeamTransferRecord$1;
.super Ljava/lang/Object;
.source "BeamTransferRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/BeamTransferRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/nfc/beam/BeamTransferRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/beam/BeamTransferRecord;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, "deviceType":I
    sget v1, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 60
    return-object v2

    .line 63
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 64
    .local v1, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v3, v4

    .line 65
    .local v3, "remoteActivating":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 66
    .local v4, "numUris":I
    const/4 v5, 0x0

    .line 67
    .local v5, "uris":[Landroid/net/Uri;
    if-lez v4, :cond_2

    .line 68
    new-array v5, v4, [Landroid/net/Uri;

    .line 69
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 72
    :cond_2
    new-instance v6, Lcom/android/nfc/beam/BeamTransferRecord;

    invoke-direct {v6, v1, v3, v5, v2}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;Lcom/android/nfc/beam/BeamTransferRecord$1;)V

    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/BeamTransferRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/nfc/beam/BeamTransferRecord;
    .locals 1
    .param p1, "size"    # I

    .line 79
    new-array v0, p1, [Lcom/android/nfc/beam/BeamTransferRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/BeamTransferRecord$1;->newArray(I)[Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object p1

    return-object p1
.end method
