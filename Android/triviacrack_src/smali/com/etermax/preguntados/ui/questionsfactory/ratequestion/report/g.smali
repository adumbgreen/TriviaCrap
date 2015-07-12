.class public final Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;
.super Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final d:Lorg/a/a/b/c;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;-><init>()V

    .line 24
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->d:Lorg/a/a/b/c;

    .line 98
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 50
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->a:Lcom/etermax/preguntados/datasource/d;

    .line 51
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->b(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v0, "mSelectedReason"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 95
    const-string v0, "mSelectedIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->c:I

    goto :goto_0
.end method

.method public static d()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/h;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/h;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    const v0, 0x7f0a0413

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->d:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 30
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->a(Landroid/os/Bundle;)V

    .line 31
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->e:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->e:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    const-string v0, "mSelectedReason"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 87
    const-string v0, "mSelectedIndex"

    iget v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->d:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 58
    return-void
.end method
