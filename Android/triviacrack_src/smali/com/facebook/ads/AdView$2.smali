.class Lcom/facebook/ads/AdView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/internal/AdRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AdView;->createAdRequestCallback()Lcom/facebook/ads/internal/AdRequest$Callback;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/AdView;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/ads/internal/AdResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->cancelImpressionRetry()V

    .line 169
    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_2

    instance-of v0, v1, Lcom/facebook/ads/internal/HtmlAdDataModel;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->setAdDataModel(Lcom/facebook/ads/internal/HtmlAdDataModel;)V

    .line 173
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    check-cast v1, Lcom/facebook/ads/internal/HtmlAdDataModel;

    #calls: Lcom/facebook/ads/AdView;->updateView(Lcom/facebook/ads/internal/HtmlAdDataModel;)V
    invoke-static {v0, v1}, Lcom/facebook/ads/AdView;->access$700(Lcom/facebook/ads/AdView;Lcom/facebook/ads/internal/HtmlAdDataModel;)V

    .line 174
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$600(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$600(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getViewabilityThreshold()I

    move-result v1

    #setter for: Lcom/facebook/ads/AdView;->viewabilityThreshold:I
    invoke-static {v0, v1}, Lcom/facebook/ads/AdView;->access$802(Lcom/facebook/ads/AdView;I)I

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    if-nez v1, :cond_5

    .line 180
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$600(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$600(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getError()Lcom/facebook/ads/AdError;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/ads/internal/AdResponse;->getError()Lcom/facebook/ads/AdError;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;

    move-result-object v0

    const-string v1, "on no fill"

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_4
    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    goto :goto_1

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$600(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$600(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    sget-object v2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;

    move-result-object v0

    const-string v1, "on internal error"

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/ads/AdError;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->cancelImpressionRetry()V

    .line 161
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$600(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$600(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$2;->this$0:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 164
    :cond_0
    return-void
.end method
