.class Lcom/facebook/ads/InterstitialAdActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/InterstitialAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/InterstitialAdActivity;


# direct methods
.method constructor <init>(Lcom/facebook/ads/InterstitialAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAdActivity$1;->this$0:Lcom/facebook/ads/InterstitialAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterImpressionSent()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onLoggingImpression()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity$1;->this$0:Lcom/facebook/ads/InterstitialAdActivity;

    const-string v1, "com.facebook.ads.interstitial.impression.logged"

    #calls: Lcom/facebook/ads/InterstitialAdActivity;->sendBroadcastForEvent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/facebook/ads/InterstitialAdActivity;->access$100(Lcom/facebook/ads/InterstitialAdActivity;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public shouldSendImpression()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method
