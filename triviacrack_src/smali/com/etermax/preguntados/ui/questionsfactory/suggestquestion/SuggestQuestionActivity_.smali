.class public final Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_;
.super Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final b:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;-><init>()V

    .line 26
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_;->b:Lorg/a/a/b/c;

    .line 87
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_;->b(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string v0, "mQuestionsFactoryConfigDTO"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_;->b:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_;->a(Landroid/os/Bundle;)V

    .line 32
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_;->onBackPressed()V

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "mQuestionsFactoryConfigDTO"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 78
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->setContentView(I)V

    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_;->b:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 44
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->setContentView(Landroid/view/View;)V

    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_;->b:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 56
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_;->b:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 50
    return-void
.end method
