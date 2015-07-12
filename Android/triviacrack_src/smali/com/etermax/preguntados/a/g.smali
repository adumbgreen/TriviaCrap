.class public Lcom/etermax/preguntados/a/g;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 34
    const-string v0, "power_ups_used"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/a/g;->e(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "mode"

    invoke-virtual {p0, v0, p2}, Lcom/etermax/preguntados/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "category"

    invoke-virtual {p3}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "use_type"

    invoke-virtual {p0, v0, p4}, Lcom/etermax/preguntados/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
