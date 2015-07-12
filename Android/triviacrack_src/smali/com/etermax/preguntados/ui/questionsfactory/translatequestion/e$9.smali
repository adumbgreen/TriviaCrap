.class Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$9;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 190
    if-eqz p2, :cond_0

    .line 191
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    .line 192
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$9;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/f;->transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setHintTextColor(I)V

    .line 193
    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->a()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$9;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/f;->grayLighter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_0
.end method
