.class public Lcom/etermax/preguntados/ui/profile/d;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/etermax/preguntados/ui/profile/d;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/TextView;

.field f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/d;->a()V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/ui/profile/d;)I
    .locals 2
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/etermax/preguntados/ui/profile/d;->f:I

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/profile/d;->getPercentage()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/d;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/k;->profile_category_item:I

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/ui/profile/d;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    sget v0, Lcom/etermax/i;->category_icon:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/d;->d:Landroid/widget/ImageView;

    .line 31
    sget v0, Lcom/etermax/i;->category_percentage:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/d;->a:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/etermax/i;->category_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/d;->c:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/etermax/i;->question_quantity_value:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/d;->b:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/etermax/i;->question_quantity_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/d;->e:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/d;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/d;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/etermax/o;->question_plural:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 64
    sget v0, Lcom/etermax/i;->separator_category:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 12
    check-cast p1, Lcom/etermax/preguntados/ui/profile/d;

    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/profile/d;->a(Lcom/etermax/preguntados/ui/profile/d;)I

    move-result v0

    return v0
.end method

.method public getPercentage()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/etermax/preguntados/ui/profile/d;->f:I

    return v0
.end method

.method public setCategoryTitle(I)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/d;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setCharacterImage(I)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    return-void
.end method

.method public setPercentage(I)V
    .locals 3
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/etermax/preguntados/ui/profile/d;->f:I

    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/d;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public setPercentageTextColor(I)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/d;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    return-void
.end method

.method public setQuantity(I)V
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/d;->b:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method
