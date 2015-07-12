.class Lcom/admarvel/android/ads/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field a:Landroid/location/LocationManager;

.field final synthetic b:Lcom/admarvel/android/ads/l;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/l;Ljava/lang/String;Landroid/location/LocationManager;)V
    .locals 1

    iput-object p1, p0, Lcom/admarvel/android/ads/l$a;->b:Lcom/admarvel/android/ads/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/l$a;->c:Z

    iput-object p3, p0, Lcom/admarvel/android/ads/l$a;->a:Landroid/location/LocationManager;

    invoke-static {p1, p2}, Lcom/admarvel/android/ads/l;->a(Lcom/admarvel/android/ads/l;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-boolean v0, p0, Lcom/admarvel/android/ads/l$a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/l$a;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/admarvel/android/ads/l$a;->b:Lcom/admarvel/android/ads/l;

    invoke-static {v1}, Lcom/admarvel/android/ads/l;->c(Lcom/admarvel/android/ads/l;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/l$a;->c:Z

    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/admarvel/android/ads/l$a;->b:Lcom/admarvel/android/ads/l;

    invoke-static {v0}, Lcom/admarvel/android/ads/l;->a(Lcom/admarvel/android/ads/l;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/l$a;->b:Lcom/admarvel/android/ads/l;

    invoke-static {v0}, Lcom/admarvel/android/ads/l;->a(Lcom/admarvel/android/ads/l;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/admarvel/android/ads/l$a;->b:Lcom/admarvel/android/ads/l;

    invoke-static {v1}, Lcom/admarvel/android/ads/l;->b(Lcom/admarvel/android/ads/l;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/admarvel/android/ads/l$a$1;

    invoke-direct {v1, p0, p1}, Lcom/admarvel/android/ads/l$a$1;-><init>(Lcom/admarvel/android/ads/l$a;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
