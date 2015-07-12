.class public Lcom/etermax/preguntados/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/c/a/e;


# instance fields
.field a:Lcom/etermax/preguntados/c/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etermax/preguntados/c/a/b;->a:Lcom/etermax/preguntados/c/a/e;

    invoke-interface {v0, p1}, Lcom/etermax/preguntados/c/a/e;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/preguntados/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/preguntados/c/a/b;->a:Lcom/etermax/preguntados/c/a/e;

    invoke-interface {v0, p1}, Lcom/etermax/preguntados/c/a/e;->a(Ljava/lang/String;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/c/a/b;->a:Lcom/etermax/preguntados/c/a/e;

    invoke-interface {v0, p1}, Lcom/etermax/preguntados/c/a/e;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/c/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/etermax/preguntados/c/a/b;->a:Lcom/etermax/preguntados/c/a/e;

    .line 15
    return-void
.end method

.method public a()[Lcom/etermax/preguntados/c/a/g;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/c/a/b;->a:Lcom/etermax/preguntados/c/a/e;

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/e;->a()[Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/c/a/b;->a:Lcom/etermax/preguntados/c/a/e;

    invoke-interface {v0, p1}, Lcom/etermax/preguntados/c/a/e;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v0

    return v0
.end method

.method public c(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/c/a/b;->a:Lcom/etermax/preguntados/c/a/e;

    invoke-interface {v0, p1}, Lcom/etermax/preguntados/c/a/e;->c(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v0

    return v0
.end method

.method public d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/c/a/b;->a:Lcom/etermax/preguntados/c/a/e;

    invoke-interface {v0, p1}, Lcom/etermax/preguntados/c/a/e;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v0

    return-object v0
.end method
