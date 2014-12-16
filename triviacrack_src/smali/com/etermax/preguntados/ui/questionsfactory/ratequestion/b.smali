.class public Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/e/a;
.implements Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;",
        ">;",
        "Lcom/etermax/preguntados/e/a;",
        "Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;"
    }
.end annotation


# static fields
.field private static final s:[I


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/preguntados/g/a;

.field c:Lcom/etermax/preguntados/c/a/b;

.field d:Lcom/etermax/gamescommon/login/datasource/a;

.field e:Lcom/etermax/preguntados/e/c;

.field f:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

.field g:Z

.field h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

.field i:Lcom/etermax/gamescommon/language/Language;

.field j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

.field k:Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;

.field l:Landroid/widget/ViewSwitcher;

.field m:Landroid/view/View;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/etermax/preguntados/ui/dashboard/widget/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/etermax/i;->question_authors:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/etermax/i;->rate_question_vote_button_mistake:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/etermax/i;->rate_question_vote_button_dislike:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/etermax/i;->rate_question_vote_button_like:I

    aput v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->s:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->l()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;->a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;->a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 374
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;I)V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 458
    sget v0, Lcom/etermax/i;->rate_question_answer_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->rate_question:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    sget v0, Lcom/etermax/i;->rate_question_buttons_switcher:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 461
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 464
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->question_authors:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 465
    new-instance v2, Lcom/etermax/preguntados/ui/game/question/b;

    invoke-direct {v2}, Lcom/etermax/preguntados/ui/game/question/b;-><init>()V

    .line 466
    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAuthor()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getTranslator()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v4

    invoke-virtual {v2, p0, v0, v3, v4}, Lcom/etermax/preguntados/ui/game/question/b;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 468
    sget v0, Lcom/etermax/i;->vote_buttons_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 469
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 470
    :goto_0
    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->s:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 471
    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->s:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 472
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->j()Landroid/view/animation/Animation;

    move-result-object v2

    .line 473
    mul-int/lit16 v3, v0, 0x96

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 474
    new-instance v3, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$11;

    invoke-direct {v3, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$11;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 485
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 356
    sget v0, Lcom/etermax/i;->answer_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 357
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->f()Landroid/view/animation/Animation;

    move-result-object v1

    .line 358
    mul-int/lit16 v2, p2, 0x96

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 359
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$7;

    invoke-direct {v2, p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$7;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 370
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 371
    return-void
.end method

.method private a(Landroid/widget/Button;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 491
    .line 492
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 493
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 495
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 496
    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 497
    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 499
    :cond_0
    return-void
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v1

    .line 304
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->e:Lcom/etermax/preguntados/e/c;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/e/c;->b(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$3;->a:[I

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 327
    :goto_0
    :pswitch_0
    sget v0, Lcom/etermax/i;->category_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/c/a/b;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    sget v0, Lcom/etermax/i;->category_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    sget v0, Lcom/etermax/i;->category_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v5, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 332
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->l:Landroid/widget/ViewSwitcher;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 333
    sget v0, Lcom/etermax/i;->questionTextView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->g:Z

    if-eqz v0, :cond_2

    .line 335
    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Landroid/view/View;)V

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->m()V

    .line 353
    return-void

    .line 307
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->e:Lcom/etermax/preguntados/e/c;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v2

    int-to-long v2, v2

    iget-object v5, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v5}, Lcom/etermax/preguntados/e/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 320
    :cond_1
    sget v0, Lcom/etermax/i;->question_image_switcher:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 321
    invoke-virtual {v0, v4}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 322
    invoke-virtual {v0, v4}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->e:Lcom/etermax/preguntados/e/c;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0, v2, p0}, Lcom/etermax/preguntados/e/c;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/preguntados/e/a;)V

    goto/16 :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b:Lcom/etermax/preguntados/g/a;

    sget v2, Lcom/etermax/preguntados/g/a;->f:I

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 339
    sget v0, Lcom/etermax/i;->answers_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 340
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    move v3, v4

    .line 341
    :goto_1
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/etermax/k;->game_question_answer_button_layout:I

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 343
    sget v1, Lcom/etermax/i;->answer_button:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "answer_button_container_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 345
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "answer_button_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 347
    invoke-direct {p0, v3}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 349
    invoke-direct {p0, v5, v3}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Landroid/view/View;I)V

    .line 341
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->l:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 292
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->r:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b(Landroid/view/View;)V

    .line 293
    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->rate_question_no_questions_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->rate_question_no_questions_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answer_button_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontButton;

    .line 400
    sget v1, Lcom/etermax/h;->button_green_background:I

    sget v2, Lcom/etermax/h;->button_green_background_pressed:I

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/CustomFontButton;->a(II)V

    .line 401
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setTextColor(I)V

    .line 402
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v1

    .line 586
    sget v0, Lcom/etermax/i;->question_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 587
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 589
    sget v0, Lcom/etermax/i;->question_image_switcher:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 590
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 591
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 592
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->m()V

    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b(I)V

    return-void
.end method

.method private b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v1

    .line 537
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->s:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 538
    sget-object v2, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->s:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private c(I)V
    .locals 3
    .parameter

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answer_button_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontButton;

    .line 406
    sget v1, Lcom/etermax/h;->button_red_background:I

    sget v2, Lcom/etermax/h;->button_red_background_pressed:I

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/CustomFontButton;->a(II)V

    .line 407
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setTextColor(I)V

    .line 408
    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->d(I)V

    return-void
.end method

.method private d(I)V
    .locals 6
    .parameter

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/OutlineTextView;

    .line 412
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/f;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/OutlineTextView;->a(II)V

    .line 413
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4000

    const/high16 v3, 0x4080

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/etermax/f;->gray:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/etermax/tools/widget/OutlineTextView;->setShadowLayer(FFFI)V

    .line 414
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->g()Landroid/view/animation/Animation;

    move-result-object v1

    .line 415
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$9;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$9;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 425
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/OutlineTextView;->setVisibility(I)V

    .line 426
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->game_question_result_textview_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 429
    return-void
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->l()V

    return-void
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->s()V

    return-void
.end method

.method static synthetic h(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->t()V

    return-void
.end method

.method static synthetic i(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->r()V

    .line 125
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->a(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v1

    .line 200
    sget v0, Lcom/etermax/i;->questions_factory_bar_country_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-static {v2}, Lcom/etermax/preguntados/h/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/Country;)Lcom/etermax/preguntados/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/h/a;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->i:Lcom/etermax/gamescommon/language/Language;

    invoke-static {v0}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_0

    .line 203
    sget v0, Lcom/etermax/i;->questions_factory_bar_language_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getNameResource()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :cond_0
    sget v0, Lcom/etermax/i;->questions_factory_bar_category_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 206
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->grayDark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 207
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->grayLight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private n()V
    .locals 6

    .prologue
    .line 231
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->p:Ljava/util/List;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->p:Ljava/util/List;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->f:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getLanguages()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->i:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 236
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->p:Ljava/util/List;

    new-instance v3, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;

    invoke-direct {v3, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/Country;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_1
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/o;->select_region:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->p:Ljava/util/List;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->o()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->q:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    .line 239
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->p:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;

    sget-object v3, Lcom/etermax/preguntados/datasource/dto/enums/Country;->GX:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-direct {v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/Country;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->q:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->b()V

    .line 241
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->q:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a()V

    .line 242
    return-void
.end method

.method private o()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$5;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$5;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    return-object v0
.end method

.method private p()V
    .locals 6

    .prologue
    .line 257
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->n:Ljava/util/List;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->n:Ljava/util/List;

    .line 259
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->f:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getLanguages()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/Language;

    .line 260
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->n:Ljava/util/List;

    new-instance v3, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;

    invoke-direct {v3, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;-><init>(Lcom/etermax/gamescommon/language/Language;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->o:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/o;->select_language:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->n:Ljava/util/List;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->q()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->o:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->o:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a()V

    .line 267
    return-void
.end method

.method private q()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$6;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$6;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->l:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 285
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->rate_question_no_questions_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->r:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->a(Landroid/view/View;)V

    .line 288
    return-void
.end method

.method private s()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 432
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "answer_button_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_0
    return-void
.end method

.method private t()V
    .locals 5

    .prologue
    .line 438
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answer_button_container_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 440
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->h()Landroid/view/animation/Animation;

    move-result-object v2

    .line 441
    mul-int/lit16 v3, v0, 0x96

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 444
    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_0

    .line 445
    new-instance v3, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$10;

    invoke-direct {v3, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$10;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 453
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->e:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/e/c;->b()V

    .line 579
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->e:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/e/c;->c()V

    .line 580
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;->b()V

    .line 581
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b(Landroid/graphics/Bitmap;)V

    .line 574
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->vote_buttons_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 546
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->s:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 547
    sget-object v2, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->s:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 548
    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->k()Landroid/view/animation/Animation;

    move-result-object v3

    .line 549
    mul-int/lit16 v4, v0, 0x96

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 550
    sget-object v4, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->s:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_0

    .line 551
    new-instance v4, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$2;

    invoke-direct {v4, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 559
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->e:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/e/c;->b()V

    .line 562
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->e:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/e/c;->c()V

    .line 563
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b(Z)V

    .line 568
    return-void
.end method

.method public d()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    return-object v0
.end method

.method e()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->m()V

    .line 194
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->l()V

    .line 196
    :cond_0
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->g:Z

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->n()V

    .line 221
    :cond_0
    return-void
.end method

.method g()V
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->g:Z

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->p()V

    .line 228
    :cond_0
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->d()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b(Z)V

    .line 505
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->e:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/e/c;->b()V

    .line 506
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->e:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/e/c;->c()V

    .line 507
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;->b()V

    .line 508
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->i:Lcom/etermax/gamescommon/language/Language;

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/gamescommon/language/Language;)V

    .line 513
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b(Z)V

    .line 518
    new-instance v1, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;

    invoke-direct {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;-><init>()V

    .line 519
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;->setQuestionId(J)V

    .line 520
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->i:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;->setLanguage(Lcom/etermax/gamescommon/language/Language;)V

    .line 521
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/Vote;->NEGATIVE:Lcom/etermax/preguntados/datasource/dto/enums/Vote;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;->setVote(Lcom/etermax/preguntados/datasource/dto/enums/Vote;)V

    .line 522
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;

    invoke-interface {v0, v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;->a(Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;)V

    .line 523
    return-void
.end method

.method public k()V
    .locals 4

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b(Z)V

    .line 528
    new-instance v1, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;

    invoke-direct {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;-><init>()V

    .line 529
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;->setQuestionId(J)V

    .line 530
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->i:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;->setLanguage(Lcom/etermax/gamescommon/language/Language;)V

    .line 531
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/Vote;->POSITIVE:Lcom/etermax/preguntados/datasource/dto/enums/Vote;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;->setVote(Lcom/etermax/preguntados/datasource/dto/enums/Vote;)V

    .line 532
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;

    invoke-interface {v0, v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;->a(Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;)V

    .line 533
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/b;->onCreate(Landroid/os/Bundle;)V

    .line 158
    if-nez p1, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->b()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->i:Lcom/etermax/gamescommon/language/Language;

    .line 160
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->c()Lcom/etermax/preguntados/datasource/dto/enums/Country;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 161
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->f:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getLanguages()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->i:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->EN:Lcom/etermax/gamescommon/language/Language;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->i:Lcom/etermax/gamescommon/language/Language;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/h/a;->a(Ljava/lang/String;)Lcom/etermax/preguntados/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/h/a;->a()Lcom/etermax/preguntados/datasource/dto/enums/Country;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->f:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getLanguages()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->i:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->f:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getLanguages()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->i:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    :cond_2
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/Country;->GX:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->r:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    if-nez v0, :cond_4

    .line 176
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/widget/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->r:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    .line 178
    :cond_4
    return-void

    .line 168
    :cond_5
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/Country;->GX:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 182
    sget v0, Lcom/etermax/k;->rate_question_answer_fragment:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 184
    sget v0, Lcom/etermax/i;->rate_question_skip_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    sget v0, Lcom/etermax/i;->category_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->rate:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 187
    return-object v1
.end method
