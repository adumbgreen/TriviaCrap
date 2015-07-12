.class Lcom/facebook/ads/NativeAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/NativeAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/facebook/ads/NativeAd$2;->this$0:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterImpressionSent()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public onLoggingImpression()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$2;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->impListener:Lcom/facebook/ads/ImpressionListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$600(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/ImpressionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$2;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->impListener:Lcom/facebook/ads/ImpressionListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$600(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/ImpressionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$2;->this$0:Lcom/facebook/ads/NativeAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/ImpressionListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 466
    :cond_0
    return-void
.end method

.method public shouldSendImpression()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$2;->this$0:Lcom/facebook/ads/NativeAd;

    #calls: Lcom/facebook/ads/NativeAd;->isViewOnScreen()Z
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$500(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    return v0
.end method
