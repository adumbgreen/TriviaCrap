.class Lcom/smartadserver/android/library/ui/SASAdView$11;
.super Lcom/smartadserver/android/library/ui/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p3, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/smartadserver/android/library/ui/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 3
    .parameter

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    if-nez v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/c;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/smartadserver/android/library/controller/c;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    .line 1549
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object v1, v0, Lcom/smartadserver/android/library/controller/c;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 1550
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    invoke-super {p0, v0}, Lcom/smartadserver/android/library/ui/g;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/controller/c;->a(Landroid/webkit/WebChromeClient;)V

    .line 1554
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 2
    .parameter

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/d;

    if-nez v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/d;

    invoke-direct {v1}, Lcom/smartadserver/android/library/controller/d;-><init>()V

    iput-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/d;

    .line 1536
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/d;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object v1, v0, Lcom/smartadserver/android/library/controller/d;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 1537
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/d;

    invoke-super {p0, v0}, Lcom/smartadserver/android/library/ui/g;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$11;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/d;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/controller/d;->a(Landroid/webkit/WebViewClient;)V

    .line 1541
    return-void
.end method
