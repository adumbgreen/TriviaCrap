.class Lcom/etermax/adsinterface/a/f$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/adsinterface/a/f;->a(Ljava/lang/String;Lcom/etermax/adsinterface/a/h;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/adsinterface/a/h;

.field final synthetic b:Lcom/etermax/adsinterface/a/f;


# direct methods
.method constructor <init>(Lcom/etermax/adsinterface/a/f;Lcom/etermax/adsinterface/a/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/etermax/adsinterface/a/f$1;->b:Lcom/etermax/adsinterface/a/f;

    iput-object p2, p0, Lcom/etermax/adsinterface/a/f$1;->a:Lcom/etermax/adsinterface/a/h;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f$1;->a:Lcom/etermax/adsinterface/a/h;

    iget-object v1, p0, Lcom/etermax/adsinterface/a/f$1;->b:Lcom/etermax/adsinterface/a/f;

    invoke-static {v1}, Lcom/etermax/adsinterface/a/f;->a(Lcom/etermax/adsinterface/a/f;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/adsinterface/a/h;->contentLoadCompleted(Landroid/webkit/WebView;)V

    .line 126
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/etermax/adsinterface/a/f$1;->a:Lcom/etermax/adsinterface/a/h;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Error loading web content"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/etermax/adsinterface/a/h;->contentLoadFailed(Ljava/lang/Exception;)V

    .line 132
    return-void
.end method
