.class public final Lcom/lifestreet/android/lsmsdk/ads/AdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdWebView:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

.field private mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

.field private mListener:Lcom/lifestreet/android/lsmsdk/ads/AdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->setBackgroundColor(I)V

    .line 27
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    invoke-direct {v0, p1, p0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;-><init>(Landroid/content/Context;Lcom/lifestreet/android/lsmsdk/ads/AdView;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mAdWebView:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    .line 28
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mAdWebView:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->addView(Landroid/view/View;)V

    .line 30
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    invoke-direct {v0, p1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    .line 31
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    invoke-virtual {v0, p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;->getLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mAdWebView:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mAdWebView:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->destroy()V

    .line 58
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mAdWebView:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->removeAllViews()V

    .line 63
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mListener:Lcom/lifestreet/android/lsmsdk/ads/AdListener;

    .line 64
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    .line 65
    return-void
.end method

.method public getListener()Lcom/lifestreet/android/lsmsdk/ads/AdListener;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mListener:Lcom/lifestreet/android/lsmsdk/ads/AdListener;

    return-object v0
.end method

.method public loadHtmlWithBaseURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mAdWebView:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mAdWebView:Lcom/lifestreet/android/lsmsdk/ads/AdWebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mListener:Lcom/lifestreet/android/lsmsdk/ads/AdListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mListener:Lcom/lifestreet/android/lsmsdk/ads/AdListener;

    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdListener;->onClose()V

    .line 51
    :cond_0
    return-void
.end method

.method public setListener(Lcom/lifestreet/android/lsmsdk/ads/AdListener;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mListener:Lcom/lifestreet/android/lsmsdk/ads/AdListener;

    .line 75
    return-void
.end method

.method public showCloseButton(Z)V
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    if-eqz v0, :cond_0

    .line 38
    if-eqz p1, :cond_1

    .line 39
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;->setVisibility(I)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdView;->mCloseButton:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDCloseButton;->setVisibility(I)V

    goto :goto_0
.end method
