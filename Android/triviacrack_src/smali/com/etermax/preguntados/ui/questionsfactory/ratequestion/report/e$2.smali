.class Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->a(Landroid/widget/ListView;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;

    .line 85
    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->a(I)V

    .line 87
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->b(I)Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;->a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;->a()Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    move-result-object v0

    iput-object v0, v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 88
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;

    iput p3, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->c:I

    .line 89
    return-void
.end method
