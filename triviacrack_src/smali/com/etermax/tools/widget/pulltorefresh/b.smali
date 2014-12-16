.class public Lcom/etermax/tools/widget/pulltorefresh/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/ViewSwitcher;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ProgressBar;

.field private final f:Landroid/view/View;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/view/View;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:Landroid/view/animation/Animation;

.field private final m:Landroid/view/animation/Animation;

.field private n:Lcom/etermax/tools/widget/pulltorefresh/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->pull_to_refresh_header:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 47
    sget v1, Lcom/etermax/i;->pull_to_refresh_progress_switcher:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->a:Landroid/widget/ViewSwitcher;

    .line 48
    sget v1, Lcom/etermax/i;->pull_to_refresh_loading_default:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->b:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->a:Landroid/widget/ViewSwitcher;

    sget v1, Lcom/etermax/i;->pull_to_refresh_loading_custom:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->f:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->b:Landroid/view/View;

    sget v1, Lcom/etermax/i;->pull_to_refresh_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->d:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->b:Landroid/view/View;

    sget v1, Lcom/etermax/i;->pull_to_refresh_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->c:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->b:Landroid/view/View;

    sget v1, Lcom/etermax/i;->pull_to_refresh_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->e:Landroid/widget/ProgressBar;

    .line 57
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->f:Landroid/view/View;

    sget v1, Lcom/etermax/i;->pull_to_refresh_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->g:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->f:Landroid/view/View;

    sget v1, Lcom/etermax/i;->custom_loading_animation_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->h:Landroid/view/View;

    .line 60
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 61
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->l:Landroid/view/animation/Animation;

    .line 62
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 63
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->l:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 64
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->l:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 66
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->m:Landroid/view/animation/Animation;

    .line 67
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 68
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->m:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 69
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->m:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 71
    iput-object p3, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->k:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->i:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->j:Ljava/lang/String;

    .line 75
    packed-switch p2, :pswitch_data_0

    .line 82
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->c:Landroid/widget/ImageView;

    sget v1, Lcom/etermax/h;->pulltorefresh_down_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->g:Landroid/widget/ImageView;

    sget v1, Lcom/etermax/h;->pulltorefresh_down_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->a:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 88
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->c:Landroid/widget/ImageView;

    sget v1, Lcom/etermax/h;->pulltorefresh_up_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->g:Landroid/widget/ImageView;

    sget v1, Lcom/etermax/h;->pulltorefresh_up_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->n:Lcom/etermax/tools/widget/pulltorefresh/c;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->a:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 96
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->n:Lcom/etermax/tools/widget/pulltorefresh/c;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/etermax/tools/widget/pulltorefresh/c;->b(Landroid/view/View;)V

    .line 100
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 105
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->n:Lcom/etermax/tools/widget/pulltorefresh/c;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 108
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 119
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->n:Lcom/etermax/tools/widget/pulltorefresh/c;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->a:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 123
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 124
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->n:Lcom/etermax/tools/widget/pulltorefresh/c;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/etermax/tools/widget/pulltorefresh/c;->a(Landroid/view/View;)V

    .line 128
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 141
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->n:Lcom/etermax/tools/widget/pulltorefresh/c;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 144
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    :cond_0
    return-void
.end method

.method public setLoadingListener(Lcom/etermax/tools/widget/pulltorefresh/c;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->n:Lcom/etermax/tools/widget/pulltorefresh/c;

    .line 154
    return-void
.end method

.method public setPullLabel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->i:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->j:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->k:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    return-void
.end method
