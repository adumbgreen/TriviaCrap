.class Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static setOnLayoutChangeListenerForRoot(Lcom/amazon/device/ads/AdLayout;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 763
    new-instance v0, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil$1;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    .line 778
    #getter for: Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;
    invoke-static {p0}, Lcom/amazon/device/ads/AdLayout;->access$300(Lcom/amazon/device/ads/AdLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 779
    return-void
.end method
