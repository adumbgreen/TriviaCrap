.class Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/AdViewOverlayView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 648
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 649
    iput-object p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->a:Ljava/lang/String;

    .line 650
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->c:Ljava/lang/ref/WeakReference;

    .line 651
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->b:Z

    .line 669
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    :try_start_0
    new-instance v0, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_0

    .line 674
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 675
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_0

    .line 678
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_0

    .line 681
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 685
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :goto_0
    return-object v0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    const-string v1, "AdViewOverlayView"

    const-string v2, "Unable to get weboverlay"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 694
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 701
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;

    .line 702
    if-eqz v0, :cond_1

    .line 703
    iget-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->b:Z

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, v0, Lcom/millennialmedia/android/AdViewOverlayView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/AdViewOverlayActivity;

    .line 706
    if-eqz v1, :cond_2

    .line 707
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->finish()V

    .line 712
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v1, :cond_1

    .line 714
    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/android/MMAdImplController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_1
    return-void

    .line 709
    :cond_2
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->a(Lcom/millennialmedia/android/AdViewOverlayView;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 638
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;

    .line 657
    if-eqz v0, :cond_0

    .line 658
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->c(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-nez v1, :cond_0

    .line 659
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->d(Lcom/millennialmedia/android/AdViewOverlayView;)V

    .line 662
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 663
    return-void
.end method
