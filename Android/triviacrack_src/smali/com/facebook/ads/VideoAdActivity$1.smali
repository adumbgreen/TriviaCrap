.class Lcom/facebook/ads/VideoAdActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/VideoAdActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/VideoAdActivity;


# direct methods
.method constructor <init>(Lcom/facebook/ads/VideoAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/facebook/ads/VideoAdActivity$1;->this$0:Lcom/facebook/ads/VideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$1;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #getter for: Lcom/facebook/ads/VideoAdActivity;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$000(Lcom/facebook/ads/VideoAdActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 129
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$1;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #calls: Lcom/facebook/ads/VideoAdActivity;->updateVideoPlayerSize()V
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$100(Lcom/facebook/ads/VideoAdActivity;)V

    .line 130
    return-void
.end method
