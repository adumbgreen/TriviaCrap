.class Lcom/millennialmedia/android/MMAdView$ResizeView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$ResizeView;->a:Lcom/millennialmedia/android/MMAdView;

    .line 555
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 556
    return-void
.end method


# virtual methods
.method declared-synchronized a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$ResizeView;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-static {v0, p1}, Lcom/millennialmedia/android/MMAdView;->b(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V

    .line 578
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :cond_0
    monitor-exit p0

    return-void

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 570
    const-string v0, "MMAdView"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$ResizeView;->a:Lcom/millennialmedia/android/MMAdView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$ResizeView;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdView;->a(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V

    .line 572
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 573
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 561
    const-string v0, "MMAdView"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$ResizeView;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->a(Landroid/view/View;)V

    .line 564
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
