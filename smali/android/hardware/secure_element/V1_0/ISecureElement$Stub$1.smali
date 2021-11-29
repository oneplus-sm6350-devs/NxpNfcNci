.class Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$1;
.super Ljava/lang/Object;
.source "ISecureElement.java"

# interfaces
.implements Landroid/hardware/secure_element/V1_0/ISecureElement$openLogicalChannelCallback;


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

    .line 729
    iput-object p1, p0, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$1;->this$0:Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;

    iput-object p2, p0, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/secure_element/V1_0/LogicalChannelResponse;B)V
    .locals 2
    .param p1, "response"    # Landroid/hardware/secure_element/V1_0/LogicalChannelResponse;
    .param p2, "status"    # B

    .line 732
    iget-object v0, p0, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 733
    iget-object v0, p0, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/secure_element/V1_0/LogicalChannelResponse;->writeToParcel(Landroid/os/HwParcel;)V

    .line 734
    iget-object v0, p0, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 735
    iget-object v0, p0, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 736
    return-void
.end method
