.class Lcom/mopub/mobileads/HtmlInterstitialWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/HtmlInterstitialWebView;->init(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field final synthetic b:Lcom/mopub/mobileads/HtmlInterstitialWebView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/HtmlInterstitialWebView;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$1;->b:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    iput-object p2, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$1;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialLoaded()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$1;->b:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    iget-boolean v0, v0, Lcom/mopub/mobileads/HtmlInterstitialWebView;->a:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$1;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 40
    :cond_0
    return-void
.end method
