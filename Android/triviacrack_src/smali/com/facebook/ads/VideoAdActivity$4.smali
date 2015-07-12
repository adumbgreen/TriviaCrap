.class Lcom/facebook/ads/VideoAdActivity$4;
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
    .line 229
    iput-object p1, p0, Lcom/facebook/ads/VideoAdActivity$4;->this$0:Lcom/facebook/ads/VideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$4;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #calls: Lcom/facebook/ads/VideoAdActivity;->displayInterstitial()V
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$300(Lcom/facebook/ads/VideoAdActivity;)V

    .line 233
    return-void
.end method
