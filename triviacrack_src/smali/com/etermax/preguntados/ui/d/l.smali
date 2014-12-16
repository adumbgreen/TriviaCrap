.class public final Lcom/etermax/preguntados/ui/d/l;
.super Lcom/etermax/preguntados/ui/d/k;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final f:Lorg/a/a/b/c;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/d/k;-><init>()V

    .line 28
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->f:Lorg/a/a/b/c;

    .line 104
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 58
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/d/l;->d()V

    .line 59
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/b/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->d:Lcom/etermax/preguntados/b/a;

    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->e:Lcom/etermax/preguntados/c/a/b;

    .line 61
    return-void
.end method

.method public static c()Lcom/etermax/preguntados/ui/d/m;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/etermax/preguntados/ui/d/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/d/m;-><init>(Lcom/etermax/preguntados/ui/d/l$1;)V

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/l;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    const-string v1, "mSelectedCrown"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "mSelectedCrown"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    const v0, 0x7f0a01ed

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->b:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f0a01ec

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->c:Landroid/widget/RelativeLayout;

    .line 78
    const v0, 0x7f0a0540

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Lcom/etermax/preguntados/ui/d/l$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/d/l$1;-><init>(Lcom/etermax/preguntados/ui/d/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/l;->a()V

    .line 93
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/d/l;->a(Landroid/os/Bundle;)V

    .line 36
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/d/k;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/d/k;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->g:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 51
    const v0, 0x7f03013f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->g:Landroid/view/View;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->g:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/d/k;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/l;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 67
    return-void
.end method
