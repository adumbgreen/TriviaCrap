.class public final Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final f:Lorg/a/a/b/c;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;-><init>()V

    .line 23
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->f:Lorg/a/a/b/c;

    .line 95
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->g()V

    .line 52
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->a:Lcom/etermax/preguntados/datasource/d;

    .line 53
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->b(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->b()V

    .line 55
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v0, "mConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->e:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    goto :goto_0
.end method

.method public static f()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t$1;)V

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    const-string v0, "mQuestionType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "mQuestionType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    .line 73
    :cond_0
    const-string v0, "mSubtitleResourceId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const-string v0, "mSubtitleResourceId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->d:I

    .line 76
    :cond_1
    const-string v0, "mTitleResourceId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    const-string v0, "mTitleResourceId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->c:I

    .line 80
    :cond_2
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 32
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->a(Landroid/os/Bundle;)V

    .line 33
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->g:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->g:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "mConfig"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->e:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 86
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 61
    return-void
.end method
