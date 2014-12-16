.class public Lcom/etermax/preguntados/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/c/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-static {p1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->getByCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/preguntados/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-static {p1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->getByString(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-static {p1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->getCategoryAtIndex(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    return-object v0
.end method

.method public a()[Lcom/etermax/preguntados/c/a/g;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->values()[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-static {p1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->getIconByCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v0

    return v0
.end method

.method public c(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategoryMapper;->getOrdinalByCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v0

    return v0
.end method

.method public d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/d;->a(Ljava/lang/String;)Lcom/etermax/preguntados/c/a/d;

    move-result-object v0

    return-object v0
.end method
