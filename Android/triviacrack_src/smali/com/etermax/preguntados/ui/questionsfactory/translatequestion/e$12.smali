.class Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iput p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;->a:I

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;->b:Landroid/view/View;

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
    .line 229
    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;->a:I

    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->g()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->f()V

    .line 239
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    const-string v2, "text_translation_answer_"

    iget v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;->a:I

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 234
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;->b:Landroid/view/View;

    sget v2, Lcom/etermax/i;->translation_scroll:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 235
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;->b:Landroid/view/View;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    const-string v5, "translate_questions_answer_"

    iget v6, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$12;->a:I

    add-int/lit8 v6, v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 236
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method
