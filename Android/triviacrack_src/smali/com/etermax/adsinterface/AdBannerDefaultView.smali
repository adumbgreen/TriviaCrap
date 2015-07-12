.class public abstract Lcom/etermax/adsinterface/AdBannerDefaultView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a;


# instance fields
.field private a:Landroid/view/View;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/adsinterface/AdBannerDefaultView;->b:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/etermax/adsinterface/AdBannerDefaultView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etermax/adsinterface/AdBannerDefaultView;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/adsinterface/AdBannerDefaultView;Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/etermax/adsinterface/AdBannerDefaultView;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/adsinterface/AdBannerDefaultView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    iput-object p1, p0, Lcom/etermax/adsinterface/AdBannerDefaultView;->a:Landroid/view/View;

    return-object p1
.end method

.method private b(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->default_ad_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/etermax/adsinterface/AdBannerDefaultView$3;

    invoke-direct {v1, p0}, Lcom/etermax/adsinterface/AdBannerDefaultView$3;-><init>(Lcom/etermax/adsinterface/AdBannerDefaultView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/adsinterface/AdBannerDefaultView;->b:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/adsinterface/AdBannerDefaultView$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/adsinterface/AdBannerDefaultView$1;-><init>(Lcom/etermax/adsinterface/AdBannerDefaultView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/adsinterface/AdBannerDefaultView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/etermax/adsinterface/AdBannerDefaultView;->b:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/adsinterface/AdBannerDefaultView$2;

    invoke-direct {v1, p0}, Lcom/etermax/adsinterface/AdBannerDefaultView$2;-><init>(Lcom/etermax/adsinterface/AdBannerDefaultView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    :cond_0
    return-void
.end method
