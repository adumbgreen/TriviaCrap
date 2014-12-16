.class Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/InterstitialAd;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;-><init>(Lcom/facebook/ads/InterstitialAd;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 207
    const-string v0, "adInterstitialUniqueId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->uniqueId:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/ads/InterstitialAd;->access$400(Lcom/facebook/ads/InterstitialAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v1}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "com.facebook.ads.interstitial.impression.logged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :cond_2
    const-string v1, "com.facebook.ads.interstitial.clicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    goto :goto_0

    .line 220
    :cond_3
    const-string v1, "com.facebook.ads.interstitial.dismissed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    goto :goto_0

    .line 222
    :cond_4
    const-string v1, "com.facebook.ads.interstitial.displayed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 223
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V

    goto :goto_0

    .line 224
    :cond_5
    const-string v1, "com.facebook.ads.interstitial.impression.logged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->impListener:Lcom/facebook/ads/ImpressionListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$500(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/ImpressionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->impListener:Lcom/facebook/ads/ImpressionListener;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$500(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/ImpressionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/ImpressionListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    goto :goto_0
.end method

.method public register()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    const-string v1, "com.facebook.ads.interstitial.displayed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "com.facebook.ads.interstitial.dismissed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "com.facebook.ads.interstitial.clicked"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v1, "com.facebook.ads.interstitial.impression.logged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/ads/InterstitialAd;->access$600(Lcom/facebook/ads/InterstitialAd;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 238
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->this$0:Lcom/facebook/ads/InterstitialAd;

    #getter for: Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->access$600(Lcom/facebook/ads/InterstitialAd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    return-void
.end method
