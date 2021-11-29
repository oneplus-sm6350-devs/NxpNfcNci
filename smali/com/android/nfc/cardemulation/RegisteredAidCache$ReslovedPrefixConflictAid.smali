.class final Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;
.super Ljava/lang/Object;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredAidCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReslovedPrefixConflictAid"
.end annotation


# instance fields
.field matchingSubset:Z

.field prefixAid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 539
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->matchingSubset:Z

    return-void
.end method
