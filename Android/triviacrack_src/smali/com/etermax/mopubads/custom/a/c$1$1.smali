.class Lcom/etermax/mopubads/custom/a/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/mopubads/custom/a/c$1;->onStateChanged(Lcom/smartadserver/android/library/ui/d;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/d;

.field final synthetic b:Lcom/etermax/mopubads/custom/a/c$1;


# direct methods
.method constructor <init>(Lcom/etermax/mopubads/custom/a/c$1;Lcom/smartadserver/android/library/ui/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/etermax/mopubads/custom/a/c$1$1;->b:Lcom/etermax/mopubads/custom/a/c$1;

    iput-object p2, p0, Lcom/etermax/mopubads/custom/a/c$1$1;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c$1$1;->a:Lcom/smartadserver/android/library/ui/d;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/d;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 90
    :pswitch_0
    const-string v0, "mopub ads"

    const-string v1, "SmartAdsInterstitialContainer - Interstitial view default."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_1
    const-string v0, "mopub ads"

    const-string v1, "SmartAdsInterstitialContainer - Interstitial view expanded."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c$1$1;->b:Lcom/etermax/mopubads/custom/a/c$1;

    iget-object v0, v0, Lcom/etermax/mopubads/custom/a/c$1;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    goto :goto_0

    .line 97
    :pswitch_2
    const-string v0, "mopub ads"

    const-string v1, "SmartAdsInterstitialContainer - Interstitial view hidden."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c$1$1;->b:Lcom/etermax/mopubads/custom/a/c$1;

    iget-object v0, v0, Lcom/etermax/mopubads/custom/a/c$1;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
