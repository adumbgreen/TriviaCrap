.class public Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/b;
.implements Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/f;


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mConfig"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->d()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/e;->e()Lcom/etermax/gamescommon/language/Language;

    move-result-object v2

    .line 41
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->b:Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;->getSourceLanguages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->EN:Lcom/etermax/gamescommon/language/Language;

    move-object v1, v0

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->b:Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;->getTargetLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->EN:Lcom/etermax/gamescommon/language/Language;

    .line 47
    :goto_1
    if-ne v1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->b:Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;->getRecommendedLanguage()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    .line 49
    if-ne v0, v1, :cond_0

    .line 50
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->b:Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;->getTargetLanguages()Ljava/util/List;

    move-result-object v2

    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/Language;

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->b:Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    invoke-static {v2, v1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {p2, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 68
    const/4 v1, 0x1

    const-string v2, "fragment_preview"

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 69
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_preview"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->w()V

    .line 79
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 61
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method
