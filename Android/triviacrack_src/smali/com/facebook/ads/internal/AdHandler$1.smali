.class Lcom/facebook/ads/internal/AdHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/AdHandler;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/internal/AdHandler;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/AdHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/ads/internal/AdHandler$1;->this$0:Lcom/facebook/ads/internal/AdHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler$1;->this$0:Lcom/facebook/ads/internal/AdHandler;

    const/4 v1, 0x0

    #setter for: Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdHandler;->access$002(Lcom/facebook/ads/internal/AdHandler;Z)Z

    .line 43
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler$1;->this$0:Lcom/facebook/ads/internal/AdHandler;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdHandler;->trySendImpression()V

    .line 44
    return-void
.end method
