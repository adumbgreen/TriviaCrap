.class public Lcom/etermax/tools/widget/UsernameCustomFontTextView;
.super Lcom/etermax/tools/widget/CustomFontTextView;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/CustomFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/tools/widget/CustomFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/etermax/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->a:Z

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/etermax/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->a:Z

    .line 21
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/etermax/tools/widget/CustomFontTextView;->onSizeChanged(IIII)V

    .line 22
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iput-object p1, p0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->b:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :goto_0
    invoke-direct {p0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->a()V

    .line 44
    return-void

    .line 41
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setUsernameWithArroba(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->b:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    invoke-direct {p0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->a()V

    .line 54
    return-void

    .line 51
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
