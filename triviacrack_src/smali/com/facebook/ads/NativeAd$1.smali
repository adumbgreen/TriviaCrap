.class Lcom/facebook/ads/NativeAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/internal/AdRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/NativeAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/ads/internal/AdResponse;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/internal/NativeAdDataModel;

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    sget-object v2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/NativeAdDataModel;

    #setter for: Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;
    invoke-static {v1, v0}, Lcom/facebook/ads/NativeAd;->access$102(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/NativeAdDataModel;)Lcom/facebook/ads/internal/NativeAdDataModel;

    .line 207
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/NativeAdDataModel;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/NativeAdDataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    const/4 v1, 0x1

    #setter for: Lcom/facebook/ads/NativeAd;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAd;->access$202(Lcom/facebook/ads/NativeAd;Z)Z

    .line 209
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getViewabilityThreshold()I

    move-result v1

    #setter for: Lcom/facebook/ads/NativeAd;->viewabilityThreshold:I
    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAd;->access$302(Lcom/facebook/ads/NativeAd;I)I

    goto :goto_0

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/NativeAdDataModel;

    move-result-object v0

    if-nez v0, :cond_5

    .line 214
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #setter for: Lcom/facebook/ads/NativeAd;->adLoaded:Z
    invoke-static {v0, v2}, Lcom/facebook/ads/NativeAd;->access$202(Lcom/facebook/ads/NativeAd;Z)Z

    .line 215
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getError()Lcom/facebook/ads/AdError;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getError()Lcom/facebook/ads/AdError;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    goto :goto_1

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #setter for: Lcom/facebook/ads/NativeAd;->adLoaded:Z
    invoke-static {v0, v2}, Lcom/facebook/ads/NativeAd;->access$202(Lcom/facebook/ads/NativeAd;Z)Z

    .line 223
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    const/4 v1, 0x0

    #setter for: Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;
    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAd;->access$102(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/NativeAdDataModel;)Lcom/facebook/ads/internal/NativeAdDataModel;

    .line 224
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    sget-object v2, Lcom/facebook/ads/AdError;->MISSING_PROPERTIES:Lcom/facebook/ads/AdError;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto/16 :goto_0
.end method

.method public onError(Lcom/facebook/ads/AdError;)V
    .locals 2
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    const/4 v1, 0x0

    #setter for: Lcom/facebook/ads/NativeAd;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAd;->access$202(Lcom/facebook/ads/NativeAd;Z)Z

    .line 233
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->this$0:Lcom/facebook/ads/NativeAd;

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 236
    :cond_0
    return-void
.end method
