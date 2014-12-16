.class public final Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;
.super Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final c:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;-><init>()V

    .line 28
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;->c:Lorg/a/a/b/c;

    .line 93
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;->c()V

    .line 41
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;->a:Lcom/etermax/preguntados/datasource/d;

    .line 42
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    const-string v1, "mConfig"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "mConfig"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;->b:Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;->c:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 34
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;->a(Landroid/os/Bundle;)V

    .line 35
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 37
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;->onBackPressed()V

    .line 75
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->setContentView(I)V

    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 48
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 60
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 54
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->setIntent(Landroid/content/Intent;)V

    .line 90
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;->c()V

    .line 91
    return-void
.end method
