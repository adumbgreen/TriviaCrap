.class Lcom/facebook/ads/AdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/AdView;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/facebook/ads/AdView$1;->this$0:Lcom/facebook/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterImpressionSent()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;

    move-result-object v0

    const-string v1, "on imp sent"

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onLoggingImpression()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->impListener:Lcom/facebook/ads/ImpressionListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$300(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/ImpressionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->impListener:Lcom/facebook/ads/ImpressionListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$300(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/ImpressionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->this$0:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/ImpressionListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 137
    :cond_0
    return-void
.end method

.method public shouldSendImpression()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->this$0:Lcom/facebook/ads/AdView;

    #calls: Lcom/facebook/ads/AdView;->isAdViewVisible()Z
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$100(Lcom/facebook/ads/AdView;)Z

    move-result v0

    return v0
.end method
