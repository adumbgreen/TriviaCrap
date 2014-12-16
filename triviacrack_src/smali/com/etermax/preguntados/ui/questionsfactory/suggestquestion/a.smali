.class public Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

.field b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field c:Lcom/etermax/preguntados/datasource/d;

.field d:Lcom/etermax/preguntados/c/a/b;

.field e:Lcom/etermax/gamescommon/login/datasource/a;

.field protected f:Lcom/etermax/gamescommon/language/Language;

.field protected g:Lcom/etermax/preguntados/datasource/dto/enums/Country;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/c;->g()Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;->a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;->a()Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/m;->characters_limit:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/widget/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 403
    invoke-virtual {v0, p0, v4}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 404
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "min_length"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 408
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$3;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$3;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$3;->a(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->g()V

    return-void
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->o()V

    return-void
.end method

.method static synthetic g(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getView()Landroid/view/View;

    move-result-object v1

    .line 238
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v2

    .line 241
    sget v0, Lcom/etermax/i;->questions_factory_header:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    sget v0, Lcom/etermax/i;->questions_factory_header_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 243
    sget v0, Lcom/etermax/i;->questions_factory_ok_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 244
    sget v3, Lcom/etermax/o;->send:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 245
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    sget v0, Lcom/etermax/i;->questions_factory_header_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 247
    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    sget v0, Lcom/etermax/i;->questions_factory_bar_category_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 252
    sget v0, Lcom/etermax/i;->questions_factory_bar_country_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->g:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-static {v2}, Lcom/etermax/preguntados/h/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/Country;)Lcom/etermax/preguntados/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/h/a;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    invoke-static {v0}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v2

    .line 254
    if-eqz v2, :cond_0

    .line 255
    sget v0, Lcom/etermax/i;->questions_factory_bar_language_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getNameResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    :cond_0
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 275
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->h:Ljava/util/List;

    .line 277
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->h:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;-><init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->h:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v3, v5}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;-><init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->h:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;-><init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->h:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;-><init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->h:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;-><init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->h:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d:Lcom/etermax/preguntados/c/a/b;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;-><init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->i:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/o;->select_category:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->h:Ljava/util/List;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->i()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->i:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->i:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a()V

    .line 288
    return-void
.end method

.method private i()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$10;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$10;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)V

    return-object v0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 301
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->j:Ljava/util/List;

    .line 303
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

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

    .line 304
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->j:Ljava/util/List;

    new-instance v3, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;

    invoke-direct {v3, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;-><init>(Lcom/etermax/gamescommon/language/Language;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->k:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    if-nez v0, :cond_1

    .line 308
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/o;->select_language:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->j:Ljava/util/List;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->k()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->k:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->k:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a()V

    .line 311
    return-void
.end method

.method private k()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;
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
    .line 314
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$11;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$11;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)V

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    .line 331
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->l:Ljava/util/List;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 335
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getLanguages()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

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

    .line 336
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->l:Ljava/util/List;

    new-instance v3, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;

    invoke-direct {v3, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/Country;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    :cond_1
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/o;->select_region:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->l:Ljava/util/List;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->m()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->m:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    .line 339
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->l:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;

    sget-object v3, Lcom/etermax/preguntados/datasource/dto/enums/Country;->GX:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-direct {v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/Country;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->m:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->b()V

    .line 341
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->m:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a()V

    .line 342
    return-void
.end method

.method private m()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;
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
    .line 345
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)V

    return-object v0
.end method

.method private n()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/etermax/i;->statistics_question_edit_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 385
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getQuestionMinSize()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 386
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getQuestionMinSize()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a(I)V

    .line 387
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    .line 398
    :goto_0
    return v0

    :cond_0
    move v3, v2

    .line 390
    :goto_1
    const/4 v0, 0x4

    if-gt v3, v0, :cond_2

    .line 391
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "statistics_question_edit_answer_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 392
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v4

    iget-object v5, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getAnswersMinSize()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 393
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getAnswersMinSize()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a(I)V

    .line 394
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    .line 395
    goto :goto_0

    .line 390
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 398
    goto :goto_0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/etermax/o;->thanks:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/etermax/o;->question_sent:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 428
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/b;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)V

    return-object v0
.end method

.method b()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->g()V

    .line 233
    return-void
.end method

.method c()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->h()V

    .line 262
    return-void
.end method

.method d()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->l()V

    .line 267
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->j()V

    .line 272
    return-void
.end method

.method public f()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 356
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->statistics_question_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 359
    new-instance v2, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;

    invoke-direct {v2}, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;-><init>()V

    .line 360
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v2, v1}, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;->setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 361
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->g:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-virtual {v2, v1}, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;->setCountry(Lcom/etermax/preguntados/datasource/dto/enums/Country;)V

    .line 362
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v2, v1}, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;->setLanguage(Lcom/etermax/gamescommon/language/Language;)V

    .line 363
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;->setQuestion(Ljava/lang/String;)V

    .line 365
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 367
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    const/4 v0, 0x4

    if-gt v1, v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "statistics_question_edit_answer_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 369
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    invoke-static {v0, v4, v8}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 372
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v4, 0x4090

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4010

    rem-double/2addr v0, v4

    double-to-int v1, v0

    .line 373
    invoke-virtual {v2, v1}, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;->setCorrectAnswer(I)V

    .line 375
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "statistics_question_edit_answer_1"

    const-string v6, "id"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 376
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    invoke-static {v0, v4, v8}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 377
    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;->setAnswers(Ljava/util/List;)V

    .line 379
    invoke-direct {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a(Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;)V

    .line 381
    :cond_1
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a()Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/b;->onCreate(Landroid/os/Bundle;)V

    .line 101
    if-nez p1, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    .line 103
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/Country;->GX:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->g:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 104
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getLanguages()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->EN:Lcom/etermax/gamescommon/language/Language;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/h/a;->a(Ljava/lang/String;)Lcom/etermax/preguntados/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/h/a;->a()Lcom/etermax/preguntados/datasource/dto/enums/Country;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->g:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getLanguages()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getLanguages()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->g:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    :cond_2
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/Country;->GX:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->g:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 114
    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 118
    sget v0, Lcom/etermax/k;->questions_factory_edit_question_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 119
    sget v0, Lcom/etermax/i;->statistics_question_edit_scroll:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 122
    sget v1, Lcom/etermax/i;->statistics_question_edit_text:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    .line 123
    sget v2, Lcom/etermax/i;->statistics_question_remaining_characters:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 124
    new-array v3, v6, [Landroid/text/InputFilter;

    .line 125
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget-object v5, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getQuestionMaxSize()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v10

    .line 127
    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getQuestionMaxSize()I

    move-result v4

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v1, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 129
    invoke-virtual {v1, v6}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setCursorLocked(Z)V

    .line 130
    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v1, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setQuestionLanguage(Lcom/etermax/gamescommon/language/Language;)V

    .line 131
    sget v3, Lcom/etermax/o;->tap_write_question:I

    invoke-virtual {v1, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setHint(I)V

    .line 132
    new-instance v3, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$4;

    invoke-direct {v3, p0, v2, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$4;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;Landroid/widget/TextView;Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;)V

    invoke-virtual {v1, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$5;

    invoke-direct {v2, p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$5;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;)V

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 150
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$6;

    invoke-direct {v2, p0, v7, v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$6;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;Landroid/view/View;Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setListener(Lcom/etermax/preguntados/ui/questionsfactory/widget/b;)V

    move v5, v6

    .line 159
    :goto_0
    const/4 v1, 0x4

    if-gt v5, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statistics_question_edit_answer_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 162
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statistics_question_remaining_characters_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    new-array v3, v6, [Landroid/text/InputFilter;

    .line 164
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget-object v8, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v8

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getAnswersMaxSize()I

    move-result v8

    invoke-direct {v4, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v10

    .line 166
    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getAnswersMaxSize()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 169
    const/4 v4, -0x1

    .line 170
    sget v3, Lcom/etermax/f;->grayLighter:I

    .line 171
    packed-switch v5, :pswitch_data_0

    .line 192
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 193
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 194
    new-instance v4, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$7;

    invoke-direct {v4, p0, v2, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$7;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;

    invoke-direct {v2, p0, v5, v7, v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;ILandroid/view/View;Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 215
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$9;

    invoke-direct {v2, p0, v1, v3}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$9;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;Landroid/widget/EditText;I)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 159
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_0

    .line 173
    :pswitch_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "statistics_question_answer_container_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "id"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v4, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 174
    sget v4, Lcom/etermax/h;->button_green_background:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 175
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/etermax/f;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 176
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/etermax/f;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    sget v4, Lcom/etermax/o;->correct_answer:I

    .line 178
    sget v3, Lcom/etermax/f;->white:I

    goto :goto_1

    .line 181
    :pswitch_1
    sget v4, Lcom/etermax/o;->wrong_answer_01:I

    goto :goto_1

    .line 184
    :pswitch_2
    sget v4, Lcom/etermax/o;->wrong_answer_02:I

    goto :goto_1

    .line 187
    :pswitch_3
    sget v4, Lcom/etermax/o;->wrong_answer_03:I

    goto :goto_1

    .line 227
    :cond_0
    return-object v7

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
