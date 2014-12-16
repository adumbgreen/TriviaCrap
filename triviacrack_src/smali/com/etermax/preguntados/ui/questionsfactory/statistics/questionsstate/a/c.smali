.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/preguntados/c/a/b;

.field b:Landroid/widget/RelativeLayout;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;->a:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v2, p1}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;->a:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v2, p1}, Lcom/etermax/preguntados/c/a/b;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;->a:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v1, p1}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;->e:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method
