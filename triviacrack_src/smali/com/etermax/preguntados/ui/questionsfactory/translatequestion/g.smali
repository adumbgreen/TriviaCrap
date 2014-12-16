.class public final Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;
.super Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final f:Lorg/a/a/b/c;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;-><init>()V

    .line 26
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->f:Lorg/a/a/b/c;

    .line 163
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 55
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->i()V

    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->a:Lcom/etermax/preguntados/datasource/d;

    .line 57
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->b(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "mQuestion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->e:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    goto :goto_0
.end method

.method public static h()Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/h;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/h;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g$1;)V

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_2

    .line 138
    const-string v0, "mLanguageFrom"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "mLanguageFrom"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/Language;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->c:Lcom/etermax/gamescommon/language/Language;

    .line 141
    :cond_0
    const-string v0, "mConfig"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "mConfig"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->b:Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    .line 144
    :cond_1
    const-string v0, "mLanguageTo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const-string v0, "mLanguageTo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/Language;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->d:Lcom/etermax/gamescommon/language/Language;

    .line 148
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    const v0, 0x7f0a0516

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_0
    const v0, 0x7f0a0519

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_1
    const v0, 0x7f0a0513

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g$3;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_2
    const v0, 0x7f0a053d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g$4;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->b()V

    .line 133
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->a(Landroid/os/Bundle;)V

    .line 36
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->g:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->g:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    const-string v0, "mQuestion"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->e:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 154
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/g;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 64
    return-void
.end method
