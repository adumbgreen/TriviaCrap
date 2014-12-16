.class public Lcom/etermax/preguntados/ui/tvshow/g;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/widget/a;
.implements Lcom/etermax/preguntados/ui/widget/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/tvshow/h;",
        ">;",
        "Lcom/etermax/preguntados/ui/widget/a;",
        "Lcom/etermax/preguntados/ui/widget/b;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/g/a;

.field b:Lcom/etermax/preguntados/c/a/b;

.field protected c:Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

.field protected d:Landroid/view/View;

.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/view/View;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/view/View;

.field protected j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

.field protected k:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

.field protected l:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

.field protected m:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

.field protected n:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

.field protected o:J

.field protected p:Z

.field protected q:Z

.field protected r:Lcom/etermax/preguntados/ui/tvshow/i;

.field protected s:Landroid/widget/ProgressBar;

.field protected t:Landroid/widget/TextView;

.field protected u:Landroid/view/View;

.field protected v:Lcom/etermax/tools/widget/OutlineTextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->o:J

    .line 59
    iput-boolean v2, p0, Lcom/etermax/preguntados/ui/tvshow/g;->p:Z

    .line 61
    iput-boolean v2, p0, Lcom/etermax/preguntados/ui/tvshow/g;->q:Z

    .line 212
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)Lcom/etermax/preguntados/ui/tvshow/g;
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/etermax/preguntados/ui/tvshow/j;->f()Lcom/etermax/preguntados/ui/tvshow/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/k;->a(Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)Lcom/etermax/preguntados/ui/tvshow/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/k;->a()Lcom/etermax/preguntados/ui/tvshow/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/tvshow/g;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/g;->h()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/tvshow/g;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/g;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->setEnabled(Z)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method

.method public static b()Lcom/etermax/preguntados/ui/tvshow/g;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/tvshow/g;->a(Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)Lcom/etermax/preguntados/ui/tvshow/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/tvshow/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->a:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->f:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 117
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/g;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/g;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/g;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->g:Landroid/view/View;

    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->b()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aget-object v3, v0, v1

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO$TvShowAnswerDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO$TvShowAnswerDTO;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->setText(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aget-object v0, v0, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a(IZ)V

    .line 129
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aget-object v0, v0, v1

    sget v3, Lcom/etermax/h;->button_primary_background:I

    sget v4, Lcom/etermax/h;->button_primary_background_pressed:I

    invoke-virtual {v0, v3, v4}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a(II)V

    .line 130
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aget-object v0, v0, v1

    sget v3, Lcom/etermax/h;->button_primary_background:I

    sget v4, Lcom/etermax/h;->button_primary_background_pressed:I

    invoke-virtual {v0, v3, v4}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->b(II)V

    .line 131
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->setAnswerListener(Lcom/etermax/preguntados/ui/widget/b;)V

    .line 132
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->setButtonAnimationListener(Lcom/etermax/preguntados/ui/widget/a;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aget-object v0, v0, v1

    mul-int/lit16 v3, v1, 0xc8

    invoke-virtual {v0, v3}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a(I)V

    .line 136
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->setVisibility(I)V

    .line 126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_1
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/g;->g()V

    .line 157
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->c:Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->p:Z

    if-nez v0, :cond_1

    .line 158
    iget-wide v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->o:J

    .line 161
    :cond_0
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/i;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/g;->c:Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->getRemainingSeconds()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/etermax/preguntados/ui/tvshow/g;->o:J

    sub-long/2addr v3, v5

    sub-long v2, v1, v3

    const-wide/16 v4, 0x32

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/tvshow/i;-><init>(Lcom/etermax/preguntados/ui/tvshow/g;JJ)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->r:Lcom/etermax/preguntados/ui/tvshow/i;

    .line 162
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->r:Lcom/etermax/preguntados/ui/tvshow/i;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/i;->start()Landroid/os/CountDownTimer;

    .line 164
    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->r:Lcom/etermax/preguntados/ui/tvshow/i;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->r:Lcom/etermax/preguntados/ui/tvshow/i;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/i;->cancel()V

    .line 170
    :cond_0
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    .line 250
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->v:Lcom/etermax/tools/widget/OutlineTextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/f;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/OutlineTextView;->a(II)V

    .line 251
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->v:Lcom/etermax/tools/widget/OutlineTextView;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x4000

    const/high16 v3, 0x4080

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/g;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/etermax/f;->gray:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/etermax/tools/widget/OutlineTextView;->setShadowLayer(FFFI)V

    .line 252
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->v:Lcom/etermax/tools/widget/OutlineTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/OutlineTextView;->setVisibility(I)V

    .line 254
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->g()Landroid/view/animation/Animation;

    move-result-object v0

    .line 255
    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/g$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/g$2;-><init>(Lcom/etermax/preguntados/ui/tvshow/g;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 262
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/g;->u:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 263
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/tvshow/h;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/g$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/g$1;-><init>(Lcom/etermax/preguntados/ui/tvshow/g;)V

    return-object v0
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/tvshow/g;->a(Z)V

    .line 176
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->r:Lcom/etermax/preguntados/ui/tvshow/i;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/i;->cancel()V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->p:Z

    .line 179
    new-instance v1, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-direct {v1}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->c:Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setId(J)V

    .line 181
    invoke-virtual {v1, p1}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setAnswer(I)V

    .line 183
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/tvshow/h;

    iget-wide v2, p0, Lcom/etermax/preguntados/ui/tvshow/g;->o:J

    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/g;->c:Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->getRemainingSeconds()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/tvshow/h;->a(Lcom/etermax/preguntados/datasource/dto/AnswerDTO;JI)V

    .line 184
    return-void
.end method

.method c()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 95
    new-array v0, v4, [Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/g;->k:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/tvshow/g;->l:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/etermax/preguntados/ui/tvshow/g;->m:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/etermax/preguntados/ui/tvshow/g;->n:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->j:[Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    .line 101
    invoke-direct {p0, v3}, Lcom/etermax/preguntados/ui/tvshow/g;->a(Z)V

    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->c:Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->s:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/h;->question_progressbar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->s:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/g;->c:Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->getTotalSeconds()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 107
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->s:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/g;->c:Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->getRemainingSeconds()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 108
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->c:Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/tvshow/g;->b(Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)V

    .line 111
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->p:Z

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/tvshow/g;->a(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->q:Z

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->i:Landroid/view/View;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/a/c;->a(Landroid/view/View;J)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->q:Z

    .line 199
    :cond_0
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/g;->a()Lcom/etermax/preguntados/ui/tvshow/h;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/g;->g()V

    .line 143
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onPause()V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/g;->f()V

    .line 149
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->c:Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/g;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/tvshow/h;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/tvshow/h;->c()V

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 153
    return-void
.end method
