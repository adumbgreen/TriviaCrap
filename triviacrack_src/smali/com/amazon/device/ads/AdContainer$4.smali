.class Lcom/amazon/device/ads/AdContainer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdContainer;->hideNativeCloseButtonImage()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdContainer;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer$4;->this$0:Lcom/amazon/device/ads/AdContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$4;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$300(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 650
    return-void
.end method
