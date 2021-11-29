.class public Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
.super Ljava/lang/Object;
.source "HandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothHandoverData"
.end annotation


# instance fields
.field public btClass:Landroid/bluetooth/BluetoothClass;

.field public carrierActivating:Z

.field public device:Landroid/bluetooth/BluetoothDevice;

.field public name:Ljava/lang/String;

.field public oobData:Landroid/bluetooth/OobData;

.field public transport:I

.field public uuids:[Landroid/os/ParcelUuid;

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    .line 98
    iput v0, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    .line 101
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->btClass:Landroid/bluetooth/BluetoothClass;

    return-void
.end method
