.class public Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;
.super Lcom/etermax/tools/widget/CustomFontEditText;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/gamescommon/language/Language;

.field private b:Lcom/etermax/preguntados/ui/questionsfactory/widget/b;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/CustomFontEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/tools/widget/CustomFontEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 42
    const-string v0, "?"

    .line 43
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->a:Lcom/etermax/gamescommon/language/Language;

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->ES:Lcom/etermax/gamescommon/language/Language;

    if-ne v1, v2, :cond_0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u00bf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->a:Lcom/etermax/gamescommon/language/Language;

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->ES:Lcom/etermax/gamescommon/language/Language;

    if-ne v1, v2, :cond_2

    .line 54
    const-string v1, "\u00bf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u00bf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    return-void

    .line 58
    :cond_2
    const-string v1, "\u00bf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 89
    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->getSelectionStart()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->a:Lcom/etermax/gamescommon/language/Language;

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->ES:Lcom/etermax/gamescommon/language/Language;

    if-ne v1, v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/widget/CustomFontEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->b:Lcom/etermax/preguntados/ui/questionsfactory/widget/b;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->b:Lcom/etermax/preguntados/ui/questionsfactory/widget/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/b;->a()V

    .line 102
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/widget/CustomFontEditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSelectionChanged(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->c:Z

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    add-int/lit8 v0, v0, -0x1

    .line 79
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setSelection(II)V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/widget/CustomFontEditText;->onSelectionChanged(II)V

    goto :goto_0
.end method

.method public setCursorLocked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->c:Z

    .line 68
    return-void
.end method

.method public setListener(Lcom/etermax/preguntados/ui/questionsfactory/widget/b;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->b:Lcom/etermax/preguntados/ui/questionsfactory/widget/b;

    .line 38
    return-void
.end method

.method public setQuestionLanguage(Lcom/etermax/gamescommon/language/Language;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->a:Lcom/etermax/gamescommon/language/Language;

    .line 34
    return-void
.end method
