.class public Lcom/etermax/mopubads/custom/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Landroid/content/Context;

.field protected e:Lcom/smartadserver/android/library/SASBannerView;

.field protected f:Landroid/widget/LinearLayout;

.field protected g:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/etermax/mopubads/custom/a/a;->d:Landroid/content/Context;

    .line 33
    iput p2, p0, Lcom/etermax/mopubads/custom/a/a;->a:I

    .line 34
    iput-object p3, p0, Lcom/etermax/mopubads/custom/a/a;->b:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/etermax/mopubads/custom/a/a;->c:I

    .line 36
    invoke-virtual {p0, p1}, Lcom/etermax/mopubads/custom/a/a;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Lcom/smartadserver/android/library/ui/e;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/ui/e;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    const-string v0, "mopub ads"

    const-string v1, "Smartads stopped"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_1

    .line 48
    const-string v0, "mopub ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartAdsBannerContainer - destroy - adWasOpened = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/SASBannerView;->l()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/etermax/mopubads/custom/a/a;->b()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->b()V

    .line 53
    iput-object v3, p0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    .line 55
    :cond_1
    iput-object v3, p0, Lcom/etermax/mopubads/custom/a/a;->g:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 56
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 57
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 75
    new-instance v0, Lcom/smartadserver/android/library/SASBannerView;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/SASBannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    .line 77
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/mopubads/custom/a/a;->f:Landroid/widget/LinearLayout;

    .line 80
    const/4 v0, 0x1

    const/high16 v1, 0x4248

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 83
    iget-object v1, p0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/smartadserver/android/library/SASBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v1, p0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    const/high16 v2, 0x6600

    invoke-virtual {p0, p1, v2}, Lcom/etermax/mopubads/custom/a/a;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartadserver/android/library/SASBannerView;->setLoaderView(Landroid/view/View;)V

    .line 86
    iget-object v1, p0, Lcom/etermax/mopubads/custom/a/a;->f:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public a(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V
    .locals 7
    .parameter

    .prologue
    .line 40
    const-string v0, "mopub ads"

    const-string v1, "Smartads started"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/etermax/mopubads/custom/a/a;->g:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 42
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    iget v1, p0, Lcom/etermax/mopubads/custom/a/a;->a:I

    iget-object v2, p0, Lcom/etermax/mopubads/custom/a/a;->b:Ljava/lang/String;

    iget v3, p0, Lcom/etermax/mopubads/custom/a/a;->c:I

    const/4 v4, 0x1

    const-string v5, ""

    invoke-virtual {p0, p1}, Lcom/etermax/mopubads/custom/a/a;->b(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)Lcom/smartadserver/android/library/ui/a;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/smartadserver/android/library/SASBannerView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;)V

    .line 43
    return-void
.end method

.method protected b(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)Lcom/smartadserver/android/library/ui/a;
    .locals 1
    .parameter

    .prologue
    .line 92
    new-instance v0, Lcom/etermax/mopubads/custom/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/etermax/mopubads/custom/a/a$1;-><init>(Lcom/etermax/mopubads/custom/a/a;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V

    return-object v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a;->g:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a;->g:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 125
    :cond_0
    return-void
.end method
