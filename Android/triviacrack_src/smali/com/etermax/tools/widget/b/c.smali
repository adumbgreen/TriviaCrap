.class public Lcom/etermax/tools/widget/b/c;
.super Lcom/etermax/tools/widget/b/e;
.source "SourceFile"


# instance fields
.field protected e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/e;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/widget/b/c;->e:Z

    .line 23
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/etermax/tools/widget/b/c;

    invoke-direct {v0}, Lcom/etermax/tools/widget/b/c;-><init>()V

    .line 36
    invoke-static {p0, p1, p2}, Lcom/etermax/tools/widget/b/c;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/b/c;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v0
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 56
    const-string v1, "info_string"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/etermax/tools/widget/b/c;

    invoke-direct {v0}, Lcom/etermax/tools/widget/b/c;-><init>()V

    .line 43
    invoke-static {p0, p1}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/b/c;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v0
.end method

.method protected static c(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v1, "msg"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "accept_string"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/etermax/tools/widget/b/c;

    invoke-direct {v0}, Lcom/etermax/tools/widget/b/c;-><init>()V

    .line 29
    invoke-static {p0, p1, p2, p3}, Lcom/etermax/tools/widget/b/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/b/c;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v0
.end method

.method protected static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p1, p2, p3}, Lcom/etermax/tools/widget/b/c;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 50
    const-string v1, "title_string"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/etermax/tools/widget/b/c;->e:Z

    .line 69
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lcom/etermax/k;->etermaxtools_accept_dialog:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/etermax/tools/widget/b/c;->e:Z

    return v0
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/etermax/tools/widget/b/e;->dismiss()V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/c;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 86
    sget v0, Lcom/etermax/i;->title_text_view:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "msg"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget v0, Lcom/etermax/i;->accept_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "accept_string"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    sget v1, Lcom/etermax/i;->main_title_text_view:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/c;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "title_string"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    if-eqz v1, :cond_0

    .line 95
    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :cond_0
    :goto_0
    new-instance v1, Lcom/etermax/tools/widget/b/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/tools/widget/b/c$1;-><init>(Lcom/etermax/tools/widget/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-object v2

    .line 100
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
