.class public Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;->a:Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)Lcom/mopub/mobileads/HtmlBannerWebView;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    sget-object v0, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;->a:Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;->internalCreate(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)Lcom/mopub/mobileads/HtmlBannerWebView;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    sput-object p0, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;->a:Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;

    .line 38
    return-void
.end method


# virtual methods
.method public internalCreate(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)Lcom/mopub/mobileads/HtmlBannerWebView;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Lcom/mopub/mobileads/HtmlBannerWebView;

    invoke-direct {v0, p1, p6}, Lcom/mopub/mobileads/HtmlBannerWebView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;)V

    .line 31
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/mopub/mobileads/HtmlBannerWebView;->init(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 32
    return-object v0
.end method
