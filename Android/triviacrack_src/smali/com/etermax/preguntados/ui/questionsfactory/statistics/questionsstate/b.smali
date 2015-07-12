.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/b;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;-><init>()V

    .line 16
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;II)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/d;->e()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/e;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/e;->a(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/e;->b(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/e;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->ONLINE:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;
    .locals 1
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/g;

    invoke-direct {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/g;-><init>(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V

    return-object v0
.end method

.method protected b(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/b;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/c;

    invoke-interface {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/c;->a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V

    .line 48
    return-void
.end method

.method protected c(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    return-void
.end method

.method public d()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/c;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/b$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/b$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/b;)V

    return-object v0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/b;->d()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/c;

    move-result-object v0

    return-object v0
.end method
