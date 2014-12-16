.class public abstract Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/etermax/tools/navigation/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

.field c:I

.field d:I

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 147
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->c(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 174
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 175
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;

    .line 176
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;->getTotal()I

    move-result v3

    .line 178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->c(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 180
    new-instance v5, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/b;

    invoke-direct {v5, v0, v3}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/b;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;I)V

    .line 181
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;->getQuestions()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 185
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;->getQuestions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    .line 186
    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_2
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->c(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 190
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->e:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->f:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;

    invoke-virtual {v1, v0, v4}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/util/Collection;)V

    .line 196
    :goto_2
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->f:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 197
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/o;

    invoke-direct {v1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/o;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 198
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->f:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;

    invoke-virtual {v1, v0, v3}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/util/Collection;)V

    goto :goto_0

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->f:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;

    invoke-virtual {v1, v0, v4}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/util/Collection;)V

    goto :goto_2

    .line 204
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->f:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;

    return-object v0
.end method

.method private b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;->a(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    return-void
.end method

.method private c(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 2
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    .line 217
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/BaseAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter

    .prologue
    .line 122
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$2;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Landroid/widget/BaseAdapter;)V

    return-object v0
.end method

.method protected abstract a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;
.end method

.method protected abstract a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;
.end method

.method protected a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 155
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->c()V

    .line 72
    return-void
.end method

.method protected abstract b(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->f:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->f:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->a()V

    .line 93
    :cond_0
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;->a(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method protected abstract c(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/b;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->f:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->e:Ljava/util/Map;

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    sget v0, Lcom/etermax/k;->statistics_questions_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    sget v0, Lcom/etermax/i;->questions_factory_header_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->my_questions:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 80
    sget v0, Lcom/etermax/i;->statistics_questions_list_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->c:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget v0, Lcom/etermax/i;->statistics_questions_list_subtitle:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->d:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    sget v0, Lcom/etermax/i;->statistics_questions_list_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->f:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    sget v0, Lcom/etermax/i;->statistics_questions_list_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->f:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a(Landroid/widget/BaseAdapter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    return-object v1
.end method
