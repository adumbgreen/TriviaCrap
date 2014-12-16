.class public Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/ui/profile/l;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/profile/l;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/profile/l;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;->c:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method
