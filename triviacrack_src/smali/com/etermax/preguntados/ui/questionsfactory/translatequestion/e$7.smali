.class Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

.field final synthetic c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Landroid/widget/TextView;Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$7;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$7;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$7;->b:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$7;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$7;->b:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->length()I

    move-result v1

    rsub-int v1, v1, 0xfa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    return-void
.end method
