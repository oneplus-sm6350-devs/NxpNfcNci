.class Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;
.super Landroid/os/Handler;
.source "BluetoothPeripheralHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/BluetoothPeripheralHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 601
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 604
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v2, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_0

    goto/16 :goto_2

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 633
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v0, v3, :cond_1

    .line 634
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iput v4, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    goto :goto_0

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v0, v1, :cond_2

    .line 636
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iput v3, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 638
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v1, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    .line 639
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto/16 :goto_2

    .line 629
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    .line 630
    goto :goto_2

    .line 606
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_5

    return-void

    .line 607
    :cond_5
    const-string v0, "BluetoothPeripheralHandover"

    const-string v2, "Timeout completing BT handover"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v0, v4, :cond_6

    .line 609
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.nfc.handover.action.TIMEOUT_CONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 610
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v0, v3, :cond_7

    .line 611
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    const v1, 0x7f0b0020

    invoke-static {v0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->access$000(Lcom/android/nfc/handover/BluetoothPeripheralHandover;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 612
    :cond_7
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v0, v1, :cond_b

    .line 613
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-nez v0, :cond_8

    .line 614
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iput v5, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 616
    :cond_8
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-nez v0, :cond_9

    .line 617
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iput v5, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 619
    :cond_9
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v0, :cond_a

    .line 620
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iput v5, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 623
    :cond_a
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    .line 624
    goto :goto_2

    .line 626
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 627
    nop

    .line 642
    :goto_2
    return-void
.end method
