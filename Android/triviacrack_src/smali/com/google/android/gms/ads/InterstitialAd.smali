.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ae;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ae;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/ae;

    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->a()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->c()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->d()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/ae;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->a()Lcom/google/android/gms/internal/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ab;)V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ae;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    return-void
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->a:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->e()V

    return-void
.end method
