.class Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    iput p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->a:I

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    iget v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->a:I

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->b:Landroid/view/View;

    sget v1, Lcom/etermax/i;->statistics_question_edit_scroll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 170
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statistics_question_answer_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->a:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    iget-object v5, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    invoke-static {v5}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->c(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    invoke-virtual {v3}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statistics_question_edit_answer_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->a:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    iget-object v6, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    invoke-static {v6}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->d(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 172
    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 173
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 178
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$5;->c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->e(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    goto :goto_0
.end method
