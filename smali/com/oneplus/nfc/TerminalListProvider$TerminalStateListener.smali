.class public interface abstract Lcom/oneplus/nfc/TerminalListProvider$TerminalStateListener;
.super Ljava/lang/Object;
.source "TerminalListProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/nfc/TerminalListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TerminalStateListener"
.end annotation


# static fields
.field public static final CONNECTED:I = 0x1

.field public static final DISCONNECTED:I


# virtual methods
.method public abstract onTerminalStateChanged(Ljava/lang/String;I)V
.end method
