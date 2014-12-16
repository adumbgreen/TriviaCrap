.class public Lcom/etermax/tools/widget/b/a;
.super Lcom/etermax/tools/widget/b/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/c;-><init>()V

    .line 18
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-static {p0, p1, p2, p3, p4}, Lcom/etermax/tools/widget/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 66
    const-string v1, "red_button"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/a;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    new-instance v0, Lcom/etermax/tools/widget/b/a;

    invoke-direct {v0}, Lcom/etermax/tools/widget/b/a;-><init>()V

    .line 59
    invoke-static {p0, p1, p2}, Lcom/etermax/tools/widget/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/b/a;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/etermax/tools/widget/b/a;

    invoke-direct {v0}, Lcom/etermax/tools/widget/b/a;-><init>()V

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/etermax/tools/widget/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/b/a;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/a;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Lcom/etermax/tools/widget/b/a;

    invoke-direct {v0}, Lcom/etermax/tools/widget/b/a;-><init>()V

    .line 31
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/etermax/tools/widget/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/b/a;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/etermax/tools/widget/b/a;

    invoke-direct {v0}, Lcom/etermax/tools/widget/b/a;-><init>()V

    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lcom/etermax/tools/widget/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/b/a;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/etermax/tools/widget/b/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 84
    const-string v1, "cancel_string"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-object v0
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p0, p1, p3}, Lcom/etermax/tools/widget/b/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 78
    const-string v1, "cancel_string"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object v0
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {p1, p2, p3, p4}, Lcom/etermax/tools/widget/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 72
    const-string v1, "title_string"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-object v0
.end method


# virtual methods
.method protected b()I
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "red_button"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/etermax/k;->etermaxtools_accept_cancel_dialog_red:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/etermax/k;->etermaxtools_accept_cancel_dialog:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/widget/b/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 94
    sget v0, Lcom/etermax/i;->cancel_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 95
    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/a;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cancel_string"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v2, Lcom/etermax/tools/widget/b/a$1;

    invoke-direct {v2, p0}, Lcom/etermax/tools/widget/b/a$1;-><init>(Lcom/etermax/tools/widget/b/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-object v1
.end method
