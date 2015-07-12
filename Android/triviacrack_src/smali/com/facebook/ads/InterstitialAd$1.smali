.class Lcom/facebook/ads/InterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/internal/AdRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/InterstitialAd;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/ads/internal/AdResponse;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #setter for: Lcom/facebook/ads/InterstitialAd;->adResponse:Lcom/facebook/ads/internal/AdResponse;
    invoke-static {v0, p1}, Lcom/facebook/ads/InterstitialAd;->access$002(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/internal/AdResponse;)Lcom/facebook/ads/internal/AdResponse;

    .line 90
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    const/4 v1, 0x1

    #setter for: Lcom/facebook/ads/InterstitialAd;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/InterstitialAd;->access$102(Lcom/facebook/ads/InterstitialAd;Z)Z

    .line 92
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    move-result-object v0

    if-nez v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #setter for: Lcom/facebook/ads/InterstitialAd;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/InterstitialAd;->access$102(Lcom/facebook/ads/InterstitialAd;Z)Z

    .line 97
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getError()Lcom/facebook/ads/AdError;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getError()Lcom/facebook/ads/AdError;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    goto :goto_1

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #setter for: Lcom/facebook/ads/InterstitialAd;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/InterstitialAd;->access$102(Lcom/facebook/ads/InterstitialAd;Z)Z

    .line 105
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    sget-object v2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/ads/AdError;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    const/4 v1, 0x0

    #setter for: Lcom/facebook/ads/InterstitialAd;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/InterstitialAd;->access$102(Lcom/facebook/ads/InterstitialAd;Z)Z

    .line 114
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$1;->this$0:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 117
    :cond_0
    return-void
.end method
