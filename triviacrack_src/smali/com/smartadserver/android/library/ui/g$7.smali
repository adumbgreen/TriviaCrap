.class Lcom/smartadserver/android/library/ui/g$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/g;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/g;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/g;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/g$7;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g$7;->a:Lcom/smartadserver/android/library/ui/g;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/g$7;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/g;->c(Lcom/smartadserver/android/library/ui/g;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/g;->removeView(Landroid/view/View;)V

    .line 424
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 426
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/g$7;->a:Lcom/smartadserver/android/library/ui/g;

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/smartadserver/android/library/ui/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/g$7;->a:Lcom/smartadserver/android/library/ui/g;

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/smartadserver/android/library/ui/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/g$7;->a:Lcom/smartadserver/android/library/ui/g;

    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/smartadserver/android/library/ui/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g$7;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/g;->c(Lcom/smartadserver/android/library/ui/g;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 430
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g$7;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/g;->c(Lcom/smartadserver/android/library/ui/g;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 431
    return-void
.end method
