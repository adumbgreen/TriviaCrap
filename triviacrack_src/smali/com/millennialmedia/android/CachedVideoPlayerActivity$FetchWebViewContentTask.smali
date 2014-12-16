.class Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;
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
.field final synthetic a:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->a:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 803
    iput-object p2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->b:Ljava/lang/String;

    .line 804
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 823
    :try_start_0
    new-instance v0, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 824
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 825
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_0

    .line 827
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 829
    if-eqz v0, :cond_1

    .line 830
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 841
    :goto_0
    return-object v0

    .line 836
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 838
    :catch_0
    move-exception v0

    .line 839
    const-string v1, "CachedVideoPlayerActivity"

    const-string v2, "Error with http web overlay"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->c:Z

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->a:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->m()V

    .line 812
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->a:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->a:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->a:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    iget-object v2, v2, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, v1, v2}, Lcom/millennialmedia/android/MMWebView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 815
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->a:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->b:Z

    .line 817
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 796
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 796
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->a(Ljava/lang/String;)V

    return-void
.end method
