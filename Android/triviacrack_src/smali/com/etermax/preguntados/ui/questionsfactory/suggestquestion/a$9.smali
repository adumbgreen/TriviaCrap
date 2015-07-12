.class Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:I

.field final synthetic c:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;Landroid/widget/EditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$9;->c:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$9;->a:Landroid/widget/EditText;

    iput p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 218
    if-eqz p2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$9;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$9;->c:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$9;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$9;->c:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$9;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_0
.end method
