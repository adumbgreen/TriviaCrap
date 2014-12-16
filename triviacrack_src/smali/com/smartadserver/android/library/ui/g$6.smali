.class Lcom/smartadserver/android/library/ui/g$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/g;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/g;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/g;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/g$6;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g$6;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/g;->c(Lcom/smartadserver/android/library/ui/g;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 248
    return-void
.end method
