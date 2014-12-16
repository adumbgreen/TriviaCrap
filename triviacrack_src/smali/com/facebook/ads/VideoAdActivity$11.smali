.class Lcom/facebook/ads/VideoAdActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/VideoAdActivity;->pulseControlsFromTouch()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/VideoAdActivity;


# direct methods
.method constructor <init>(Lcom/facebook/ads/VideoAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/facebook/ads/VideoAdActivity$11;->this$0:Lcom/facebook/ads/VideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$11;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #calls: Lcom/facebook/ads/VideoAdActivity;->updateControlState()V
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$1200(Lcom/facebook/ads/VideoAdActivity;)V

    .line 373
    return-void
.end method
