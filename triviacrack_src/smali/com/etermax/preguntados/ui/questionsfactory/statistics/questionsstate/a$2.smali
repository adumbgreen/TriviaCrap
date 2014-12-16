.class Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a(Landroid/widget/BaseAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/BaseAdapter;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$2;->a:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 125
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$2;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;

    .line 127
    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$4;->a:[I

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v1, v0

    .line 129
    check-cast v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/f;

    .line 130
    instance-of v2, v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/k;

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/g;

    if-eqz v2, :cond_2

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/f;->c()Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->b(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V

    goto :goto_0

    .line 132
    :cond_2
    instance-of v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/h;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/f;->c()Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->c(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V

    goto :goto_0

    .line 137
    :pswitch_1
    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/o;

    .line 138
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/o;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/o;->a(Z)V

    .line 140
    instance-of v1, p2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/p;

    if-eqz v1, :cond_3

    .line 141
    check-cast p2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/p;

    invoke-virtual {p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/p;->b()V

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/o;->b()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
