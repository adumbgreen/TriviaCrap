.class Lcom/smartadserver/android/library/ui/SASAdView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->f(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 1334
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->g(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 1335
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->e(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;Z)Z

    .line 1337
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1339
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->h(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b()V

    .line 1349
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$7;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$7$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASAdView$7$1;-><init>(Lcom/smartadserver/android/library/ui/SASAdView$7;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    .line 1355
    return-void
.end method
