.class Lcom/amazon/device/ads/AdLayout$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdLayout;->registerScreenStateBroadcastReceiver()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdLayout;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout$1;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 373
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$1;->this$0:Lcom/amazon/device/ads/AdLayout;

    #getter for: Lcom/amazon/device/ads/AdLayout;->isInForeground:Z
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$000(Lcom/amazon/device/ads/AdLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$1;->this$0:Lcom/amazon/device/ads/AdLayout;

    #calls: Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->closeAd()Z

    .line 378
    :cond_0
    return-void
.end method
