.class Lcom/amazon/device/ads/ViewManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/ViewManager;->destroyWebViews([Landroid/webkit/WebView;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ViewManager;

.field final synthetic val$webViews:[Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/ViewManager;[Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/amazon/device/ads/ViewManager$1;->this$0:Lcom/amazon/device/ads/ViewManager;

    iput-object p2, p0, Lcom/amazon/device/ads/ViewManager$1;->val$webViews:[Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 479
    iget-object v2, p0, Lcom/amazon/device/ads/ViewManager$1;->val$webViews:[Landroid/webkit/WebView;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 481
    if-eqz v4, :cond_1

    .line 483
    invoke-virtual {v4}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v4}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 489
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 495
    const-string v4, "Caught an IllegalArgumentException while destroying a WebView: %s"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 499
    :cond_2
    return-void
.end method
