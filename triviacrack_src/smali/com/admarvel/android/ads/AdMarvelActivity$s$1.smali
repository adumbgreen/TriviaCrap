.class Lcom/admarvel/android/ads/AdMarvelActivity$s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelActivity$s;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/p;

.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

.field final synthetic c:Lcom/admarvel/android/ads/AdMarvelActivity;

.field final synthetic d:Lcom/admarvel/android/ads/AdMarvelActivity$s;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity$s;Lcom/admarvel/android/ads/p;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$s$1;->d:Lcom/admarvel/android/ads/AdMarvelActivity$s;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$s$1;->a:Lcom/admarvel/android/ads/p;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$s$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$s$1;->c:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$s$1;->a:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$s$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$s$1;->c:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->y(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$s$1;->a:Lcom/admarvel/android/ads/p;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->start()V

    goto :goto_0
.end method
