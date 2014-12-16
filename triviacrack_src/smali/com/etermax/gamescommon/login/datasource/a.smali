.class public Lcom/etermax/gamescommon/login/datasource/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lcom/etermax/gamescommon/login/accountmanager/a;

.field private c:Lcom/etermax/gamescommon/login/accountmanager/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JJ)J
    .locals 3
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 401
    .line 402
    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    cmp-long v2, p3, p1

    if-eqz v2, :cond_0

    .line 407
    :goto_0
    return-wide p3

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    move-wide p3, v0

    goto :goto_0
.end method

.method private a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 372
    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    .line 377
    :goto_0
    return-object p2

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    move-object p2, v0

    goto :goto_0
.end method

.method private a(Lcom/etermax/tools/nationality/Nationality;Lcom/etermax/tools/nationality/Nationality;)Lcom/etermax/tools/nationality/Nationality;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    .line 397
    :goto_0
    return-object p2

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    move-object p2, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    :goto_0
    return-object p2

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    move-object p2, v0

    goto :goto_0
.end method

.method private a(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    .line 387
    :goto_0
    return-object p2

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    move-object p2, v0

    goto :goto_0
.end method

.method private s()V
    .locals 15

    .prologue
    .line 416
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1}, Lcom/etermax/gamescommon/login/accountmanager/a;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v2}, Lcom/etermax/gamescommon/login/accountmanager/a;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v4}, Lcom/etermax/gamescommon/login/accountmanager/a;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v5}, Lcom/etermax/gamescommon/login/accountmanager/a;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v6}, Lcom/etermax/gamescommon/login/accountmanager/a;->g()Z

    move-result v6

    iget-object v7, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v7}, Lcom/etermax/gamescommon/login/accountmanager/a;->h()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v8}, Lcom/etermax/gamescommon/login/accountmanager/a;->i()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v9}, Lcom/etermax/gamescommon/login/accountmanager/a;->j()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v10}, Lcom/etermax/gamescommon/login/accountmanager/a;->k()Z

    move-result v10

    iget-object v11, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v11}, Lcom/etermax/gamescommon/login/accountmanager/a;->l()Z

    move-result v11

    iget-object v12, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v12}, Lcom/etermax/gamescommon/login/accountmanager/a;->m()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    move-result-object v12

    iget-object v13, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v13}, Lcom/etermax/gamescommon/login/accountmanager/a;->n()Ljava/util/Date;

    move-result-object v13

    iget-object v14, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v14}, Lcom/etermax/gamescommon/login/accountmanager/a;->o()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v14

    invoke-interface/range {v0 .. v14}, Lcom/etermax/gamescommon/login/accountmanager/a;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V

    .line 422
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/etermax/gamescommon/login/accountmanager/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/login/accountmanager/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    .line 32
    new-instance v0, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/login/accountmanager/shared/SharedAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    .line 33
    return-void
.end method

.method public a(Lcom/etermax/tools/nationality/Nationality;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->a(Lcom/etermax/tools/nationality/Nationality;)V

    .line 98
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    .line 99
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->a(Lcom/etermax/tools/nationality/Nationality;)V

    .line 100
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->b(Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    .line 61
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->b(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const-string v2, "CredentialsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nuserid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nemail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nusername: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nfacebookid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-interface/range {v2 .. v16}, Lcom/etermax/gamescommon/login/accountmanager/a;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V

    .line 41
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-interface/range {v2 .. v16}, Lcom/etermax/gamescommon/login/accountmanager/a;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V

    .line 43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v3}, Lcom/etermax/gamescommon/login/accountmanager/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/etermax/gamescommon/login/accountmanager/a;->f(Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->a(Z)V

    .line 86
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    .line 87
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->a(Z)V

    .line 88
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->a()V

    .line 49
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->a()V

    .line 50
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 16
    .parameter

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->g(Ljava/lang/String;)V

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    .line 67
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v2}, Lcom/etermax/gamescommon/login/accountmanager/a;->c()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v3}, Lcom/etermax/gamescommon/login/accountmanager/a;->d()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v5}, Lcom/etermax/gamescommon/login/accountmanager/a;->f()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v5}, Lcom/etermax/gamescommon/login/accountmanager/a;->g()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v5}, Lcom/etermax/gamescommon/login/accountmanager/a;->h()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v5}, Lcom/etermax/gamescommon/login/accountmanager/a;->i()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v5}, Lcom/etermax/gamescommon/login/accountmanager/a;->j()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v5}, Lcom/etermax/gamescommon/login/accountmanager/a;->k()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v5}, Lcom/etermax/gamescommon/login/accountmanager/a;->l()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v5}, Lcom/etermax/gamescommon/login/accountmanager/a;->m()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v5}, Lcom/etermax/gamescommon/login/accountmanager/a;->n()Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v5}, Lcom/etermax/gamescommon/login/accountmanager/a;->o()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v15

    move-object/from16 v5, p1

    invoke-interface/range {v1 .. v15}, Lcom/etermax/gamescommon/login/accountmanager/a;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V

    .line 70
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->b(Z)V

    .line 104
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    .line 105
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->b(Z)V

    .line 106
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->c(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    .line 75
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->c(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->c(Z)V

    .line 110
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    .line 111
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->c(Z)V

    .line 112
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-direct {p0, v1, v0}, Lcom/etermax/gamescommon/login/datasource/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->a(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 166
    goto :goto_0
.end method

.method public d(Z)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 141
    const/4 v2, 0x0

    .line 143
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-object v0

    .line 145
    :cond_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 146
    goto :goto_0

    .line 147
    :cond_1
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 148
    if-eqz p1, :cond_3

    .line 149
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 152
    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->d(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    .line 81
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->d(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public e()J
    .locals 6

    .prologue
    .line 172
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->d()J

    move-result-wide v0

    .line 173
    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v2}, Lcom/etermax/gamescommon/login/accountmanager/a;->d()J

    move-result-wide v2

    .line 175
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/etermax/gamescommon/login/datasource/a;->a(JJ)J

    move-result-wide v2

    .line 176
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 177
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    check-cast v0, Lcom/etermax/gamescommon/login/accountmanager/a/a;

    invoke-virtual {v0, v2, v3}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->a(J)V

    move-wide v0, v2

    .line 181
    :cond_0
    return-wide v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->e(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    .line 93
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->e(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1}, Lcom/etermax/gamescommon/login/accountmanager/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-direct {p0, v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    check-cast v0, Lcom/etermax/gamescommon/login/accountmanager/a/a;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->g(Ljava/lang/String;)V

    move-object v0, v1

    .line 194
    :cond_0
    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->f(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/accountmanager/a;->f(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->f()Ljava/lang/String;

    move-result-object v1

    .line 200
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-direct {p0, v1, v0}, Lcom/etermax/gamescommon/login/datasource/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->b(Ljava/lang/String;)V

    .line 208
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 206
    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->g()Z

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1}, Lcom/etermax/gamescommon/login/accountmanager/a;->g()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->a(Z)V

    .line 223
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    .line 224
    return v0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 229
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-direct {p0, v1, v0}, Lcom/etermax/gamescommon/login/datasource/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->e(Ljava/lang/String;)V

    .line 237
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 235
    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 242
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-direct {p0, v1, v0}, Lcom/etermax/gamescommon/login/datasource/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->c(Ljava/lang/String;)V

    .line 250
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 248
    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->j()Ljava/lang/String;

    move-result-object v1

    .line 265
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-direct {p0, v1, v0}, Lcom/etermax/gamescommon/login/datasource/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_1

    .line 269
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->c(Ljava/lang/String;)V

    .line 274
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 271
    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->k()Z

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1}, Lcom/etermax/gamescommon/login/accountmanager/a;->k()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->b(Z)V

    .line 294
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    .line 295
    return v0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->k()Z

    move-result v0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->l()Z

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1}, Lcom/etermax/gamescommon/login/accountmanager/a;->l()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->c(Z)V

    .line 310
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/a;->s()V

    .line 311
    return v0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->l()Z

    move-result v0

    goto :goto_0
.end method

.method public n()Lcom/etermax/tools/nationality/Nationality;
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->o()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1}, Lcom/etermax/gamescommon/login/accountmanager/a;->o()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v1

    .line 318
    invoke-direct {p0, v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->a(Lcom/etermax/tools/nationality/Nationality;Lcom/etermax/tools/nationality/Nationality;)Lcom/etermax/tools/nationality/Nationality;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    check-cast v0, Lcom/etermax/gamescommon/login/accountmanager/a/a;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->a(Lcom/etermax/tools/nationality/Nationality;)V

    move-object v0, v1

    .line 324
    :cond_0
    return-object v0
.end method

.method public o()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->m()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1}, Lcom/etermax/gamescommon/login/accountmanager/a;->m()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    move-result-object v1

    .line 332
    invoke-direct {p0, v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    check-cast v0, Lcom/etermax/gamescommon/login/accountmanager/a/a;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;)V

    move-object v0, v1

    .line 338
    :cond_0
    return-object v0
.end method

.method public p()Ljava/util/Date;
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/accountmanager/a;->n()Ljava/util/Date;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a;->c:Lcom/etermax/gamescommon/login/accountmanager/a;

    invoke-interface {v1}, Lcom/etermax/gamescommon/login/accountmanager/a;->n()Ljava/util/Date;

    move-result-object v1

    .line 346
    invoke-direct {p0, v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->a(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a;->b:Lcom/etermax/gamescommon/login/accountmanager/a;

    check-cast v0, Lcom/etermax/gamescommon/login/accountmanager/a/a;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/accountmanager/a/a;->a(Ljava/util/Date;)V

    move-object v0, v1

    .line 352
    :cond_0
    return-object v0
.end method

.method public q()Z
    .locals 4

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/a;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
