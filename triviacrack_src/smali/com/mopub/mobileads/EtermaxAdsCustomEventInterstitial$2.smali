.class Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->notifySuccess()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$2;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 150
    invoke-static {}, Lcom/etermax/adsinterface/f;->a()V

    .line 151
    return-void
.end method
