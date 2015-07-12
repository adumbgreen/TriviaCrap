.class Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/ui/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->getResponseHandler(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;)Lcom/smartadserver/android/library/ui/a;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;

.field final synthetic val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method constructor <init>(Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$1;->this$0:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;

    iput-object p2, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/smartadserver/android/library/ui/d;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/smartadserver/android/library/ui/d;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 41
    :pswitch_0
    const-string v0, "admob ads"

    const-string v1, "SmartAdsInterstitialContainer - Interstitial view default."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_1
    const-string v0, "admob ads"

    const-string v1, "SmartAdsInterstitialContainer - Interstitial view expanded."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    goto :goto_0

    .line 48
    :pswitch_2
    const-string v0, "admob ads"

    const-string v1, "SmartAdsInterstitialContainer - Interstitial view hidden."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
