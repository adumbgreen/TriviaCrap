.class Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$5;->b:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$5;->a:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    if-eqz p2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$5;->a:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$5;->b:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setHintTextColor(I)V

    .line 144
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$5;->a:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->a()V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$5;->a:Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$5;->b:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->grayLighter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setHintTextColor(I)V

    goto :goto_0
.end method
