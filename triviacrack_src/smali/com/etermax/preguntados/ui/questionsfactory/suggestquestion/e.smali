.class public Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:[I


# instance fields
.field a:Lcom/etermax/preguntados/c/a/b;

.field b:Lcom/etermax/preguntados/datasource/d;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/etermax/i;->suggest_question_select_category_less_1:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/etermax/i;->suggest_question_select_category_less_2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/etermax/i;->suggest_question_select_category_less_3:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/etermax/i;->suggest_question_select_category_other_1:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/etermax/i;->suggest_question_select_category_other_2:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/etermax/i;->suggest_question_select_category_other_3:I

    aput v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->e:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->getView()Landroid/view/View;

    move-result-object v3

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->d:Ljava/util/Map;

    .line 110
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->e:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->d:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->e:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->suggest_question_select_category_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->a:Lcom/etermax/preguntados/c/a/b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v5, v2}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->suggest_question_select_category_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->a:Lcom/etermax/preguntados/c/a/b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v5, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/g;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-direct {v2, p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/g;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 120
    :cond_1
    return-void
.end method

.method public static b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->d()Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/i;->a()Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$2;->a(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/f;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;)V

    return-object v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->d()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->a()Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/f;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    sget v0, Lcom/etermax/k;->suggest_question_select_category_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    sget v0, Lcom/etermax/i;->questions_factory_header_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->suggest:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 74
    return-object v1
.end method
