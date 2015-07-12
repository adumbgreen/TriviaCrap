.class Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$10;->b:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$10;->a:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$10;->a:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$10;->a:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->a()V

    .line 205
    return-void
.end method
