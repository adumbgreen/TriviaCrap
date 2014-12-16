.class public Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    .line 13
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_SPELLING_OR_GRAMMAR:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget v3, Lcom/etermax/o;->report_type_01:I

    sget v4, Lcom/etermax/o;->report_type_01_hint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_ANSWER:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget v3, Lcom/etermax/o;->report_type_02:I

    sget v4, Lcom/etermax/o;->report_type_02_hint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_CATEGORY:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget v3, Lcom/etermax/o;->report_type_03:I

    sget v4, Lcom/etermax/o;->report_type_03_hint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_REGION:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget v3, Lcom/etermax/o;->report_type_04:I

    sget v4, Lcom/etermax/o;->report_type_04_hint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_LANGUAGE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget v3, Lcom/etermax/o;->report_type_05:I

    sget v4, Lcom/etermax/o;->report_type_05_hint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->MISSPELLED:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget v3, Lcom/etermax/o;->report_type_06_:I

    sget v4, Lcom/etermax/o;->report_type_06_hint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->REPEATED:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget v3, Lcom/etermax/o;->report_type_07:I

    sget v4, Lcom/etermax/o;->report_type_07_hint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->VERY_SPECIFIC:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget v3, Lcom/etermax/o;->report_type_08:I

    sget v4, Lcom/etermax/o;->report_type_08_hint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->OFFENSIVE_CONTENT:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget v3, Lcom/etermax/o;->report_type_09:I

    sget v4, Lcom/etermax/o;->report_type_09_hint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->FUTURE_CHANGES:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget v3, Lcom/etermax/o;->report_type_10:I

    sget v4, Lcom/etermax/o;->report_type_10_hint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->SPAM:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget v3, Lcom/etermax/o;->report_type_11:I

    sget v4, Lcom/etermax/o;->report_type_11_hint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->OTHER:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget v3, Lcom/etermax/o;->report_type_12:I

    sget v4, Lcom/etermax/o;->report_type_12_hint:I

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;)I
    .locals 3
    .parameter

    .prologue
    .line 32
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->DISLIKED:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    if-ne p0, v0, :cond_0

    .line 33
    sget v0, Lcom/etermax/o;->report_type_13:I

    .line 40
    :goto_0
    return v0

    .line 35
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    .line 36
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;->a()Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 37
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;->b()I

    move-result v0

    goto :goto_0

    .line 40
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a:Ljava/util/List;

    return-object v0
.end method
