.class Lcom/etermax/admob/AdmobBannerView$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/admob/AdmobBannerView;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/admob/AdmobBannerView;


# direct methods
.method constructor <init>(Lcom/etermax/admob/AdmobBannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/etermax/admob/AdmobBannerView$1;->a:Lcom/etermax/admob/AdmobBannerView;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 2
    .parameter

    .prologue
    .line 61
    const-string v0, "ADMOB"

    const-string v1, "onAdFailedToLoad"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView$1;->a:Lcom/etermax/admob/AdmobBannerView;

    invoke-virtual {v0}, Lcom/etermax/admob/AdmobBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/etermax/admob/AdmobBannerView$1;->a:Lcom/etermax/admob/AdmobBannerView;

    invoke-static {v1, v0}, Lcom/etermax/admob/AdmobBannerView;->a(Lcom/etermax/admob/AdmobBannerView;Landroid/content/Context;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "ADMOB"

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView$1;->a:Lcom/etermax/admob/AdmobBannerView;

    invoke-static {v0}, Lcom/etermax/admob/AdmobBannerView;->a(Lcom/etermax/admob/AdmobBannerView;)V

    .line 57
    return-void
.end method
