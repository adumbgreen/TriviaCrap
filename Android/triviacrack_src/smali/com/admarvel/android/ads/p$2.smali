.class Lcom/admarvel/android/ads/p$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/p;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/p;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/p;->c(Lcom/admarvel/android/ads/p;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    iget-object v1, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    iget-object v2, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/admarvel/android/ads/p;->c(Lcom/admarvel/android/ads/p;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/p;->b(Lcom/admarvel/android/ads/p;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/p;->a(Lcom/admarvel/android/ads/p;Z)Z

    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->c(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->c(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v1}, Lcom/admarvel/android/ads/p;->d(Lcom/admarvel/android/ads/p;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->e(Lcom/admarvel/android/ads/p;)Lcom/admarvel/android/ads/p$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->e(Lcom/admarvel/android/ads/p;)Lcom/admarvel/android/ads/p$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/admarvel/android/ads/p$a;->k()V

    :cond_1
    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/p;->a(Lcom/admarvel/android/ads/p;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/p;->b(Lcom/admarvel/android/ads/p;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->f(Lcom/admarvel/android/ads/p;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/p;->seekTo(I)V

    :cond_2
    iget-object v1, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v1}, Lcom/admarvel/android/ads/p;->a(Lcom/admarvel/android/ads/p;)I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v1}, Lcom/admarvel/android/ads/p;->b(Lcom/admarvel/android/ads/p;)I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/p;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v2}, Lcom/admarvel/android/ads/p;->a(Lcom/admarvel/android/ads/p;)I

    move-result v2

    iget-object v3, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v3}, Lcom/admarvel/android/ads/p;->b(Lcom/admarvel/android/ads/p;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v1, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v1}, Lcom/admarvel/android/ads/p;->g(Lcom/admarvel/android/ads/p;)I

    move-result v1

    iget-object v2, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v2}, Lcom/admarvel/android/ads/p;->a(Lcom/admarvel/android/ads/p;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v1}, Lcom/admarvel/android/ads/p;->h(Lcom/admarvel/android/ads/p;)I

    move-result v1

    iget-object v2, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v2}, Lcom/admarvel/android/ads/p;->b(Lcom/admarvel/android/ads/p;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v1}, Lcom/admarvel/android/ads/p;->i(Lcom/admarvel/android/ads/p;)I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->start()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/p;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-static {v0}, Lcom/admarvel/android/ads/p;->i(Lcom/admarvel/android/ads/p;)I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/admarvel/android/ads/p$2;->a:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->start()V

    goto :goto_0
.end method
