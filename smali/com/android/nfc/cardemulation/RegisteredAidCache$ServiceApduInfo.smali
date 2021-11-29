.class final Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;
.super Ljava/lang/Object;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredAidCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceApduInfo"
.end annotation


# instance fields
.field apdu:Landroid/nfc/cardemulation/NfcAidGroup$ApduPattern;

.field service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 127
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
