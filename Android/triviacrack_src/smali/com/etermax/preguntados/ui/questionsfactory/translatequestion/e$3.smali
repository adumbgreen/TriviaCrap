.class Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:I

.field final synthetic c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Landroid/widget/EditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$3;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$3;->a:Landroid/widget/EditText;

    iput p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 255
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$3;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$3;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->e:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$3;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method
