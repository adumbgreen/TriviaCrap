.class Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

.field final synthetic c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;Landroid/widget/TextView;Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$2;->c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$2;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$2;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$2;->c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getConfig()Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->getQuestionMaxSize()I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    return-void
.end method
