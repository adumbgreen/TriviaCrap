.class Lcom/admarvel/android/ads/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/f;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/f;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/f;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/f$1;->a:Lcom/admarvel/android/ads/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/admarvel/android/ads/f$1;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/f;->a(Lcom/admarvel/android/ads/f;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/f$1;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/f;->b(Lcom/admarvel/android/ads/f;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/f$1;->a:Lcom/admarvel/android/ads/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/f;->d(Lcom/admarvel/android/ads/f;Z)Z

    iget-object v0, p0, Lcom/admarvel/android/ads/f$1;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v0}, Lcom/admarvel/android/ads/f;->g(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/f$1;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v0}, Lcom/admarvel/android/ads/f;->g(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/f$1;->a:Lcom/admarvel/android/ads/f;

    invoke-static {v1}, Lcom/admarvel/android/ads/f;->d(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
