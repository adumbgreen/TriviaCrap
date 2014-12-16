.class public Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 13
    iput p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;->b:I

    .line 14
    iput p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;->c:I

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;->c:I

    return v0
.end method
