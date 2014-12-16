.class Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/widget/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$8;->b:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 180
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$8;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$8;->b:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    const-string v2, "text_translation_answer_"

    invoke-static {v1, v2, v6}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 181
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$8;->a:Landroid/view/View;

    sget v2, Lcom/etermax/i;->translation_scroll:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 182
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$8;->a:Landroid/view/View;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$8;->b:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    const-string v5, "translate_questions_answer_"

    invoke-static {v4, v5, v6}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 183
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 184
    return-void
.end method
