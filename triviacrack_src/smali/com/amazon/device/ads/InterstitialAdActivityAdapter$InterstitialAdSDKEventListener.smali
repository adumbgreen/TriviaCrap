.class Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/SDKEventListener;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InterstitialAdActivityAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InterstitialAdActivityAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;->this$0:Lcom/amazon/device/ads/InterstitialAdActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSDKEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->CLOSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;->this$0:Lcom/amazon/device/ads/InterstitialAdActivityAdapter;

    #getter for: Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->access$000(Lcom/amazon/device/ads/InterstitialAdActivityAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;->this$0:Lcom/amazon/device/ads/InterstitialAdActivityAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;
    invoke-static {v0, v1}, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->access$102(Lcom/amazon/device/ads/InterstitialAdActivityAdapter;Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/AdController;

    .line 123
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;->this$0:Lcom/amazon/device/ads/InterstitialAdActivityAdapter;

    #getter for: Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->access$000(Lcom/amazon/device/ads/InterstitialAdActivityAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 126
    :cond_0
    return-void
.end method
