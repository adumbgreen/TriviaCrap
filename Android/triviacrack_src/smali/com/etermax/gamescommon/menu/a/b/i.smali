.class public abstract Lcom/etermax/gamescommon/menu/a/b/i;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/animation/Animation$AnimationListener;

.field private b:Landroid/view/animation/Animation$AnimationListener;

.field protected i:Lcom/etermax/gamescommon/menu/a/m;

.field protected j:Lcom/etermax/gamescommon/menu/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/etermax/gamescommon/menu/a/b/i$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/a/b/i$1;-><init>(Lcom/etermax/gamescommon/menu/a/b/i;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/i;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 48
    new-instance v0, Lcom/etermax/gamescommon/menu/a/b/i$2;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/a/b/i$2;-><init>(Lcom/etermax/gamescommon/menu/a/b/i;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/i;->b:Landroid/view/animation/Animation$AnimationListener;

    .line 74
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/menu/a/c;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/i;->getOptions()Landroid/view/View;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 82
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 83
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/b/i;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/b/i;->j:Lcom/etermax/gamescommon/menu/a/c;

    .line 87
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/i;->getOptions()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/i;->getOptions()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/i;->getOptions()Landroid/view/View;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 100
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 101
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/b/i;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/i;->j:Lcom/etermax/gamescommon/menu/a/c;

    .line 104
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/i;->i:Lcom/etermax/gamescommon/menu/a/m;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/m;->b()V

    .line 106
    :cond_0
    return-void
.end method

.method protected abstract getOptions()Landroid/view/View;
.end method
