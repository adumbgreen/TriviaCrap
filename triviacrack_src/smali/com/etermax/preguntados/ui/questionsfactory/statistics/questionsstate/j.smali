.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/k;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

.field b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

.field c:Lcom/etermax/preguntados/c/a/b;

.field d:Lcom/etermax/preguntados/datasource/d;

.field e:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field f:Lcom/etermax/preguntados/datasource/dto/enums/Country;

.field g:Lcom/etermax/gamescommon/language/Language;

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
    .line 61
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->h()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;->a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;->a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 400
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/widget/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 401
    invoke-virtual {v0, p0, v4}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 402
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "min_length"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->n()V

    return-void
.end method

.method static synthetic g(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 235
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->h:Ljava/util/List;

    .line 237
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->h:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;-><init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->h:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v3, v5}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;-><init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->h:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;-><init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->h:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;-><init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->h:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;-><init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->h:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;-><init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->i:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    if-nez v0, :cond_1

    .line 245
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/o;->select_category:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->h:Ljava/util/List;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->i()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->i:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->i:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a()V

    .line 248
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
    .line 251
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$6;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$6;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)V

    return-object v0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 261
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->j:Ljava/util/List;

    .line 263
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

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

    .line 264
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->j:Ljava/util/List;

    new-instance v3, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;

    invoke-direct {v3, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;-><init>(Lcom/etermax/gamescommon/language/Language;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->k:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    if-nez v0, :cond_1

    .line 268
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/o;->select_language:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->j:Ljava/util/List;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->k()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->k:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->k:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a()V

    .line 271
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
    .line 274
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$7;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$7;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)V

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    .line 285
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->l:Ljava/util/List;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 289
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getLanguages()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->g:Lcom/etermax/gamescommon/language/Language;

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

    .line 290
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->l:Ljava/util/List;

    new-instance v3, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;

    invoke-direct {v3, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/Country;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_1
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/o;->select_region:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->l:Ljava/util/List;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->m()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/List;Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->m:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    .line 293
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->l:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;

    sget-object v3, Lcom/etermax/preguntados/datasource/dto/enums/Country;->GX:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-direct {v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/Country;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->m:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->b()V

    .line 295
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->m:Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/b;->a()V

    .line 296
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
    .line 299
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$8;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$8;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)V

    return-object v0
.end method

.method private n()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getView()Landroid/view/View;

    move-result-object v1

    .line 315
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->e:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v2

    .line 318
    sget v0, Lcom/etermax/i;->questions_factory_header:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 319
    sget v0, Lcom/etermax/i;->questions_factory_header_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 320
    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->e:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    sget v0, Lcom/etermax/i;->questions_factory_header_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 323
    sget v0, Lcom/etermax/i;->questions_factory_header_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v3, 0x4188

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 324
    sget v0, Lcom/etermax/i;->questions_factory_ok_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 325
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    sget v3, Lcom/etermax/o;->forward:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 327
    const/high16 v3, 0x4140

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 330
    sget v0, Lcom/etermax/i;->questions_factory_bar_category_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 331
    sget v0, Lcom/etermax/i;->questions_factory_bar_country_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->f:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-static {v2}, Lcom/etermax/preguntados/h/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/Country;)Lcom/etermax/preguntados/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/h/a;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->g:Lcom/etermax/gamescommon/language/Language;

    invoke-static {v0}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_0

    .line 334
    sget v0, Lcom/etermax/i;->questions_factory_bar_language_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getNameResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 336
    :cond_0
    return-void
.end method

.method private o()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 339
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    new-instance v2, Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;

    invoke-direct {v2}, Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;-><init>()V

    .line 341
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getId()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;->setId(J)V

    .line 342
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->e:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v2, v0}, Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;->setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->f:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {v2, v0}, Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;->setCountries(Ljava/util/List;)V

    .line 347
    new-instance v3, Lcom/etermax/preguntados/datasource/dto/TranslationDTO;

    invoke-direct {v3}, Lcom/etermax/preguntados/datasource/dto/TranslationDTO;-><init>()V

    .line 348
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getTranslation_id()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/etermax/preguntados/datasource/dto/TranslationDTO;->setId(J)V

    .line 349
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->g:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/datasource/dto/TranslationDTO;->setLanguage(Lcom/etermax/gamescommon/language/Language;)V

    .line 351
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getView()Landroid/view/View;

    move-result-object v0

    sget v4, Lcom/etermax/i;->statistics_question_edit_text:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 352
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->g:Lcom/etermax/gamescommon/language/Language;

    invoke-static {v0, v4, v1}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/datasource/dto/TranslationDTO;->setText(Ljava/lang/String;)V

    .line 354
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 355
    :goto_0
    const/4 v0, 0x4

    if-gt v1, v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "statistics_question_edit_answer_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 357
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->g:Lcom/etermax/gamescommon/language/Language;

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/datasource/dto/TranslationDTO;->setAnswers(Ljava/util/List;)V

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {v2, v0}, Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;->setTranslations(Ljava/util/List;)V

    .line 365
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$9;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$9;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$9;->a(Ljava/lang/Object;)Z

    .line 379
    :cond_1
    return-void
.end method

.method private p()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getView()Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/etermax/i;->statistics_question_edit_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 383
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getQuestionMinSize()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 384
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getQuestionMinSize()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a(I)V

    .line 385
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    .line 396
    :goto_0
    return v0

    :cond_0
    move v3, v2

    .line 388
    :goto_1
    const/4 v0, 0x4

    if-gt v3, v0, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 390
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v4

    iget-object v5, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getAnswersMinSize()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 391
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getAnswersMinSize()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a(I)V

    .line 392
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    .line 393
    goto :goto_0

    .line 388
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 396
    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/k;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)V

    return-object v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->e:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getCountries()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/Country;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->f:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 106
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getLanguage()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->g:Lcom/etermax/gamescommon/language/Language;

    .line 107
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getOrigin()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->ORIGINAL:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    if-ne v0, v1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->h()V

    .line 207
    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getOrigin()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->ORIGINAL:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    if-ne v0, v1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->l()V

    .line 214
    :cond_0
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getOrigin()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->ORIGINAL:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    if-ne v0, v1, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->j()V

    .line 221
    :cond_0
    return-void
.end method

.method f()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->o()V

    .line 226
    return-void
.end method

.method g()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->n()V

    .line 311
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/k;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 111
    sget v0, Lcom/etermax/k;->questions_factory_edit_question_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 114
    sget v0, Lcom/etermax/i;->statistics_question_edit_text:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    .line 115
    sget v1, Lcom/etermax/i;->statistics_question_remaining_characters:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    new-array v2, v4, [Landroid/text/InputFilter;

    .line 117
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v6, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v6}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getQuestionMaxSize()I

    move-result v6

    invoke-direct {v3, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v9

    .line 119
    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 120
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setImeOptions(I)V

    .line 121
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;Landroid/widget/TextView;Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;)V

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$3;

    invoke-direct {v2, p0, v5}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$3;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getQuestionMaxSize()I

    move-result v2

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->length()I

    move-result v0

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v4

    .line 147
    :goto_0
    const/4 v0, 0x4

    if-gt v3, v0, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statistics_question_edit_answer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 150
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "statistics_question_remaining_characters_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "id"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 151
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "statistics_question_answer_container_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 153
    new-array v2, v4, [Landroid/text/InputFilter;

    .line 154
    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    iget-object v8, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v8

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getAnswersMaxSize()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v2, v9

    .line 156
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 157
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$4;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;

    invoke-direct {v2, p0, v3, v5}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 181
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getAnswers()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getAnswersMaxSize()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v7

    sub-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    add-int/lit8 v2, v3, -0x1

    iget-object v7, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getCorrectAnswer()I

    move-result v7

    if-ne v2, v7, :cond_2

    .line 186
    sget v2, Lcom/etermax/h;->button_green_background:I

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/etermax/f;->white:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 188
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/etermax/f;->white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getOrigin()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->TRANSLATION:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    if-ne v0, v1, :cond_3

    .line 193
    sget v0, Lcom/etermax/i;->questions_factory_bar:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->grayDark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 194
    sget v0, Lcom/etermax/i;->questions_factory_bar_category_button:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->grayLight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    sget v0, Lcom/etermax/i;->questions_factory_bar_language_button:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->grayLight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 199
    :cond_4
    return-object v5
.end method
