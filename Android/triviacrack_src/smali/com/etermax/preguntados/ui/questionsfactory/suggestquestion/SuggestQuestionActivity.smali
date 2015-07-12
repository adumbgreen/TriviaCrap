.class public Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/b;
.implements Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/f;


# instance fields
.field protected a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    .line 42
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->a:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-static {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 47
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 48
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->finish()V

    .line 54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 36
    return-void
.end method
