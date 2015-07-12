.class Lcom/mopub/mobileads/MraidBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "SourceFile"


# instance fields
.field private a:Lcom/mopub/mobileads/MraidView;

.field private b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidBanner;->a:Lcom/mopub/mobileads/MraidView;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/MraidBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidBanner;->a()V

    return-void
.end method

.method private a(Ljava/util/Map;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 70
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 54
    return-void
.end method

.method static synthetic b(Lcom/mopub/mobileads/MraidBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidBanner;->b()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 59
    return-void
.end method

.method static synthetic c(Lcom/mopub/mobileads/MraidBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidBanner;->c()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 63
    return-void
.end method

.method static synthetic d(Lcom/mopub/mobileads/MraidBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidBanner;->d()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    .line 67
    return-void
.end method

.method static synthetic e(Lcom/mopub/mobileads/MraidBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidBanner;->e()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBanner;->a:Lcom/mopub/mobileads/MraidView;

    new-instance v1, Lcom/mopub/mobileads/MraidBanner$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MraidBanner$1;-><init>(Lcom/mopub/mobileads/MraidBanner;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setMraidListener(Lcom/mopub/mobileads/MraidView$MraidListener;)V

    .line 91
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBanner;->a:Lcom/mopub/mobileads/MraidView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setMraidListener(Lcom/mopub/mobileads/MraidView$MraidListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p2, p0, Lcom/mopub/mobileads/MraidBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 27
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/MraidBanner;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "Html-Response-Body"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {p3}, Lcom/mopub/mobileads/AdConfiguration;->a(Ljava/util/Map;)Lcom/mopub/mobileads/AdConfiguration;

    move-result-object v1

    .line 35
    invoke-static {p1, v1}, Lcom/mopub/mobileads/factories/MraidViewFactory;->create(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;)Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/MraidBanner;->a:Lcom/mopub/mobileads/MraidView;

    .line 36
    iget-object v1, p0, Lcom/mopub/mobileads/MraidBanner;->a:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidBanner;->f()V

    .line 38
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBanner;->a:Lcom/mopub/mobileads/MraidView;

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidBanner;->g()V

    .line 44
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBanner;->a:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->destroy()V

    .line 46
    :cond_0
    return-void
.end method
