.class public Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/preguntados/c/a/b;

.field c:Lcom/etermax/tools/j/a;

.field d:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field e:Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 38
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->d()Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;->a(Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;->a()Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$2;->a(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/b;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;)V

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->e:Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->a(Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)V

    .line 87
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->a()Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 58
    sget v0, Lcom/etermax/k;->questions_factory_preview_question_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 60
    sget v0, Lcom/etermax/i;->questions_factory_ok_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    sget v1, Lcom/etermax/o;->send:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    sget v0, Lcom/etermax/i;->questions_factory_header_title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->b:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->d:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v1, v3}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    sget v0, Lcom/etermax/i;->questions_factory_header:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->b:Lcom/etermax/preguntados/c/a/b;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->d:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    sget v0, Lcom/etermax/i;->questions_factory_preview_text_view:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->e:Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget v0, Lcom/etermax/i;->questions_factory_preview_answer_1:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->e:Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget v0, Lcom/etermax/i;->questions_factory_preview_answer_2:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->e:Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->getAnswers()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget v0, Lcom/etermax/i;->questions_factory_preview_answer_3:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->e:Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->getAnswers()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget v0, Lcom/etermax/i;->questions_factory_preview_answer_4:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->e:Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;->getAnswers()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-object v2
.end method
