.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/o;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/c/a/b;

.field b:Lcom/etermax/preguntados/sharing/m;

.field c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 40
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->d()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;->a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/o;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;)V

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 97
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->a:Lcom/etermax/preguntados/c/a/b;

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/sharing/r;->a(Landroid/content/Context;Lcom/etermax/preguntados/sharing/p;Lcom/etermax/preguntados/c/a/b;)Lcom/etermax/preguntados/sharing/q;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->b:Lcom/etermax/preguntados/sharing/m;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 104
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/o;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    sget v0, Lcom/etermax/k;->questions_factory_preview_question_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 62
    sget v0, Lcom/etermax/i;->questions_factory_header_image:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->a:Lcom/etermax/preguntados/c/a/b;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/etermax/preguntados/c/a/b;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    sget v0, Lcom/etermax/i;->questions_factory_header_title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->a:Lcom/etermax/preguntados/c/a/b;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    sget v0, Lcom/etermax/i;->questions_factory_header:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->a:Lcom/etermax/preguntados/c/a/b;

    iget-object v5, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v4

    invoke-interface {v4}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    sget v0, Lcom/etermax/i;->question_factory_header_share_image:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    sget v0, Lcom/etermax/i;->questions_factory_preview_title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    sget v0, Lcom/etermax/i;->questions_factory_preview_text_view:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v0, 0x4

    new-array v4, v0, [I

    sget v0, Lcom/etermax/i;->questions_factory_preview_answer_1:I

    aput v0, v4, v1

    const/4 v0, 0x1

    sget v2, Lcom/etermax/i;->questions_factory_preview_answer_2:I

    aput v2, v4, v0

    const/4 v0, 0x2

    sget v2, Lcom/etermax/i;->questions_factory_preview_answer_3:I

    aput v2, v4, v0

    const/4 v0, 0x3

    sget v2, Lcom/etermax/i;->questions_factory_preview_answer_4:I

    aput v2, v4, v0

    move v2, v1

    .line 82
    :goto_0
    array-length v0, v4

    if-ge v2, v0, :cond_1

    .line 83
    aget v0, v4, v2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontButton;

    .line 84
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getCorrectAnswer()I

    move-result v1

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getOrigin()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    move-result-object v1

    sget-object v5, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->TRANSLATION:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    if-eq v1, v5, :cond_0

    .line 86
    sget v1, Lcom/etermax/h;->button_green_background:I

    sget v5, Lcom/etermax/h;->button_green_background_pressed:I

    invoke-virtual {v0, v1, v5}, Lcom/etermax/tools/widget/CustomFontButton;->a(II)V

    .line 87
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/etermax/f;->white:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setTextColor(I)V

    .line 82
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 91
    :cond_1
    return-object v3
.end method
