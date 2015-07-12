.class public Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/tools/widget/ProfileProgressBar;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/ProfileProgressBar;->setWins(I)V

    .line 45
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    invoke-virtual {v0, p2}, Lcom/etermax/tools/widget/ProfileProgressBar;->setLoses(I)V

    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/ProfileProgressBar;->b()V

    .line 47
    return-void
.end method

.method public a(IIZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->a(II)V

    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->c:Landroid/widget/TextView;

    add-int v1, p2, p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public setSectionBackground(I)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 60
    return-void
.end method

.method public setSectionText(I)V
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
