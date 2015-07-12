.class final Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil;->setOnLayoutChangeListenerForRoot(Lcom/amazon/device/ads/AdLayout;)V
.end annotation


# instance fields
.field final synthetic val$adLayout:Lcom/amazon/device/ads/AdLayout;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;->val$adLayout:Lcom/amazon/device/ads/AdLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 767
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;->val$adLayout:Lcom/amazon/device/ads/AdLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdLayout;->getAndSetNeedsToLoadAdOnLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;->val$adLayout:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->setFloatingWindowDimensions()V

    .line 772
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;->val$adLayout:Lcom/amazon/device/ads/AdLayout;

    #calls: Lcom/amazon/device/ads/AdLayout;->startAdLoadUponLayout()V
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$200(Lcom/amazon/device/ads/AdLayout;)V

    .line 773
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;->val$adLayout:Lcom/amazon/device/ads/AdLayout;

    #getter for: Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$300(Lcom/amazon/device/ads/AdLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 775
    :cond_0
    return-void
.end method
