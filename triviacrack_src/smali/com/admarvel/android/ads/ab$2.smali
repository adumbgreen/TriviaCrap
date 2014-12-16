.class Lcom/admarvel/android/ads/ab$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/ab;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/ab$2;->a:Lcom/admarvel/android/ads/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/ab$2;->a:Lcom/admarvel/android/ads/ab;

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/ab;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/ab$2;->a:Lcom/admarvel/android/ads/ab;

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/ab;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/admarvel/android/ads/ab$2;->a:Lcom/admarvel/android/ads/ab;

    invoke-static {v2}, Lcom/admarvel/android/ads/ab;->b(Lcom/admarvel/android/ads/ab;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
