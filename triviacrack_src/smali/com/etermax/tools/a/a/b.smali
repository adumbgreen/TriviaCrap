.class Lcom/etermax/tools/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/c/a/h;


# instance fields
.field final synthetic a:Lcom/etermax/tools/a/a/a;


# direct methods
.method private constructor <init>(Lcom/etermax/tools/a/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/tools/a/a/a;Lcom/etermax/tools/a/a/a$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/etermax/tools/a/a/b;-><init>(Lcom/etermax/tools/a/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/c/h;[BLorg/b/c/a/f;)Lorg/b/c/a/i;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-interface {p1}, Lorg/b/c/h;->d()Lorg/b/c/c;

    move-result-object v2

    .line 95
    iget-object v0, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    invoke-virtual {v0}, Lcom/etermax/tools/a/a/a;->G()Ljava/util/Map;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/b/c/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    sget-object v0, Lorg/b/c/a;->c:Lorg/b/c/a;

    invoke-virtual {v2, v0}, Lorg/b/c/c;->a(Lorg/b/c/a;)V

    .line 101
    const-string v0, "APIDataSource"

    invoke-interface {p1}, Lorg/b/c/h;->c()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :try_start_0
    const-string v0, "User-Agent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/SDK-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") Package:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v3, v3, Lcom/etermax/tools/a/a/a;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/Version:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v3, v3, Lcom/etermax/tools/a/a/a;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v4, v4, Lcom/etermax/tools/a/a/a;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/b/c/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    new-instance v1, Lcom/etermax/tools/a/a/d;

    invoke-direct {v1}, Lcom/etermax/tools/a/a/d;-><init>()V

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v0, v0, Lcom/etermax/tools/a/a/a;->s:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/b;

    invoke-interface {v0}, Lcom/etermax/tools/b;->u()Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v3, "market_amazon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    sget-object v0, Lcom/etermax/tools/a/a/e;->d:Lcom/etermax/tools/a/a/e;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->a(Lcom/etermax/tools/a/a/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->a(Ljava/lang/String;)V

    .line 132
    :try_start_2
    iget-object v0, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v0, v0, Lcom/etermax/tools/a/a/a;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/a/b;->f(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->b(Ljava/lang/String;)V

    .line 140
    :try_start_3
    iget-object v0, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v0, v0, Lcom/etermax/tools/a/a/a;->t:Lcom/etermax/tools/j/a;

    invoke-virtual {v0}, Lcom/etermax/tools/j/a;->c()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->b(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 146
    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v0, v0, Lcom/etermax/tools/a/a/a;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v3, v3, Lcom/etermax/tools/a/a/a;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 151
    :goto_5
    iget-object v0, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v0, v0, Lcom/etermax/tools/a/a/a;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/etermax/o;->lang_iso:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->d(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->e(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->f(Ljava/lang/String;)V

    .line 158
    :try_start_5
    iget-object v0, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v0, v0, Lcom/etermax/tools/a/a/a;->s:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 161
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 164
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 166
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_5

    .line 168
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->c(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 179
    :cond_2
    :goto_6
    const-string v0, "Eter-Agent"

    invoke-virtual {v1}, Lcom/etermax/tools/a/a/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/b/c/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "APIDataSource"

    invoke-virtual {v1}, Lcom/etermax/tools/a/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 184
    new-instance v3, Lcom/etermax/tools/a/a/h;

    invoke-interface {p3, p1, p2}, Lorg/b/c/a/f;->a(Lorg/b/c/h;[B)Lorg/b/c/a/i;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/etermax/tools/a/a/h;-><init>(Lorg/b/c/a/i;)V

    .line 185
    iget-object v0, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v0, v0, Lcom/etermax/tools/a/a/a;->u:Lcom/etermax/tools/a/a/g;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/etermax/tools/a/a/g;->a(Lorg/b/c/h;[BLorg/b/c/a/i;J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 186
    return-object v3

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v0, "APIDataSource"

    const-string v1, "package could not be found"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "User-Agent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/SDK-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") Package:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v3, v3, Lcom/etermax/tools/a/a/a;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/Version:NOT_FOUND"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/b/c/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 120
    :cond_3
    :try_start_7
    const-string v3, "market_samsung"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    sget-object v0, Lcom/etermax/tools/a/a/e;->c:Lcom/etermax/tools/a/a/e;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->a(Lcom/etermax/tools/a/a/e;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 125
    :catch_1
    move-exception v0

    .line 126
    const-string v3, "APIDataSource"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 123
    :cond_4
    :try_start_8
    sget-object v0, Lcom/etermax/tools/a/a/e;->a:Lcom/etermax/tools/a/a/e;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->a(Lcom/etermax/tools/a/a/e;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 133
    :catch_2
    move-exception v0

    .line 134
    const-string v3, "APIDataSource"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 141
    :catch_3
    move-exception v0

    .line 142
    const-string v3, "APIDataSource"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 147
    :catch_4
    move-exception v0

    .line 148
    const-string v0, "APIDataSource"

    const-string v3, "package could not be found"

    invoke-static {v0, v3}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 169
    :cond_5
    :try_start_9
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_6

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_2

    .line 171
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/d;->c(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_6

    .line 174
    :catch_5
    move-exception v0

    .line 175
    const-string v0, "APIDataSource"

    const-string v3, "network type not detected"

    invoke-static {v0, v3}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 188
    :catch_6
    move-exception v0

    .line 189
    iget-object v1, p0, Lcom/etermax/tools/a/a/b;->a:Lcom/etermax/tools/a/a/a;

    iget-object v1, v1, Lcom/etermax/tools/a/a/a;->u:Lcom/etermax/tools/a/a/g;

    invoke-virtual {v1, p1, p2, v0}, Lcom/etermax/tools/a/a/g;->a(Lorg/b/c/h;[BLjava/io/IOException;)V

    .line 190
    throw v0
.end method
