.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/s;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;-><init>()V

    .line 23
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;II)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->f()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;->b(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;->a(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private d(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$2;->a(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method


# virtual methods
.method protected a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->DISAPPROVED:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;
    .locals 1
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/h;

    invoke-direct {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/h;-><init>(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V

    return-object v0
.end method

.method protected b(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    return-void
.end method

.method protected c(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->e:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->d(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/s;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->e:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-interface {v0, v1, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/s;->a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V

    goto :goto_0
.end method

.method public d()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/s;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;)V

    return-object v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->c()V

    .line 87
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->d()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/s;

    move-result-object v0

    return-object v0
.end method
