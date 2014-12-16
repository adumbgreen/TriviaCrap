.class Lcom/amazon/device/ads/AdController$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdController;->callOnAdEvent(Lcom/amazon/device/ads/AdEvent;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdController;

.field final synthetic val$adEvent:Lcom/amazon/device/ads/AdEvent;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$7;->this$0:Lcom/amazon/device/ads/AdController;

    iput-object p2, p0, Lcom/amazon/device/ads/AdController$7;->val$adEvent:Lcom/amazon/device/ads/AdEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$7;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    :goto_0
    return-void

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$7;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdController$7;->val$adEvent:Lcom/amazon/device/ads/AdEvent;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/AdControlCallback;->onAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    goto :goto_0
.end method
