.class Lcom/facebook/ads/VideoAdActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/VideoAdActivity;->configureViews()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/VideoAdActivity;


# direct methods
.method constructor <init>(Lcom/facebook/ads/VideoAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/facebook/ads/VideoAdActivity$9;->this$0:Lcom/facebook/ads/VideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$9;->this$0:Lcom/facebook/ads/VideoAdActivity;

    sget-object v1, Lcom/facebook/ads/VideoAdActivity$PlayerState;->COMPLETED:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    #calls: Lcom/facebook/ads/VideoAdActivity;->setState(Lcom/facebook/ads/VideoAdActivity$PlayerState;)V
    invoke-static {v0, v1}, Lcom/facebook/ads/VideoAdActivity;->access$1100(Lcom/facebook/ads/VideoAdActivity;Lcom/facebook/ads/VideoAdActivity$PlayerState;)V

    .line 287
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$9;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #calls: Lcom/facebook/ads/VideoAdActivity;->displayInterstitial()V
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$300(Lcom/facebook/ads/VideoAdActivity;)V

    .line 288
    return-void
.end method
