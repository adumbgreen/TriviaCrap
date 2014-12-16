.class public Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final j:[I


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

.field c:Lcom/etermax/gamescommon/language/Language;

.field d:Lcom/etermax/gamescommon/language/Language;

.field e:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/etermax/i;->translate_questions_answer_1:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/etermax/i;->translate_questions_answer_2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/etermax/i;->translate_questions_answer_3:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/etermax/i;->translate_questions_answer_4:I

    aput v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->j:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 117
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$5;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$5;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->k:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    .line 128
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->l:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->h()Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/h;->a(Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;)Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/h;->a(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/h;->b(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/h;->a()Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 283
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->a(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getView()Landroid/view/View;

    move-result-object v3

    .line 321
    sget v0, Lcom/etermax/i;->text_original:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    sget v0, Lcom/etermax/i;->translation_scroll:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v2, v1

    .line 324
    :goto_0
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->j:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 325
    const-string v0, "text_original_answer_"

    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->e:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->h()V

    return-void
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g()[I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->j:[I

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getView()Landroid/view/View;

    move-result-object v1

    .line 143
    sget v0, Lcom/etermax/i;->translate_language_from_flag:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->c:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    sget v0, Lcom/etermax/i;->translate_language_from_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->c:Lcom/etermax/gamescommon/language/Language;

    invoke-static {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getNameResource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    sget v0, Lcom/etermax/i;->translate_language_to_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    invoke-static {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getNameResource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    sget v0, Lcom/etermax/i;->translate_language_to_flag:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getView()Landroid/view/View;

    move-result-object v2

    .line 332
    sget v0, Lcom/etermax/i;->text_translation:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    .line 333
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 334
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->a()V

    .line 335
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->j:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 336
    const-string v0, "text_translation_answer_"

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v0, v3}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 335
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 338
    :cond_0
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/m;->characters_limit:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/widget/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 381
    invoke-virtual {v0, p0, v4}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 382
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "question_min_length"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 383
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/f;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)V

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->e:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 314
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->e:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->b(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    .line 315
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->i()V

    .line 316
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->e:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->c:Lcom/etermax/gamescommon/language/Language;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->e:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->b(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    goto :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->h:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a()V

    .line 275
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->i:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a()V

    .line 280
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->c:Lcom/etermax/gamescommon/language/Language;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)V

    .line 343
    return-void
.end method

.method public f()V
    .locals 6

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->translate_question_translation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->text_translation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 348
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->c:Lcom/etermax/gamescommon/language/Language;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    if-eq v1, v2, :cond_1

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_2

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->j()V

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    new-instance v2, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;

    invoke-direct {v2}, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;-><init>()V

    .line 355
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->e:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->setId(J)V

    .line 356
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v2, v1}, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->setLanguage(Lcom/etermax/gamescommon/language/Language;)V

    .line 359
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Z)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {v2, v0}, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->setText(Ljava/lang/String;)V

    .line 363
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->j:[I

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 365
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getView()Landroid/view/View;

    move-result-object v0

    const-string v4, "text_translation_answer_"

    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v4, v5}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 366
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 368
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->e:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 372
    :cond_4
    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->setAnswers(Ljava/util/List;)V

    .line 374
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/f;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->e:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/f;->a(Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    goto :goto_0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a()Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/f;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 102
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/b;->onCreate(Landroid/os/Bundle;)V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->f:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->g:Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->b:Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;->getSourceLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/Language;

    .line 106
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;

    invoke-direct {v2, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;-><init>(Lcom/etermax/gamescommon/language/Language;)V

    .line 107
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->b:Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;->getTargetLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/Language;

    .line 110
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;

    invoke-direct {v2, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;-><init>(Lcom/etermax/gamescommon/language/Language;)V

    .line 111
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    :cond_1
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/o;->select_lang:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->k:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->h:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    .line 114
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/o;->select_lang:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->g:Ljava/util/List;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->l:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->i:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 151
    sget v0, Lcom/etermax/k;->translate_question_translation_fragment:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 153
    sget v0, Lcom/etermax/i;->translate_question_ok_button:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/etermax/o;->skip:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    sget v0, Lcom/etermax/i;->translate_question_ok_button:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    sget v0, Lcom/etermax/i;->translate_language_from_flag:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->c:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    sget v0, Lcom/etermax/i;->translate_language_from_textview:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->c:Lcom/etermax/gamescommon/language/Language;

    invoke-static {v1}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getNameResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    sget v0, Lcom/etermax/i;->translate_language_to_textview:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    invoke-static {v1}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getNameResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    sget v0, Lcom/etermax/i;->translate_language_to_flag:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    sget v0, Lcom/etermax/i;->translate_question_translation:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->remaining_characters:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    sget v1, Lcom/etermax/i;->translate_question_translation:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->text_translation:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    .line 163
    new-array v2, v7, [Landroid/text/InputFilter;

    .line 164
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0xfa

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v2, v3

    .line 166
    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->length()I

    move-result v5

    rsub-int v5, v5, 0xfa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 168
    invoke-virtual {v1, v8}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setImeOptions(I)V

    .line 169
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setQuestionLanguage(Lcom/etermax/gamescommon/language/Language;)V

    .line 170
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$7;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Landroid/widget/TextView;Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;)V

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$8;

    invoke-direct {v0, p0, v4}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$8;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setListener(Lcom/etermax/preguntados/ui/questionsfactory/widget/b;)V

    .line 187
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$9;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$9;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)V

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 200
    sget v0, Lcom/etermax/i;->clear_button_translation:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$10;

    invoke-direct {v2, p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$10;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v2, v3

    .line 209
    :goto_0
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->j:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 211
    new-array v5, v7, [Landroid/text/InputFilter;

    .line 212
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, v5, v3

    .line 213
    const-string v0, "text_translation_answer_"

    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 214
    const-string v1, "remaining_characters_answer_"

    add-int/lit8 v6, v2, 0x1

    invoke-direct {p0, v1, v6}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 216
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x2a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 218
    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 219
    new-instance v5, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$11;

    invoke-direct {v5, p0, v1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$11;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 226
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;

    invoke-direct {v1, p0, v2, v4}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 244
    const-string v1, "clear_button_translation_answer_"

    add-int/lit8 v5, v2, 0x1

    invoke-direct {p0, v1, v5}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v5, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$2;

    invoke-direct {v5, p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const-string v1, "copy_button_translation_answer_"

    add-int/lit8 v5, v2, 0x1

    invoke-direct {p0, v1, v5}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v5, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$3;

    invoke-direct {v5, p0, v0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$3;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Landroid/widget/EditText;I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 260
    :cond_0
    return-object v4
.end method
