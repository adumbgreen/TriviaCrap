.class Lcom/mopub/mobileads/HtmlInterstitialWebView$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/HtmlInterstitialWebView$a;->fireFinishLoad()Z
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/HtmlInterstitialWebView$a;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/HtmlInterstitialWebView$a;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$a$1;->a:Lcom/mopub/mobileads/HtmlInterstitialWebView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$a$1;->a:Lcom/mopub/mobileads/HtmlInterstitialWebView$a;

    iget-object v0, v0, Lcom/mopub/mobileads/HtmlInterstitialWebView$a;->a:Lcom/mopub/mobileads/u;

    invoke-interface {v0}, Lcom/mopub/mobileads/u;->onInterstitialLoaded()V

    .line 68
    return-void
.end method
