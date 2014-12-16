.class Lcom/etermax/admob/smartads/SmartAdsBannerContainer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/ui/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->getResponseHandler(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)Lcom/smartadserver/android/library/ui/a;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etermax/admob/smartads/SmartAdsBannerContainer;

.field final synthetic val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/etermax/admob/smartads/SmartAdsBannerContainer;Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer$2;->this$0:Lcom/etermax/admob/smartads/SmartAdsBannerContainer;

    iput-object p2, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer$2;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    const-string v0, "admob ads"

    const-string v1, "SmartAdsBannerContainer - adLoadingCompleted"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer$2;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v1, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer$2;->this$0:Lcom/etermax/admob/smartads/SmartAdsBannerContainer;

    iget-object v1, v1, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->mContainer:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    const-string v0, "admob ads"

    const-string v1, "SmartAdsBannerContainer - adLoadingFailed"

    invoke-static {v0, v1, p1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer$2;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 69
    return-void
.end method
