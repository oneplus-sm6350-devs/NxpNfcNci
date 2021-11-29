.class public Lcom/android/nfc/TechListChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "TechListChooserActivity.java"


# static fields
.field public static final EXTRA_RESOLVE_INFOS:Ljava/lang/String; = "rlist"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-virtual {p0}, Lcom/android/nfc/TechListChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 36
    .local v1, "targetParcelable":Landroid/os/Parcelable;
    instance-of v2, v1, Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target is not an intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TechListChooserActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lcom/android/nfc/TechListChooserActivity;->finish()V

    .line 39
    return-void

    .line 41
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/content/Intent;

    .line 42
    .local v2, "target":Landroid/content/Intent;
    const-string v3, "rlist"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 43
    .local v3, "rList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/nfc/TechListChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040124

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 44
    .local v11, "title":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, v2

    move-object v7, v11

    move-object v9, v3

    invoke-super/range {v4 .. v10}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 45
    return-void
.end method

.method public safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 3
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .line 52
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TechListChooserActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
