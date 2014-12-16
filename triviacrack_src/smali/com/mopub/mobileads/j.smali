.class abstract Lcom/mopub/mobileads/j;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/j;->b:Landroid/widget/ImageView;

    .line 120
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 121
    new-array v1, v4, [I

    const v2, -0x10100a7

    aput v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/Drawables;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lcom/mopub/common/util/Drawables;

    invoke-virtual {v2, p0}, Lcom/mopub/common/util/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 122
    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/Drawables;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lcom/mopub/common/util/Drawables;

    invoke-virtual {v2, p0}, Lcom/mopub/common/util/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v1, p0, Lcom/mopub/mobileads/j;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/j;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/j;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/mopub/mobileads/j$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/j$2;-><init>(Lcom/mopub/mobileads/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/mobileads/j;->d:I

    iget v2, p0, Lcom/mopub/mobileads/j;->d:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    iget v1, p0, Lcom/mopub/mobileads/j;->e:I

    iget v2, p0, Lcom/mopub/mobileads/j;->e:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 134
    iget-object v1, p0, Lcom/mopub/mobileads/j;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mopub/mobileads/j;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/mopub/mobileads/j;->f:J

    return-wide v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/j;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mopub/mobileads/j;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    return-void
.end method

.method protected d()Lcom/mopub/mobileads/AdConfiguration;
    .locals 2

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/j;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Ad-Configuration"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdConfiguration;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 3

    .prologue
    .line 111
    const/high16 v0, 0x4248

    invoke-static {v0, p0}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 112
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    iget-object v0, p0, Lcom/mopub/mobileads/j;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mopub/mobileads/j;->a:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/util/Interstitials;->addCloseEventRegion(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View$OnClickListener;)Z

    .line 116
    return-void
.end method

.method public abstract getAdView()Landroid/view/View;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/j;->requestWindowFeature(I)Z

    .line 56
    invoke-virtual {p0}, Lcom/mopub/mobileads/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    const/high16 v0, 0x4248

    invoke-static {v0, p0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/j;->d:I

    .line 59
    const/high16 v0, 0x4100

    invoke-static {v0, p0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/j;->e:I

    .line 60
    new-instance v0, Lcom/mopub/mobileads/j$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/j$1;-><init>(Lcom/mopub/mobileads/j;)V

    iput-object v0, p0, Lcom/mopub/mobileads/j;->a:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/j;->c:Landroid/widget/RelativeLayout;

    .line 69
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    iget-object v1, p0, Lcom/mopub/mobileads/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mopub/mobileads/j;->getAdView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/j;->setContentView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Lcom/mopub/mobileads/j;->d()Lcom/mopub/mobileads/AdConfiguration;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/j;->f:J

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/j;->f()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 86
    return-void
.end method
