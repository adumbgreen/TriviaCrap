.class Lcom/amazon/device/ads/AdContainer$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdContainer$1;->run()V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/ads/AdContainer$1;

.field final synthetic val$body:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdContainer$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer$1$1;->this$1:Lcom/amazon/device/ads/AdContainer$1;

    iput-object p2, p0, Lcom/amazon/device/ads/AdContainer$1$1;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 404
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$1$1;->this$1:Lcom/amazon/device/ads/AdContainer$1;

    iget-object v0, v0, Lcom/amazon/device/ads/AdContainer$1;->this$0:Lcom/amazon/device/ads/AdContainer;

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$1$1;->this$1:Lcom/amazon/device/ads/AdContainer$1;

    iget-object v1, v1, Lcom/amazon/device/ads/AdContainer$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer$1$1;->val$body:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/ads/AdContainer$1$1;->this$1:Lcom/amazon/device/ads/AdContainer$1;

    iget-boolean v3, v3, Lcom/amazon/device/ads/AdContainer$1;->val$shouldPreload:Z

    iget-object v4, p0, Lcom/amazon/device/ads/AdContainer$1$1;->this$1:Lcom/amazon/device/ads/AdContainer$1;

    iget-object v4, v4, Lcom/amazon/device/ads/AdContainer$1;->val$callback:Lcom/amazon/device/ads/PreloadCallback;

    #calls: Lcom/amazon/device/ads/AdContainer;->loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/AdContainer;->access$200(Lcom/amazon/device/ads/AdContainer;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 405
    return-void
.end method
