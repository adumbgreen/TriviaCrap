.class Lcom/facebook/ads/internal/AdRequestController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/internal/AdRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/AdRequestController;->loadAd()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/internal/AdRequestController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/AdRequestController;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/ads/internal/AdResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getRefreshIntervalMillis()I

    move-result v1

    #setter for: Lcom/facebook/ads/internal/AdRequestController;->refreshInterval:I
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->access$402(Lcom/facebook/ads/internal/AdRequestController;I)I

    .line 192
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getRefreshThresholdMillis()I

    move-result v1

    #setter for: Lcom/facebook/ads/internal/AdRequestController;->refreshThreshold:I
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->access$502(Lcom/facebook/ads/internal/AdRequestController;I)I

    .line 193
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #getter for: Lcom/facebook/ads/internal/AdRequestController;->adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;
    invoke-static {v0}, Lcom/facebook/ads/internal/AdRequestController;->access$200(Lcom/facebook/ads/internal/AdRequestController;)Lcom/facebook/ads/internal/AdRequest$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/AdRequest$Callback;->onCompleted(Lcom/facebook/ads/internal/AdResponse;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    const/4 v1, 0x1

    #setter for: Lcom/facebook/ads/internal/AdRequestController;->initialLoadFinished:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->access$302(Lcom/facebook/ads/internal/AdRequestController;Z)Z

    .line 195
    return-void
.end method

.method public onError(Lcom/facebook/ads/AdError;)V
    .locals 2
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #getter for: Lcom/facebook/ads/internal/AdRequestController;->adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;
    invoke-static {v0}, Lcom/facebook/ads/internal/AdRequestController;->access$200(Lcom/facebook/ads/internal/AdRequestController;)Lcom/facebook/ads/internal/AdRequest$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/AdRequest$Callback;->onError(Lcom/facebook/ads/AdError;)V

    .line 185
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    const/4 v1, 0x1

    #setter for: Lcom/facebook/ads/internal/AdRequestController;->initialLoadFinished:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->access$302(Lcom/facebook/ads/internal/AdRequestController;Z)Z

    .line 186
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$2;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    const-string v1, "onError"

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V

    .line 187
    return-void
.end method
