.class Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$2;
.super Ljava/lang/Object;
.source "ISecureElement.java"

# interfaces
.implements Landroid/hardware/secure_element/V1_0/ISecureElement$openBasicChannelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;

    .line 751
    iput-object p1, p0, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$2;->this$0:Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;

    iput-object p2, p0, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Ljava/util/ArrayList;B)V
    .locals 2
    .param p2, "status"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;B)V"
        }
    .end annotation

    .line 754
    .local p1, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 755
    iget-object v0, p0, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 756
    iget-object v0, p0, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 757
    iget-object v0, p0, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 758
    return-void
.end method
