.class Lcom/facebook/ads/VideoAdActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 291
    iput-object p1, p0, Lcom/facebook/ads/VideoAdActivity$10;->this$0:Lcom/facebook/ads/VideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$10;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #calls: Lcom/facebook/ads/VideoAdActivity;->pulseControlsFromTouch()V
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$500(Lcom/facebook/ads/VideoAdActivity;)V

    .line 295
    const/4 v0, 0x0

    return v0
.end method
