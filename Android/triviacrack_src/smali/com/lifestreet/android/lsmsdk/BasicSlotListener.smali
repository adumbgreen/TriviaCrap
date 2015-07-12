.class public Lcom/lifestreet/android/lsmsdk/BasicSlotListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/SlotListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    return-void
.end method

.method public onClickInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    return-void
.end method

.method public onClose(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    return-void
.end method

.method public onDestroyCustomEventBannerAdapter(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public onDestroyCustomEventInterstitialAdapter(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    return-void
.end method

.method public onDismissInterstitialScreen(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    return-void
.end method

.method public onDismissScreen(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method public onFailedToLoadSlotView(Lcom/lifestreet/android/lsmsdk/SlotView;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    return-void
.end method

.method public onFailedToReceiveInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public onLeaveApplication(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    return-void
.end method

.method public onLeaveApplicationInterstitial(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public onPresentInterstitialScreen(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public onPresentScreen(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    return-void
.end method

.method public onReceiveAd(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    return-void
.end method

.method public onReceiveInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    return-void
.end method
