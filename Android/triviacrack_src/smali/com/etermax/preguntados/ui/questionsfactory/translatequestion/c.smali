.class public final Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;
.super Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;
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
    .line 22
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;-><init>()V

    .line 27
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->f:Lorg/a/a/b/c;

    .line 103
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 55
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->e()V

    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->a:Lcom/etermax/preguntados/datasource/d;

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->c:Lcom/etermax/tools/j/a;

    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->b:Lcom/etermax/preguntados/c/a/b;

    .line 59
    return-void
.end method

.method public static d()Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c$1;)V

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    const-string v0, "mQuestionCategory"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "mQuestionCategory"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->d:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 97
    :cond_0
    const-string v0, "mUserTranslationDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "mUserTranslationDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->e:Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    const v0, 0x7f0a0413

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->b()V

    .line 89
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->a(Landroid/os/Bundle;)V

    .line 36
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->onCreate(Landroid/os/Bundle;)V

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
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->g:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->g:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 65
    return-void
.end method
