.class public final Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final h:Lorg/a/a/b/c;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;-><init>()V

    .line 29
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->h:Lorg/a/a/b/c;

    .line 168
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 57
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->i()V

    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->d:Lcom/etermax/preguntados/datasource/d;

    .line 59
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->c:Lcom/etermax/preguntados/c/a/b;

    .line 60
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->b(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->b()V

    .line 62
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v0, "mSelectedCategory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->e:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 164
    const-string v0, "mSelectedCountry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/Country;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->f:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 165
    const-string v0, "mSelectedLanguage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/Language;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->g:Lcom/etermax/gamescommon/language/Language;

    goto :goto_0
.end method

.method public static h()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l$1;)V

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_1

    .line 142
    const-string v0, "mConfigDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "mConfigDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    .line 145
    :cond_0
    const-string v0, "mQuestionDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "mQuestionDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    .line 149
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    const v0, 0x7f0a03fd

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    const v0, 0x7f0a0413

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_1
    const v0, 0x7f0a03fc

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l$3;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_2
    const v0, 0x7f0a03fb

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l$4;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->g()V

    .line 137
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->h:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 37
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->a(Landroid/os/Bundle;)V

    .line 38
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->i:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->i:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    const-string v0, "mSelectedCategory"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->e:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 155
    const-string v0, "mSelectedCountry"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->f:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 156
    const-string v0, "mSelectedLanguage"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->g:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 157
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->h:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 68
    return-void
.end method
