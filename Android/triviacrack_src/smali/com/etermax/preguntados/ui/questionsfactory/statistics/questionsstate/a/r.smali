.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->a:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->b()V

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->notifyDataSetChanged()V

    .line 71
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/util/Collection;)V

    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->notifyDataSetChanged()V

    .line 56
    return-void
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/util/Collection;)V

    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->notifyDataSetChanged()V

    .line 61
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->a(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->a(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;->a(Landroid/content/Context;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;->values()[Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
