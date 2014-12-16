.class public final Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;
.super Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final d:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;-><init>()V

    .line 29
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->d:Lorg/a/a/b/c;

    .line 108
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->c()V

    .line 42
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->a:Lcom/etermax/preguntados/datasource/d;

    .line 43
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->b(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v0, "mQuestion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->c:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const-string v1, "mConfigDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "mConfigDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->d:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->a(Landroid/os/Bundle;)V

    .line 36
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 38
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->onBackPressed()V

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "mQuestion"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->c:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 99
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->setContentView(I)V

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->d:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 50
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->d:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 62
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->d:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 56
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->setIntent(Landroid/content/Intent;)V

    .line 92
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;->c()V

    .line 93
    return-void
.end method
