.class public Lcom/etermax/preguntados/ui/dashboard/widget/b;
.super Lcom/etermax/preguntados/ui/dashboard/widget/a;
.source "SourceFile"


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/dashboard/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/widget/a;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/dashboard/h;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/etermax/i;->container:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/b;->b:Landroid/view/View;

    .line 32
    sget v0, Lcom/etermax/i;->title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/b;->c:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/etermax/i;->text:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/b;->d:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/etermax/i;->image:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/b;->e:Landroid/widget/ImageView;

    .line 35
    return-void
.end method

.method public b()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/b;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->duel_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/b;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->group_challenge:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/b;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->friends_challenge_txt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/h;->amigos_dashboard:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 47
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getClickAction()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/b;->a:Lcom/etermax/preguntados/ui/dashboard/h;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/dashboard/h;->A()V

    .line 57
    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/etermax/k;->button_duel_group_layout:I

    return v0
.end method
