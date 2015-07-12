.class final Lcom/mopub/mobileads/HtmlInterstitialWebView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/HtmlInterstitialWebView;->a(Lcom/mopub/mobileads/u;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/u;

.field final synthetic b:Lcom/mopub/mobileads/HtmlInterstitialWebView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/HtmlInterstitialWebView;Lcom/mopub/mobileads/u;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$a;->b:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    iput-object p2, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$a;->a:Lcom/mopub/mobileads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fireFinishLoad()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$a;->b:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    new-instance v1, Lcom/mopub/mobileads/HtmlInterstitialWebView$a$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/HtmlInterstitialWebView$a$1;-><init>(Lcom/mopub/mobileads/HtmlInterstitialWebView$a;)V

    invoke-static {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->a(Lcom/mopub/mobileads/HtmlInterstitialWebView;Ljava/lang/Runnable;)V

    .line 71
    const/4 v0, 0x1

    return v0
.end method
