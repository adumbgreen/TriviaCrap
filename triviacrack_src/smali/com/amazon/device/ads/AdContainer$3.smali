.class Lcom/amazon/device/ads/AdContainer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdContainer;->removeNativeCloseButton()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdContainer;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer$3;->this$0:Lcom/amazon/device/ads/AdContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$3;->this$0:Lcom/amazon/device/ads/AdContainer;

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$3;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$600(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdContainer;->removeView(Landroid/view/View;)V

    .line 633
    return-void
.end method
