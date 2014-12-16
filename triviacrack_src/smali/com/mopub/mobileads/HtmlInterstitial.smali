.class public Lcom/mopub/mobileads/HtmlInterstitial;
.super Lcom/mopub/mobileads/ResponseBodyInterstitial;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/HtmlInterstitial;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/mopub/mobileads/MoPubActivity;->a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->d:Ljava/lang/String;

    .line 21
    const-string v0, "Scrollable"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->e:Z

    .line 22
    const-string v0, "Redirect-Url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->f:Ljava/lang/String;

    .line 23
    const-string v0, "Clickthrough-Url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->g:Ljava/lang/String;

    .line 24
    return-void
.end method

.method protected showInterstitial()V
    .locals 6

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitial;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/HtmlInterstitial;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/mopub/mobileads/HtmlInterstitial;->e:Z

    iget-object v3, p0, Lcom/mopub/mobileads/HtmlInterstitial;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/mopub/mobileads/HtmlInterstitial;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/mopub/mobileads/HtmlInterstitial;->b:Lcom/mopub/mobileads/AdConfiguration;

    invoke-static/range {v0 .. v5}, Lcom/mopub/mobileads/MoPubActivity;->start(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)V

    .line 34
    return-void
.end method
