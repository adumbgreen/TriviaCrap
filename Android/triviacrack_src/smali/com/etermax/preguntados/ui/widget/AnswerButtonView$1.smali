.class Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->b(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-static {v2}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->c(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/CustomFontButton;->a(II)V

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->c:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->c:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setTextColor(I)V

    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->f(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)Lcom/etermax/preguntados/ui/widget/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->f(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)Lcom/etermax/preguntados/ui/widget/b;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->g(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/widget/b;->a(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->setEnabled(Z)V

    .line 83
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->a:Lcom/etermax/tools/widget/CustomFontButton;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->d(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    invoke-static {v2}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->e(Lcom/etermax/preguntados/ui/widget/AnswerButtonView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/CustomFontButton;->a(II)V

    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView$1;->a:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->c:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->d:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    goto :goto_0
.end method
