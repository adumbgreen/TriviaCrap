.class Lcom/admarvel/android/ads/AdMarvelView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "CURRENT"

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelView;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->b(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView;->removeAllViews()V

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelView;->d()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelView;->d()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_2
    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->c()V

    goto :goto_0
.end method
