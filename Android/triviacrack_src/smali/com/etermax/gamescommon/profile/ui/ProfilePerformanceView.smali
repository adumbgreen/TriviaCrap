.class public Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/tools/widget/CustomFontTextView;

.field protected b:Lcom/etermax/tools/widget/CustomFontTextView;

.field protected c:Lcom/etermax/tools/widget/CustomFontTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->a:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->b:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->c:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 42
    return-void
.end method

.method public setLooses(J)V
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->b:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->b:Lcom/etermax/tools/widget/CustomFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 52
    return-void
.end method

.method public setResigned(I)V
    .locals 3
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->c:Lcom/etermax/tools/widget/CustomFontTextView;

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

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->c:Lcom/etermax/tools/widget/CustomFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 57
    return-void
.end method

.method public setWon(J)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->a:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->a:Lcom/etermax/tools/widget/CustomFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 47
    return-void
.end method
