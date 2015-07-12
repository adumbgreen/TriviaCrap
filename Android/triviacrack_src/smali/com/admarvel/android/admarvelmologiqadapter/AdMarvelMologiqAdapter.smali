.class public Lcom/admarvel/android/admarvelmologiqadapter/AdMarvelMologiqAdapter;
.super Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;


# instance fields
.field private final contextReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/admarvelmologiqadapter/AdMarvelMologiqAdapter;->contextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getAdapterAnalyticsVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.2.9 2014-07-08"

    return-object v0
.end method

.method protected getEnhancedTargetParams(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/admarvelmologiqadapter/AdMarvelMologiqAdapter;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mologiq/analytics/s;->a(Landroid/content/Context;)Lcom/mologiq/analytics/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mologiq/analytics/s;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAdClick(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/admarvel/android/admarvelmologiqadapter/AdMarvelMologiqAdapter;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mologiq/analytics/s;->a(Landroid/content/Context;)Lcom/mologiq/analytics/s;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mologiq/analytics/s;->a(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onFailedToReceiveAd(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/admarvelmologiqadapter/AdMarvelMologiqAdapter;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mologiq/analytics/s;->a(Landroid/content/Context;)Lcom/mologiq/analytics/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mologiq/analytics/s;->a(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onReceiveAd(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/admarvelmologiqadapter/AdMarvelMologiqAdapter;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mologiq/analytics/s;->a(Landroid/content/Context;)Lcom/mologiq/analytics/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mologiq/analytics/s;->b(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected pause()V
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/admarvelmologiqadapter/AdMarvelMologiqAdapter;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mologiq/analytics/s;->a(Landroid/content/Context;)Lcom/mologiq/analytics/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mologiq/analytics/s;->b()V

    :cond_0
    return-void
.end method

.method protected resume()V
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/admarvelmologiqadapter/AdMarvelMologiqAdapter;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mologiq/analytics/s;->a(Landroid/content/Context;)Lcom/mologiq/analytics/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mologiq/analytics/s;->a()V

    :cond_0
    return-void
.end method

.method protected start()V
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/admarvelmologiqadapter/AdMarvelMologiqAdapter;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mologiq/analytics/s;->a(Landroid/content/Context;)Lcom/mologiq/analytics/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mologiq/analytics/s;->c()V

    :cond_0
    return-void
.end method

.method protected stop()V
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/admarvelmologiqadapter/AdMarvelMologiqAdapter;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mologiq/analytics/s;->a(Landroid/content/Context;)Lcom/mologiq/analytics/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mologiq/analytics/s;->d()V

    :cond_0
    return-void
.end method
