.class Lcom/admarvel/android/ads/AdMarvelWebView$v$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelWebView$v;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView;

.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

.field final synthetic c:Lcom/admarvel/android/ads/AdMarvelWebView$v;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$v;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$3;->c:Lcom/admarvel/android/ads/AdMarvelWebView$v;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$3;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$3;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$3;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->I(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$3;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->I(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$3;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$v$3;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->I(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
