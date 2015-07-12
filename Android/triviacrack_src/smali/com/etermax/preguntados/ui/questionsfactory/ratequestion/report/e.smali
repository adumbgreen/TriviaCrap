.class public Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/f;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->c:I

    .line 34
    return-void
.end method

.method private a(Landroid/widget/ListView;)V
    .locals 4
    .parameter

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    .line 69
    new-instance v3, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;

    invoke-direct {v3}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;-><init>()V

    .line 70
    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;->a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;)V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;->a(Z)V

    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 76
    iget v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 77
    iget v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->c:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->a(I)V

    .line 80
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    return-void
.end method

.method public static b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->d()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/h;->a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/f;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;)V

    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/o;->report_options:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->OTHER:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/f;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/f;->b()V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/f;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/f;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;)V

    goto :goto_0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/f;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 54
    sget v0, Lcom/etermax/k;->rate_question_report_fragment:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    sget v0, Lcom/etermax/i;->questions_factory_header_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/o;->report:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    sget v0, Lcom/etermax/i;->questions_factory_ok_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 58
    sget v0, Lcom/etermax/i;->rate_question_report_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 60
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->a(Landroid/widget/ListView;)V

    .line 62
    return-object v1
.end method
