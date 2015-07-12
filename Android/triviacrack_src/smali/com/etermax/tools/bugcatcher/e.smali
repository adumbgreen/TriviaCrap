.class Lcom/etermax/tools/bugcatcher/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/etermax/tools/bugcatcher/i;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/etermax/tools/bugcatcher/i;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/bugcatcher/c;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/etermax/tools/bugcatcher/c;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/tools/bugcatcher/c;Lcom/etermax/tools/bugcatcher/c$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/etermax/tools/bugcatcher/e;-><init>(Lcom/etermax/tools/bugcatcher/c;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/tools/bugcatcher/i;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->h(Lcom/etermax/tools/bugcatcher/c;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LAST_VERSION"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    const/4 v0, 0x0

    .line 234
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/bugcatcher/i;

    .line 235
    invoke-virtual {v0}, Lcom/etermax/tools/bugcatcher/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    return v1

    .line 238
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b(Ljava/util/List;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/bugcatcher/i;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v1}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v3}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 214
    const-string v3, "-SNAPSHOT"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/bugcatcher/i;

    .line 220
    invoke-virtual {v0}, Lcom/etermax/tools/bugcatcher/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 221
    if-nez v0, :cond_0

    .line 228
    :goto_1
    return v1

    .line 215
    :catch_0
    move-exception v0

    move v1, v2

    .line 216
    goto :goto_1

    .line 223
    :cond_0
    if-gez v0, :cond_1

    move v1, v2

    .line 224
    goto :goto_1

    .line 226
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 227
    goto :goto_0

    :cond_2
    move v1, v2

    .line 228
    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/bugcatcher/i;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v1}, Lcom/etermax/tools/bugcatcher/c;->c(Lcom/etermax/tools/bugcatcher/c;)Lcom/etermax/tools/bugcatcher/h;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v2}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/o;->jira_project:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/tools/bugcatcher/h;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/etermax/tools/bugcatcher/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/etermax/tools/bugcatcher/e;->b:Z

    .line 161
    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v1}, Lcom/etermax/tools/bugcatcher/c;->c(Lcom/etermax/tools/bugcatcher/c;)Lcom/etermax/tools/bugcatcher/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/tools/bugcatcher/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    :try_start_1
    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v1}, Lcom/etermax/tools/bugcatcher/c;->c(Lcom/etermax/tools/bugcatcher/c;)Lcom/etermax/tools/bugcatcher/h;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v2}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/o;->jira_project:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/tools/bugcatcher/h;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 164
    :catch_1
    move-exception v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 169
    :catch_2
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/bugcatcher/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 177
    if-eqz p1, :cond_4

    .line 178
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v1, Lcom/etermax/i;->loading:I

    invoke-virtual {v0, v1}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0, p1}, Lcom/etermax/tools/bugcatcher/c;->a(Lcom/etermax/tools/bugcatcher/c;Ljava/util/List;)Ljava/util/List;

    .line 180
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/etermax/tools/bugcatcher/c;->a:Ljava/util/ArrayList;

    .line 181
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->f(Lcom/etermax/tools/bugcatcher/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/bugcatcher/i;

    .line 182
    invoke-virtual {v0}, Lcom/etermax/tools/bugcatcher/i;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    iget-object v2, v2, Lcom/etermax/tools/bugcatcher/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->f(Lcom/etermax/tools/bugcatcher/c;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/etermax/tools/bugcatcher/i;

    const/4 v2, 0x0

    const-string v3, "None"

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/tools/bugcatcher/i;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    iget-object v0, v0, Lcom/etermax/tools/bugcatcher/c;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etermax/tools/bugcatcher/e;->a(Ljava/util/ArrayList;)I

    move-result v1

    .line 188
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v2, Lcom/etermax/i;->fix_version:I

    invoke-virtual {v0, v2}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v3}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/etermax/k;->spinner_item:I

    sget v5, Lcom/etermax/i;->textview:I

    iget-object v6, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    iget-object v6, v6, Lcom/etermax/tools/bugcatcher/c;->a:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 189
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v2, Lcom/etermax/i;->affects_version:I

    invoke-virtual {v0, v2}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v3}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/etermax/k;->spinner_item:I

    sget v5, Lcom/etermax/i;->textview:I

    iget-object v6, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v6}, Lcom/etermax/tools/bugcatcher/c;->f(Lcom/etermax/tools/bugcatcher/c;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 190
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    iget-object v0, v0, Lcom/etermax/tools/bugcatcher/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v2, Lcom/etermax/i;->fix_version:I

    invoke-virtual {v0, v2}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->f(Lcom/etermax/tools/bugcatcher/c;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/tools/bugcatcher/e;->b(Ljava/util/List;)I

    move-result v1

    .line 195
    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v2, Lcom/etermax/i;->affects_version:I

    invoke-virtual {v0, v2}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 208
    :cond_3
    :goto_1
    return-void

    .line 199
    :cond_4
    iget-boolean v0, p0, Lcom/etermax/tools/bugcatcher/e;->b:Z

    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v0}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/o;->jira_session_expired:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v1, Lcom/etermax/i;->loading:I

    invoke-virtual {v0, v1}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->g(Lcom/etermax/tools/bugcatcher/c;)V

    goto :goto_1

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v0}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/o;->jira_error_loading_versions:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v0}, Lcom/etermax/tools/bugcatcher/c;->dismiss()V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 147
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/etermax/tools/bugcatcher/e;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/etermax/tools/bugcatcher/e;->a(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/e;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v1, Lcom/etermax/i;->loading:I

    invoke-virtual {v0, v1}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void
.end method
