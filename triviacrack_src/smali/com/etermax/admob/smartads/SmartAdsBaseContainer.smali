.class public abstract Lcom/etermax/admob/smartads/SmartAdsBaseContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/smartadserver/android/library/ui/SASAdView;",
        "T::",
        "Lcom/google/ads/mediation/customevent/CustomEventListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mFormatId:I

.field private mPageId:Ljava/lang/String;

.field private mSiteId:I

.field protected mView:Lcom/smartadserver/android/library/ui/SASAdView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mActivity:Landroid/app/Activity;

    .line 26
    iput p2, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mSiteId:I

    .line 27
    iput-object p3, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mPageId:Ljava/lang/String;

    .line 28
    iput p4, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mFormatId:I

    .line 29
    invoke-virtual {p0, p1}, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->initAdsView(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected abstract adClicked()V
.end method

.method protected destroy()V
    .locals 3

    .prologue
    .line 38
    const-string v0, "SMARTADS"

    const-string v1, "Smartads stopped"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    if-eqz v0, :cond_1

    .line 40
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartAdsBaseContainer - destroy - adWasOpened = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->l()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->adClicked()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 47
    :cond_1
    return-void
.end method

.method protected getLoader(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    new-instance v0, Lcom/smartadserver/android/library/ui/e;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/ui/e;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    return-object v0
.end method

.method protected abstract getResponseHandler(Lcom/google/ads/mediation/customevent/CustomEventListener;)Lcom/smartadserver/android/library/ui/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/smartadserver/android/library/ui/a;"
        }
    .end annotation
.end method

.method protected abstract initAdsView(Landroid/content/Context;)V
.end method

.method public loadAd(Lcom/google/ads/mediation/customevent/CustomEventListener;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    const-string v0, "SMARTADS"

    const-string v1, "Smartads started"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    iget v1, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mSiteId:I

    iget-object v2, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mPageId:Ljava/lang/String;

    iget v3, p0, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->mFormatId:I

    const/4 v4, 0x1

    const-string v5, ""

    invoke-virtual {p0, p1}, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->getResponseHandler(Lcom/google/ads/mediation/customevent/CustomEventListener;)Lcom/smartadserver/android/library/ui/a;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/smartadserver/android/library/ui/SASAdView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;)V

    .line 35
    return-void
.end method
