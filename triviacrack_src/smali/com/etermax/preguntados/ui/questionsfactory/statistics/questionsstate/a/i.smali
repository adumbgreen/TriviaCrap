.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/i;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 37
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/i;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getModificationDate()Ljava/util/Date;

    move-result-object v2

    .line 39
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 40
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    long-to-double v5, v5

    sub-double v2, v3, v5

    const-wide v4, 0x4194997000000000L

    div-double/2addr v2, v4

    double-to-long v2, v2

    .line 41
    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/i;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getRejectedQuestionsExpirationTime()I

    move-result v4

    int-to-long v4, v4

    sub-long v2, v4, v2

    .line 42
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/i;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getDisapprovalReason()Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;)I

    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/i;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 50
    :cond_0
    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method
