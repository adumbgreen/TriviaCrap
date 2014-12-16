.class public Lcom/etermax/preguntados/ui/tvshow/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/tvshow/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/LinearLayout;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/view/View;

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:Lcom/etermax/preguntados/ui/tvshow/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 60
    return-void
.end method

.method public static a(IIII)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-static {}, Lcom/etermax/preguntados/ui/tvshow/d;->d()Lcom/etermax/preguntados/ui/tvshow/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/e;->d(I)Lcom/etermax/preguntados/ui/tvshow/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/tvshow/e;->b(I)Lcom/etermax/preguntados/ui/tvshow/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/tvshow/e;->a(I)Lcom/etermax/preguntados/ui/tvshow/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/tvshow/e;->c(I)Lcom/etermax/preguntados/ui/tvshow/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/e;->a()Lcom/etermax/preguntados/ui/tvshow/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/tvshow/b;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/a$1;-><init>(Lcom/etermax/preguntados/ui/tvshow/a;)V

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/tvshow/c;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/a;->i:Lcom/etermax/preguntados/ui/tvshow/c;

    .line 113
    return-void
.end method

.method b()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1f4

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/ui/tvshow/a;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 77
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/etermax/preguntados/ui/tvshow/a;->h:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/etermax/preguntados/ui/tvshow/a;->e:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/etermax/preguntados/ui/tvshow/a;->f:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 86
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 88
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 89
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 90
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 92
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 93
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 96
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/a$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/a$2;-><init>(Lcom/etermax/preguntados/ui/tvshow/a;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 108
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 109
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a;->i:Lcom/etermax/preguntados/ui/tvshow/c;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a;->i:Lcom/etermax/preguntados/ui/tvshow/c;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/tvshow/c;->a()V

    .line 120
    :cond_0
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a;->a()Lcom/etermax/preguntados/ui/tvshow/b;

    move-result-object v0

    return-object v0
.end method
