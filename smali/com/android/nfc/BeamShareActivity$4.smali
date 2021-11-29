.class Lcom/android/nfc/BeamShareActivity$4;
.super Ljava/lang/Object;
.source "BeamShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/BeamShareActivity;

.field final synthetic val$shareData:Landroid/nfc/BeamShareData;


# direct methods
.method constructor <init>(Lcom/android/nfc/BeamShareActivity;Landroid/nfc/BeamShareData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/BeamShareActivity;

    .line 304
    iput-object p1, p0, Lcom/android/nfc/BeamShareActivity$4;->this$0:Lcom/android/nfc/BeamShareActivity;

    iput-object p2, p0, Lcom/android/nfc/BeamShareActivity$4;->val$shareData:Landroid/nfc/BeamShareData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$4;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$4;->val$shareData:Landroid/nfc/BeamShareData;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->invokeBeam(Landroid/nfc/BeamShareData;)Z

    .line 308
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$4;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-static {v0}, Lcom/android/nfc/BeamShareActivity;->access$000(Lcom/android/nfc/BeamShareActivity;)V

    .line 309
    return-void
.end method
