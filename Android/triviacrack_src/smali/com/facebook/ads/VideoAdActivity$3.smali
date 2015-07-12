.class Lcom/facebook/ads/VideoAdActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 221
    iput-object p1, p0, Lcom/facebook/ads/VideoAdActivity$3;->this$0:Lcom/facebook/ads/VideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$3;->this$0:Lcom/facebook/ads/VideoAdActivity;

    const/4 v1, 0x1

    #setter for: Lcom/facebook/ads/VideoAdActivity;->mGoToAppStore:Z
    invoke-static {v0, v1}, Lcom/facebook/ads/VideoAdActivity;->access$202(Lcom/facebook/ads/VideoAdActivity;Z)Z

    .line 225
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$3;->this$0:Lcom/facebook/ads/VideoAdActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/VideoAdActivity;->finish()V

    .line 226
    return-void
.end method
