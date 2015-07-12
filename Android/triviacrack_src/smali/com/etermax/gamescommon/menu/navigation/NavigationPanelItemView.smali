.class public Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/gamescommon/e;

.field protected b:Lcom/etermax/gamescommon/login/datasource/a;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/ViewSwitcher;

.field protected f:Lcom/etermax/tools/widget/CustomFontTextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/etermax/h;->navigation_panel_item_states:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->setBackgroundResource(I)V

    .line 61
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/menu/navigation/c;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->f:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/navigation/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/navigation/c;->d()Z

    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :goto_0
    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/navigation/c;->e()I

    move-result v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :goto_1
    sget-object v0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView$1;->a:[I

    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/navigation/c;->c()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/menu/navigation/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/aa;->a(Landroid/widget/ImageView;)V

    .line 99
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/navigation/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->e:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 103
    :goto_2
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->g:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/user/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/aa;->a(Ljava/lang/String;)Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ak;->b()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/navigation/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/ak;->a(I)Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/navigation/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/ak;->b(I)Lcom/b/a/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/ak;->a(Landroid/widget/ImageView;)V

    .line 86
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->e:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto :goto_2

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/user/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/aa;->a(Ljava/lang/String;)Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ak;->b()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/navigation/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/ak;->a(I)Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/navigation/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/ak;->b(I)Lcom/b/a/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/ak;->a(Landroid/widget/ImageView;)V

    .line 90
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->e:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto/16 :goto_2

    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/aa;->a(Landroid/widget/ImageView;)V

    .line 93
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/navigation/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->e:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto/16 :goto_2

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setImage(I)V
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->f:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method
