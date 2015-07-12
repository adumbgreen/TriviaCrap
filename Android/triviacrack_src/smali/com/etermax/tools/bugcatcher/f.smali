.class Lcom/etermax/tools/bugcatcher/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/bugcatcher/c;


# direct methods
.method private constructor <init>(Lcom/etermax/tools/bugcatcher/c;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/tools/bugcatcher/c;Lcom/etermax/tools/bugcatcher/c$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/etermax/tools/bugcatcher/f;-><init>(Lcom/etermax/tools/bugcatcher/c;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->c(Lcom/etermax/tools/bugcatcher/c;)Lcom/etermax/tools/bugcatcher/h;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v1}, Lcom/etermax/tools/bugcatcher/c;->a(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v2}, Lcom/etermax/tools/bugcatcher/c;->b(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/bugcatcher/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 133
    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v2, Lcom/etermax/i;->loading:I

    invoke-virtual {v1, v2}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v1}, Lcom/etermax/tools/bugcatcher/c;->b(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v1}, Lcom/etermax/tools/bugcatcher/c;->d(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v2}, Lcom/etermax/tools/bugcatcher/c;->c(Lcom/etermax/tools/bugcatcher/c;)Lcom/etermax/tools/bugcatcher/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/tools/bugcatcher/h;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v1}, Lcom/etermax/tools/bugcatcher/c;->e(Lcom/etermax/tools/bugcatcher/c;)V

    .line 138
    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    iget-object v1, v1, Lcom/etermax/tools/bugcatcher/c;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Lcom/etermax/tools/bugcatcher/e;

    iget-object v2, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-direct {v1, v2, v0}, Lcom/etermax/tools/bugcatcher/e;-><init>(Lcom/etermax/tools/bugcatcher/c;Lcom/etermax/tools/bugcatcher/c$1;)V

    new-array v2, v3, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/etermax/tools/bugcatcher/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v0}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/o;->jira_error_login:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 113
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/etermax/tools/bugcatcher/f;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/etermax/tools/bugcatcher/f;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/f;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v1, Lcom/etermax/i;->loading:I

    invoke-virtual {v0, v1}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    return-void
.end method
