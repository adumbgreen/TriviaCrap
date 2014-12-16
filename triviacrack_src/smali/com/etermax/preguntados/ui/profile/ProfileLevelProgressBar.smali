.class public Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/ProgressBar;

.field c:Landroid/widget/TextView;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;->d:J

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;->d:J

    .line 44
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    const/high16 v0, 0x447a

    int-to-float v1, p2

    div-float v11, v0, v1

    .line 53
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 54
    new-instance v0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar$1;

    move-object v1, p0

    move v4, v2

    move v6, v2

    move v7, v3

    move v8, v2

    move v9, v5

    move v10, p1

    invoke-direct/range {v0 .. v11}, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar$1;-><init>(Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;IFIFIFIFIF)V

    .line 64
    iget-wide v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;->d:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 65
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 66
    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/etermax/preguntados/ui/profile/ProfileLevelProgressBar;->d:J

    .line 48
    return-void
.end method
