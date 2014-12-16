.class Lcom/millennialmedia/android/MMWebView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMWebView;->b(Lcom/millennialmedia/android/MMAdImpl;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/MMAdView;

.field final synthetic b:Lcom/millennialmedia/android/MMWebView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$5;->b:Lcom/millennialmedia/android/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$5;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/16 v2, -0x32

    .line 530
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-static {v0}, Lcom/millennialmedia/android/MMWebView;->a(Lcom/millennialmedia/android/MMWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$5;->b:Lcom/millennialmedia/android/MMWebView;

    iget v1, v1, Lcom/millennialmedia/android/MMWebView;->l:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 534
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$5;->b:Lcom/millennialmedia/android/MMWebView;

    iget v1, v1, Lcom/millennialmedia/android/MMWebView;->k:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 535
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->b:Lcom/millennialmedia/android/MMWebView;

    iput v2, v0, Lcom/millennialmedia/android/MMWebView;->l:I

    .line 536
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->b:Lcom/millennialmedia/android/MMWebView;

    iput v2, v0, Lcom/millennialmedia/android/MMWebView;->k:I

    .line 537
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->requestLayout()V

    .line 540
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 519
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$5;->b:Lcom/millennialmedia/android/MMWebView;

    monitor-enter v1

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->a()V

    .line 521
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView$5;->a()V

    .line 522
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->n()V

    .line 523
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->b:Lcom/millennialmedia/android/MMWebView;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMWebView;->d:Z

    .line 524
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->invalidate()V

    .line 525
    monitor-exit v1

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
