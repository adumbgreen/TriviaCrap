.class Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->notifyFailure()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$3;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 159
    invoke-static {}, Lcom/etermax/adsinterface/f;->b()V

    .line 160
    return-void
.end method
