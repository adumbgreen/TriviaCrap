.class Lcom/admarvel/android/ads/AdMarvelView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/admarvel/android/ads/AdMarvelAd;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelView$f;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    instance-of v0, p2, Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelView;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelView;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelView;->d()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object p2, v0

    :cond_0
    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelView$f;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/admarvel/android/util/a;->b(Landroid/content/Context;)Lcom/admarvel/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelView$f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/admarvel/android/util/a;->a(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$f;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdHistoryCounter(I)V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$f;->a:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdHistoryDumpString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/admarvel/android/util/a;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
