.class Lcom/etermax/preguntados/datasource/d$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
        "Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

.field final synthetic c:I

.field final synthetic d:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field final synthetic e:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/datasource/d;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/d$17;->e:Lcom/etermax/preguntados/datasource/d;

    iput-object p2, p0, Lcom/etermax/preguntados/datasource/d$17;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    iput-object p3, p0, Lcom/etermax/preguntados/datasource/d$17;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    iput p4, p0, Lcom/etermax/preguntados/datasource/d$17;->c:I

    iput-object p5, p0, Lcom/etermax/preguntados/datasource/d$17;->d:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$17;->e:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->c:Lcom/etermax/preguntados/datasource/b;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d$17;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-static {v1}, Lcom/etermax/preguntados/datasource/d;->x(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/preguntados/datasource/d$17;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    iget-object v4, p0, Lcom/etermax/preguntados/datasource/d$17;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    iget v5, p0, Lcom/etermax/preguntados/datasource/d$17;->c:I

    iget-object v6, p0, Lcom/etermax/preguntados/datasource/d$17;->d:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-interface/range {v0 .. v6}, Lcom/etermax/preguntados/datasource/b;->a(JLcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d$17;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
