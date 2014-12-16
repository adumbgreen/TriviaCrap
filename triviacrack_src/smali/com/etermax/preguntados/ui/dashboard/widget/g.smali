.class public Lcom/etermax/preguntados/ui/dashboard/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/pulltorefresh/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/os/Handler;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/animation/AnimationSet;

.field private h:Landroid/view/animation/AnimationSet;

.field private i:Landroid/view/animation/AnimationSet;

.field private j:Landroid/view/animation/AnimationSet;

.field private k:Landroid/graphics/drawable/ShapeDrawable;

.field private l:Landroid/graphics/drawable/ShapeDrawable;

.field private m:Landroid/view/animation/Animation$AnimationListener;

.field private n:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/widget/g;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->m:Landroid/view/animation/Animation$AnimationListener;

    .line 70
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/widget/g$2;-><init>(Lcom/etermax/preguntados/ui/dashboard/widget/g;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->n:Landroid/view/animation/Animation$AnimationListener;

    .line 95
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->a:Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->a()V

    .line 97
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b()V

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/widget/g;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->c()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/widget/g;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->c:I

    return p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->c:I

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->d:Landroid/os/Handler;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget v2, Lcom/etermax/f;->category_01:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/etermax/h;->icon_category_01:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget v2, Lcom/etermax/f;->category_02:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/etermax/h;->icon_category_02:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget v2, Lcom/etermax/f;->category_03:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/etermax/h;->icon_category_03:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget v2, Lcom/etermax/f;->category_04:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/etermax/h;->icon_category_04:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget v2, Lcom/etermax/f;->category_05:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/etermax/h;->icon_category_05:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget v2, Lcom/etermax/f;->category_06:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/etermax/h;->icon_category_06:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->k:Landroid/graphics/drawable/ShapeDrawable;

    .line 111
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->l:Landroid/graphics/drawable/ShapeDrawable;

    .line 112
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 13

    .prologue
    .line 115
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->g:Landroid/view/animation/AnimationSet;

    .line 116
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->h:Landroid/view/animation/AnimationSet;

    .line 117
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->i:Landroid/view/animation/AnimationSet;

    .line 118
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->j:Landroid/view/animation/AnimationSet;

    .line 120
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 121
    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 122
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v11, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 123
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v12, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 124
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f333333

    const/high16 v3, 0x3f80

    const v4, 0x3f333333

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 125
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const v4, 0x3f333333

    const/high16 v5, 0x3f80

    const v6, 0x3f333333

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 127
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->g:Landroid/view/animation/AnimationSet;

    const-wide/16 v4, 0x177

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 128
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->g:Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 129
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->g:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 130
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->g:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->g:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 132
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->h:Landroid/view/animation/AnimationSet;

    const-wide/16 v4, 0x177

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 133
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->h:Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 134
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->h:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 135
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->h:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 136
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->i:Landroid/view/animation/AnimationSet;

    const-wide/16 v3, 0x177

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 137
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->i:Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 138
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->i:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 139
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->i:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 140
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->i:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->j:Landroid/view/animation/AnimationSet;

    const-wide/16 v3, 0x177

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 142
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->j:Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 143
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->j:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->j:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 145
    return-void
.end method

.method private c()I
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 174
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :cond_0
    return v0
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->l:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->i:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->j:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic h(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/etermax/preguntados/ui/dashboard/widget/g;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->c:I

    return v0
.end method

.method static synthetic k(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->k:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method static synthetic l(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->g:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic m(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->h:Landroid/view/animation/AnimationSet;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 149
    sget v0, Lcom/etermax/i;->image_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->e:Landroid/widget/ImageView;

    .line 150
    sget v0, Lcom/etermax/i;->image_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->f:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->k:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->k:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b:Ljava/util/List;

    iget v3, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b:Ljava/util/List;

    iget v2, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->c:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->l:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->l:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->c()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->g:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->m:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 160
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->i:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->n:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 162
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->g:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->h:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 164
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->i:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 169
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g;->g:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 170
    return-void
.end method
