.class Lcom/admarvel/android/ads/p$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/p;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/p;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0, p3}, Lcom/admarvel/android/ads/p;->f(Lcom/admarvel/android/ads/p;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0, p4}, Lcom/admarvel/android/ads/p;->g(Lcom/admarvel/android/ads/p;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->i(Lcom/admarvel/android/ads/p;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v3}, Lcom/admarvel/android/ads/p;->a(Lcom/admarvel/android/ads/p;)I

    move-result v3

    if-ne v3, p3, :cond_3

    iget-object v3, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v3}, Lcom/admarvel/android/ads/p;->b(Lcom/admarvel/android/ads/p;)I

    move-result v3

    if-ne v3, p4, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v2}, Lcom/admarvel/android/ads/p;->d(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->f(Lcom/admarvel/android/ads/p;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    iget-object v1, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v1}, Lcom/admarvel/android/ads/p;->f(Lcom/admarvel/android/ads/p;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/p;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->start()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0, p1}, Lcom/admarvel/android/ads/p;->a(Lcom/admarvel/android/ads/p;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->l(Lcom/admarvel/android/ads/p;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->l(Lcom/admarvel/android/ads/p;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->f:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->m(Lcom/admarvel/android/ads/p;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->m(Lcom/admarvel/android/ads/p;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/p;->a(Lcom/admarvel/android/ads/p;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/admarvel/android/ads/p$7;->a:Lcom/admarvel/android/ads/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/p;->a(Z)V

    return-void
.end method
