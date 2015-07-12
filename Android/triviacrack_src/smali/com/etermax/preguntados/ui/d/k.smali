.class public Lcom/etermax/preguntados/ui/d/k;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/RelativeLayout;

.field d:Lcom/etermax/preguntados/b/a;

.field e:Lcom/etermax/preguntados/c/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-static {}, Lcom/etermax/preguntados/ui/d/l;->c()Lcom/etermax/preguntados/ui/d/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/d/m;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/ui/d/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/d/m;->a()Lcom/etermax/preguntados/ui/d/k;

    move-result-object v0

    .line 33
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/k;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/k;->e:Lcom/etermax/preguntados/c/a/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/d/k;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/f;->a()I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/etermax/preguntados/ui/d/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/k;->d:Lcom/etermax/preguntados/b/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/d/k;->e:Lcom/etermax/preguntados/c/a/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/d/k;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/preguntados/c/a/f;->b()Lcom/etermax/preguntados/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/b/a;->b(Lcom/etermax/preguntados/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/k;->d:Lcom/etermax/preguntados/b/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/d/k;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/d/k;->e:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/d/k;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/f;->b()Lcom/etermax/preguntados/b/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/b/a;->a(Landroid/view/ViewGroup;Lcom/etermax/preguntados/b/c;)V

    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/k;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/k;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/k;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 57
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/k;->d:Lcom/etermax/preguntados/b/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/d/k;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/b/a;->a(Landroid/view/ViewGroup;)V

    .line 63
    return-void
.end method
