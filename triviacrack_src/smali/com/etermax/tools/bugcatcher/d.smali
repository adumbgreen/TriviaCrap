.class Lcom/etermax/tools/bugcatcher/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
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
    .line 244
    iput-object p1, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/tools/bugcatcher/c;Lcom/etermax/tools/bugcatcher/c$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/etermax/tools/bugcatcher/d;-><init>(Lcom/etermax/tools/bugcatcher/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 283
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 284
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 285
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 287
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 288
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 289
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->i(Lcom/etermax/tools/bugcatcher/c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/etermax/tools/bugcatcher/c;->a(Lcom/etermax/tools/bugcatcher/c;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->j(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->j(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->i(Lcom/etermax/tools/bugcatcher/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v1}, Lcom/etermax/tools/bugcatcher/c;->i(Lcom/etermax/tools/bugcatcher/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->c(Lcom/etermax/tools/bugcatcher/c;)Lcom/etermax/tools/bugcatcher/h;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v1}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->jira_project:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v2}, Lcom/etermax/tools/bugcatcher/c;->k(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v4}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/etermax/o;->jira_component_id:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    iget-object v6, v5, Lcom/etermax/tools/bugcatcher/c;->a:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v7, Lcom/etermax/i;->fix_version:I

    invoke-virtual {v5, v7}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/etermax/tools/bugcatcher/i;

    invoke-virtual {v5}, Lcom/etermax/tools/bugcatcher/i;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v6}, Lcom/etermax/tools/bugcatcher/c;->f(Lcom/etermax/tools/bugcatcher/c;)Ljava/util/List;

    move-result-object v7

    iget-object v6, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v8, Lcom/etermax/i;->affects_version:I

    invoke-virtual {v6, v8}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/etermax/tools/bugcatcher/i;

    invoke-virtual {v6}, Lcom/etermax/tools/bugcatcher/i;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v7}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/etermax/c;->jira_priorities_ids:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iget-object v8, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v8}, Lcom/etermax/tools/bugcatcher/c;->l(Lcom/etermax/tools/bugcatcher/c;)Landroid/widget/Spinner;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    aget v7, v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/etermax/tools/bugcatcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 272
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v1}, Lcom/etermax/tools/bugcatcher/c;->c(Lcom/etermax/tools/bugcatcher/c;)Lcom/etermax/tools/bugcatcher/h;

    move-result-object v1

    const-string v2, "screenshot.jpg"

    iget-object v3, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v3}, Lcom/etermax/tools/bugcatcher/c;->m(Lcom/etermax/tools/bugcatcher/c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/etermax/tools/bugcatcher/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/etermax/tools/bugcatcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 279
    :goto_1
    return-object v0

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->i(Lcom/etermax/tools/bugcatcher/c;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 293
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v1, Lcom/etermax/i;->loading:I

    invoke-virtual {v0, v1}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v0}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/o;->jira_issue_created:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-static {v0}, Lcom/etermax/tools/bugcatcher/c;->h(Lcom/etermax/tools/bugcatcher/c;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LAST_VERSION"

    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    iget-object v3, v0, Lcom/etermax/tools/bugcatcher/c;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v4, Lcom/etermax/i;->fix_version:I

    invoke-virtual {v0, v4}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/bugcatcher/i;

    invoke-virtual {v0}, Lcom/etermax/tools/bugcatcher/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v0}, Lcom/etermax/tools/bugcatcher/c;->dismiss()V

    .line 301
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    invoke-virtual {v0}, Lcom/etermax/tools/bugcatcher/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/o;->jira_issue_creation_failed:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 244
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/etermax/tools/bugcatcher/d;->a([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/etermax/tools/bugcatcher/d;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/d;->a:Lcom/etermax/tools/bugcatcher/c;

    sget v1, Lcom/etermax/i;->loading:I

    invoke-virtual {v0, v1}, Lcom/etermax/tools/bugcatcher/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    return-void
.end method
