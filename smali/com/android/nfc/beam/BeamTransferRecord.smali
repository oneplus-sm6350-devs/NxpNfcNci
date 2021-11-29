.class public Lcom/android/nfc/beam/BeamTransferRecord;
.super Ljava/lang/Object;
.source "BeamTransferRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/nfc/beam/BeamTransferRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static DATA_LINK_TYPE_BLUETOOTH:I


# instance fields
.field public dataLinkType:I

.field public id:I

.field public remoteActivating:Z

.field public remoteDevice:Landroid/bluetooth/BluetoothDevice;

.field public uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    .line 53
    new-instance v0, Lcom/android/nfc/beam/BeamTransferRecord$1;

    invoke-direct {v0}, Lcom/android/nfc/beam/BeamTransferRecord$1;-><init>()V

    sput-object v0, Lcom/android/nfc/beam/BeamTransferRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V
    .locals 1
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "remoteActivating"    # Z
    .param p3, "uris"    # [Landroid/net/Uri;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    .line 40
    iput-object p1, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 41
    iput-boolean p2, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteActivating:Z

    .line 42
    iput-object p3, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    .line 44
    sget v0, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;Lcom/android/nfc/beam/BeamTransferRecord$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x1"    # Z
    .param p3, "x2"    # [Landroid/net/Uri;
    .param p4, "x3"    # Lcom/android/nfc/beam/BeamTransferRecord$1;

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V

    return-void
.end method

.method public static final forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;
    .locals 1
    .param p0, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "remoteActivating"    # Z
    .param p2, "uris"    # [Landroid/net/Uri;

    .line 50
    new-instance v0, Lcom/android/nfc/beam/BeamTransferRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteActivating:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 97
    :cond_1
    return-void
.end method
