.class Lcom/facebook/ads/internal/AdRequestController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/AdRequestController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;ZLcom/facebook/ads/internal/AdType;Lcom/facebook/ads/internal/AdRequest$Callback;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/internal/AdRequestController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/AdRequestController;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/facebook/ads/internal/AdRequestController$1;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$1;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    const/4 v1, 0x0

    #setter for: Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdRequestController;->access$102(Lcom/facebook/ads/internal/AdRequestController;Z)Z

    .line 89
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController$1;->this$0:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->loadAd()V

    .line 90
    return-void
.end method
