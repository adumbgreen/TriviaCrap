.class Lcom/mopub/mobileads/bj;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/mopub/mobileads/bh;

.field private final b:Lcom/mopub/mobileads/bh;

.field private final c:Lcom/mopub/mobileads/bh;

.field private final d:Lcom/mopub/mobileads/bh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/bj;->setId(I)V

    .line 36
    new-instance v0, Lcom/mopub/mobileads/bj$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/bj$1;-><init>(Lcom/mopub/mobileads/bj;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/bj;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    const/high16 v0, 0x4230

    invoke-virtual {p0}, Lcom/mopub/mobileads/bj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 44
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/bj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/bj;->setBackgroundColor(I)V

    .line 50
    invoke-virtual {p0}, Lcom/mopub/mobileads/bj;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 52
    invoke-direct {p0}, Lcom/mopub/mobileads/bj;->b()Lcom/mopub/mobileads/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/bj;->a:Lcom/mopub/mobileads/bh;

    .line 53
    invoke-direct {p0}, Lcom/mopub/mobileads/bj;->c()Lcom/mopub/mobileads/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/bj;->b:Lcom/mopub/mobileads/bh;

    .line 54
    invoke-direct {p0}, Lcom/mopub/mobileads/bj;->d()Lcom/mopub/mobileads/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/bj;->c:Lcom/mopub/mobileads/bh;

    .line 55
    invoke-direct {p0}, Lcom/mopub/mobileads/bj;->e()Lcom/mopub/mobileads/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/bj;->d:Lcom/mopub/mobileads/bh;

    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->a:Lcom/mopub/mobileads/bh;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/bj;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->b:Lcom/mopub/mobileads/bh;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/bj;->addView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->c:Lcom/mopub/mobileads/bh;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/bj;->addView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->d:Lcom/mopub/mobileads/bh;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/bj;->addView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method private b()Lcom/mopub/mobileads/bh;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/mopub/mobileads/bi;

    invoke-virtual {p0}, Lcom/mopub/mobileads/bj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/bi;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->a(F)Lcom/mopub/mobileads/bi;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->a(I)Lcom/mopub/mobileads/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/bi;->a()Lcom/mopub/mobileads/bi;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->b(I)Lcom/mopub/mobileads/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/bi;->b()Lcom/mopub/mobileads/bh;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/mopub/mobileads/bh;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/mopub/mobileads/bi;

    invoke-virtual {p0}, Lcom/mopub/mobileads/bj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/bi;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->a(F)Lcom/mopub/mobileads/bi;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->a(I)Lcom/mopub/mobileads/bi;

    move-result-object v0

    const-string v1, "Learn More"

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->a(Ljava/lang/String;)Lcom/mopub/mobileads/bi;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/resource/LearnMoreDrawable;

    invoke-direct {v1}, Lcom/mopub/mobileads/resource/LearnMoreDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->a(Landroid/graphics/drawable/Drawable;)Lcom/mopub/mobileads/bi;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->c(I)Lcom/mopub/mobileads/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/bi;->b()Lcom/mopub/mobileads/bh;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/mopub/mobileads/bh;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/mopub/mobileads/resource/CountdownDrawable;

    invoke-virtual {p0}, Lcom/mopub/mobileads/bj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/resource/CountdownDrawable;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v1, Lcom/mopub/mobileads/bi;

    invoke-virtual {p0}, Lcom/mopub/mobileads/bj;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mopub/mobileads/bi;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/bi;->a(F)Lcom/mopub/mobileads/bi;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/bi;->a(I)Lcom/mopub/mobileads/bi;

    move-result-object v1

    const-string v2, "Skip in"

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/bi;->a(Ljava/lang/String;)Lcom/mopub/mobileads/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/bi;->a(Landroid/graphics/drawable/Drawable;)Lcom/mopub/mobileads/bi;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->c(I)Lcom/mopub/mobileads/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/bi;->b()Lcom/mopub/mobileads/bh;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/mopub/mobileads/bh;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/mopub/mobileads/bi;

    invoke-virtual {p0}, Lcom/mopub/mobileads/bj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/bi;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->a(F)Lcom/mopub/mobileads/bi;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->a(I)Lcom/mopub/mobileads/bi;

    move-result-object v0

    const-string v1, "Close"

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->a(Ljava/lang/String;)Lcom/mopub/mobileads/bi;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/resource/CloseButtonDrawable;

    invoke-direct {v1}, Lcom/mopub/mobileads/resource/CloseButtonDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->a(Landroid/graphics/drawable/Drawable;)Lcom/mopub/mobileads/bi;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bi;->c(I)Lcom/mopub/mobileads/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/bi;->b()Lcom/mopub/mobileads/bh;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 64
    long-to-float v0, p1

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->c:Lcom/mopub/mobileads/bh;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bh;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->b:Lcom/mopub/mobileads/bh;

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/bh;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->d:Lcom/mopub/mobileads/bh;

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/bh;->setVisibility(I)V

    .line 89
    return-void
.end method

.method a(I)V
    .locals 4
    .parameter

    .prologue
    .line 68
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->a:Lcom/mopub/mobileads/bh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ends in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/mopub/mobileads/bj;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bh;->a(Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    if-ltz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->a:Lcom/mopub/mobileads/bh;

    const-string v1, "Thanks for watching"

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bh;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->d:Lcom/mopub/mobileads/bh;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/bh;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    return-void
.end method

.method b(I)V
    .locals 3
    .parameter

    .prologue
    .line 76
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/bj;->c:Lcom/mopub/mobileads/bh;

    invoke-virtual {v0}, Lcom/mopub/mobileads/bh;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->d:Lcom/mopub/mobileads/bh;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bh;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->c:Lcom/mopub/mobileads/bh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bh;->setVisibility(I)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->c:Lcom/mopub/mobileads/bh;

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/mopub/mobileads/bj;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/bh;->b(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method b(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/bj;->b:Lcom/mopub/mobileads/bh;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/bh;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    return-void
.end method
