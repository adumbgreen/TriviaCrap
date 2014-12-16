.class public Lcom/etermax/gamescommon/profile/ui/ProfileLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/gamescommon/profile/ui/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 26
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileLinearLayout;->getHeight()I

    move-result v1

    .line 28
    if-le v1, v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileLinearLayout;->a:Lcom/etermax/gamescommon/profile/ui/i;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileLinearLayout;->a:Lcom/etermax/gamescommon/profile/ui/i;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/profile/ui/i;->a(Z)V

    .line 40
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 41
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileLinearLayout;->a:Lcom/etermax/gamescommon/profile/ui/i;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileLinearLayout;->a:Lcom/etermax/gamescommon/profile/ui/i;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/profile/ui/i;->a(Z)V

    goto :goto_0
.end method

.method public setKeyboardListener(Lcom/etermax/gamescommon/profile/ui/i;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileLinearLayout;->a:Lcom/etermax/gamescommon/profile/ui/i;

    .line 45
    return-void
.end method
