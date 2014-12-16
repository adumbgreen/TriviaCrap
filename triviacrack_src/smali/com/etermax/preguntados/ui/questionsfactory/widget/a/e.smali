.class public Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;
.super Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/preguntados/c/a/b;

.field private b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;->a:Lcom/etermax/preguntados/c/a/b;

    .line 16
    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;->a:Lcom/etermax/preguntados/c/a/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;->a:Lcom/etermax/preguntados/c/a/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/preguntados/c/a/g;->getColouredIconResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    return-object v0
.end method
