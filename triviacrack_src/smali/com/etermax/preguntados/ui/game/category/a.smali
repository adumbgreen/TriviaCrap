.class public Lcom/etermax/preguntados/ui/game/category/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/game/category/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field c:Lcom/etermax/preguntados/g/a;

.field d:Lcom/etermax/preguntados/ui/d/i;

.field e:Lcom/etermax/preguntados/b/a;

.field f:Lcom/etermax/preguntados/c/a/b;

.field protected g:Landroid/widget/RelativeLayout;

.field protected h:Landroid/widget/ImageView;

.field i:Landroid/widget/TextView;

.field j:Lcom/etermax/gamescommon/k/a;

.field k:Lcom/etermax/gamescommon/k/a;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->j:Lcom/etermax/gamescommon/k/a;

    .line 56
    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->k:Lcom/etermax/gamescommon/k/a;

    .line 144
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-static {}, Lcom/etermax/preguntados/ui/game/category/c;->e()Lcom/etermax/preguntados/ui/game/category/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/category/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/category/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/d;->a()Lcom/etermax/preguntados/ui/game/category/a;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/a;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a;->h()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->categoryConfirmationFragmentLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 191
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/a$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/a$2;-><init>(Lcom/etermax/preguntados/ui/game/category/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->d:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tutorial_category_confirm"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/d/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a;->g()V

    .line 206
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->extraSpinButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->playButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 216
    new-instance v3, Lcom/etermax/preguntados/ui/game/category/a$3;

    invoke-direct {v3, p0, v2, v1}, Lcom/etermax/preguntados/ui/game/category/a$3;-><init>(Lcom/etermax/preguntados/ui/game/category/a;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 240
    new-instance v2, Lcom/etermax/preguntados/ui/game/category/a$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/etermax/preguntados/ui/game/category/a$4;-><init>(Lcom/etermax/preguntados/ui/game/category/a;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 258
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->j:Lcom/etermax/gamescommon/k/a;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->j:Lcom/etermax/gamescommon/k/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/k/a;->b()V

    .line 267
    iput-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a;->j:Lcom/etermax/gamescommon/k/a;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->k:Lcom/etermax/gamescommon/k/a;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->k:Lcom/etermax/gamescommon/k/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/k/a;->b()V

    .line 271
    iput-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a;->k:Lcom/etermax/gamescommon/k/a;

    .line 274
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 70
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSpins_data()Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;->getSpins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->f:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v3

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->f:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/f;->g()I

    move-result v0

    .line 75
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSpins_data()Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;->getSpins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->isWorst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->worst_category_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->l:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->worst_category_performance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->m:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->n:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/etermax/o;->worst_category_performance:I

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSpins_data()Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;->getSpins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getPerformance()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/etermax/preguntados/ui/game/category/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 92
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 93
    const/high16 v4, -0x3cf9

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 94
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 96
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->f:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/f;->f()I

    move-result v0

    move v1, v0

    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v4, Lcom/etermax/i;->category_title_textview:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 105
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v4, Lcom/etermax/i;->extraSpinButton:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/category/a;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/d;->u()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->e:Lcom/etermax/preguntados/b/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a;->f:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/preguntados/c/a/f;->b()Lcom/etermax/preguntados/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/b/a;->b(Lcom/etermax/preguntados/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSpins_data()Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;->getSpins()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->isWorst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->e:Lcom/etermax/preguntados/b/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a;->g:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/category/a;->f:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v4, v2}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/f;->b()Lcom/etermax/preguntados/b/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/b/a;->a(Landroid/view/ViewGroup;Lcom/etermax/preguntados/b/c;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->category_title_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 124
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->extraSpinButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a;->e()V

    .line 128
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->f:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/f;->a()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    .line 115
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->g:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public b()Lcom/etermax/preguntados/ui/game/category/b;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/a$1;-><init>(Lcom/etermax/preguntados/ui/game/category/a;)V

    return-object v0
.end method

.method c()V
    .locals 4

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a;->h()V

    .line 163
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getAvailable_extra_shots()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->c:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->w:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 165
    sget v0, Lcom/etermax/o;->attention:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->extra_shots_limits:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/category/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->u()I

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/b;->i(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->c:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->n:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 173
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/b;->h(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 174
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->w()V

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a;->h()V

    .line 181
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->c:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->z:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 182
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/b;->j(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 183
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a;->b()Lcom/etermax/preguntados/ui/game/category/b;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->e:Lcom/etermax/preguntados/b/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/b/a;->a(Landroid/view/ViewGroup;)V

    .line 133
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onPause()V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a;->f()V

    .line 139
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a;->c:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->v:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 141
    return-void
.end method
