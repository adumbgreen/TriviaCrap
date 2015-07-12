.class Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/widget/ScrollView;

.field final synthetic d:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;ILandroid/view/View;Landroid/widget/ScrollView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->d:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    iput p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->a:I

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->c:Landroid/widget/ScrollView;

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
    const/4 v6, 0x0

    .line 204
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 205
    iget v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->d:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 212
    :cond_0
    :goto_0
    return v6

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->d:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statistics_question_edit_answer_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->a:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->d:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-static {v4}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->b(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 209
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->c:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->d:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statistics_question_answer_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->a:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    iget-object v5, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$8;->d:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-static {v5}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->c(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method
