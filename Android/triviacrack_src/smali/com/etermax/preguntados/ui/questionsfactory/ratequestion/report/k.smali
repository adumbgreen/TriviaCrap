.class public Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->c:I

    .line 28
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->b:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->b:Ljava/util/List;

    iget v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;->a(Z)V

    .line 36
    :cond_0
    iput p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->c:I

    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;->a(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->notifyDataSetChanged()V

    .line 39
    return-void
.end method

.method public b(I)Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->b(I)Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 66
    if-nez p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->rate_question_reason_list_item_layout:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 69
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k$1;)V

    .line 70
    sget v0, Lcom/etermax/i;->item_checkbox_unselected:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;->a:Landroid/widget/CheckedTextView;

    .line 71
    sget v0, Lcom/etermax/i;->item_checkbox_selected:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;->b:Landroid/widget/CheckedTextView;

    .line 72
    sget v0, Lcom/etermax/i;->item_hint:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;->c:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 79
    :goto_0
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->b(I)Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;

    move-result-object v1

    .line 81
    iget-object v2, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;->a:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;->a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;->b:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;->a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;->a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/j;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/m;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 86
    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;->a:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v6}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 92
    :goto_1
    return-object p2

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 89
    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/l;->a:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    goto :goto_1
.end method
