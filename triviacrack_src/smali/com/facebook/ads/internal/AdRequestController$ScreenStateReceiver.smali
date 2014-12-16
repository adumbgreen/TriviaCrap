.class Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/internal/AdRequestController;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/AdRequestController;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/AdRequestController;Lcom/facebook/ads/internal/AdRequestController$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;-><init>(Lcom/facebook/ads/internal/AdRequestController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 236
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/facebook/ads/internal/AdRequestController;->cancelRefresh(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->access$600(Lcom/facebook/ads/internal/AdRequestController;Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    #getter for: Lcom/facebook/ads/internal/AdRequestController;->currentVisibility:I
    invoke-static {v0}, Lcom/facebook/ads/internal/AdRequestController;->access$700(Lcom/facebook/ads/internal/AdRequestController;)I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V

    goto :goto_0
.end method
