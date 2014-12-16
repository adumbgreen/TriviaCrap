.class final Lcom/millennialmedia/android/MMSDK$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMSDK;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 776
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 777
    return-void
.end method
