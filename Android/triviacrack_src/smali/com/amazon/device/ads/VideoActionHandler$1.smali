.class Lcom/amazon/device/ads/VideoActionHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/VideoActionHandler;->setPlayerListener(Lcom/amazon/device/ads/AdVideoPlayer;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/VideoActionHandler;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/VideoActionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amazon/device/ads/VideoActionHandler$1;->this$0:Lcom/amazon/device/ads/VideoActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler$1;->this$0:Lcom/amazon/device/ads/VideoActionHandler;

    #getter for: Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/amazon/device/ads/VideoActionHandler;->access$000(Lcom/amazon/device/ads/VideoActionHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 71
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler$1;->this$0:Lcom/amazon/device/ads/VideoActionHandler;

    #getter for: Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/amazon/device/ads/VideoActionHandler;->access$000(Lcom/amazon/device/ads/VideoActionHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 65
    return-void
.end method