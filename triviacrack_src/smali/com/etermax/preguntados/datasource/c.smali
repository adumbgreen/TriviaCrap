.class public final Lcom/etermax/preguntados/datasource/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/datasource/b;


# instance fields
.field private a:Lorg/b/e/a/k;

.field private b:Ljava/lang/String;

.field private c:Lorg/a/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lorg/b/e/a/k;

    invoke-direct {v0}, Lorg/b/e/a/k;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    invoke-virtual {v0}, Lorg/b/e/a/k;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/b/c/b/j;

    invoke-direct {v1}, Lorg/b/c/b/j;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/products"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/gamescommon/shop/dto/ProductListDTO;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductListDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 217
    goto :goto_0

    .line 219
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/preguntados/datasource/dto/CodeDTO;)Lcom/etermax/preguntados/datasource/dto/CouponDTO;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 500
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 501
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 502
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/codes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const-class v4, Lcom/etermax/preguntados/datasource/dto/CouponDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/CouponDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return-object v0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 508
    const/4 v0, 0x0

    goto :goto_0

    .line 510
    :cond_0
    throw v0
.end method

.method public a(JI)Lcom/etermax/preguntados/datasource/dto/DashboardDTO;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 315
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 316
    const-string v0, "appConfigVersion"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/dashboard?app_config_version={appConfigVersion}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-object v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 323
    goto :goto_0

    .line 325
    :cond_0
    throw v0
.end method

.method public a(JJ)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 517
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 518
    const-string v0, "gameId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/games/{gameId}/wheel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-object v0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 525
    goto :goto_0

    .line 527
    :cond_0
    throw v0
.end method

.method public a(JJLcom/etermax/preguntados/datasource/dto/AnswerListDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 567
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p5}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 568
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 569
    const-string v0, "gameId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/games/{gameId}/answers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const-class v4, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    return-object v0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 576
    const/4 v0, 0x0

    goto :goto_0

    .line 578
    :cond_0
    throw v0
.end method

.method public a(JJLcom/etermax/preguntados/datasource/dto/GameActionDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 432
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p5}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 433
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 434
    const-string v0, "gameId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/games/{gameId}/actions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const-class v4, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-object v0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 441
    const/4 v0, 0x0

    goto :goto_0

    .line 443
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/preguntados/datasource/dto/GameRequestDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 483
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 484
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 485
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/games"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const-class v4, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    return-object v0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 491
    const/4 v0, 0x0

    goto :goto_0

    .line 493
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 297
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 298
    const-string v0, "sourceLanguage"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "targetLanguage"

    invoke-virtual {v5, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/translate-question?source_language={sourceLanguage}&target_language={targetLanguage}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-object v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 306
    goto :goto_0

    .line 308
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/gamescommon/language/Language;Lcom/etermax/preguntados/datasource/dto/enums/Country;)Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 128
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 129
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "language"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "country"

    invoke-virtual {v5, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/question-rating?lang={language}&country={country}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 137
    goto :goto_0

    .line 139
    :cond_0
    throw v0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 263
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 264
    const-string v0, "searchEmailString"

    invoke-virtual {v5, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "searchUsernameString"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/search?username={searchUsernameString}&email={searchEmailString}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-object v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 272
    goto :goto_0

    .line 274
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;)Ljava/util/Map;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 398
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 399
    const-string v0, "status"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v0, "origin"

    invoke-virtual {v5, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/user-factory-stats/questions?status={status}&origin={origin}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/b/a/b;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-object v0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 407
    goto :goto_0

    .line 409
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/util/Map;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;",
            "I",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 226
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 227
    const-string v0, "category"

    invoke-virtual {v5, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v0, "page"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v0, "status"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v0, "origin"

    invoke-virtual {v5, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/user-factory-stats/questions?status={status}&origin={origin}&page={page}&category={category}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/b/a/b;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-object v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 237
    goto :goto_0

    .line 239
    :cond_0
    throw v0
.end method

.method public a(J)V
    .locals 6
    .parameter

    .prologue
    .line 633
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 634
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/games"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->f:Lorg/b/c/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 641
    :cond_0
    throw v0
.end method

.method public a(JILcom/etermax/preguntados/datasource/dto/AnswerDTO;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 450
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p4}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 451
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 452
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v0, "showId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/shows/{showId}/live"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 460
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 617
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 618
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 619
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/user-factory-stats/questions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->e:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 626
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 534
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 535
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 536
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/question-rating"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 543
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/preguntados/datasource/dto/RegistrationDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 601
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 602
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 603
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/tv-registrations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 610
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 416
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 417
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 418
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/reported-questions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 425
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 585
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 586
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 587
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/suggested-questions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 591
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 594
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 467
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 468
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 469
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/translate-question"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 476
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public a(Lorg/b/e/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    .line 71
    return-void
.end method

.method public b(JJ)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 348
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 349
    const-string v0, "gameId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/games/{gameId}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 356
    goto :goto_0

    .line 358
    :cond_0
    throw v0
.end method

.method public b(JLcom/etermax/preguntados/datasource/dto/GameRequestDTO;)Lcom/etermax/preguntados/datasource/dto/RoomDTO;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 550
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 551
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 552
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/rooms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const-class v4, Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/RoomDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    return-object v0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 558
    const/4 v0, 0x0

    goto :goto_0

    .line 560
    :cond_0
    throw v0
.end method

.method public b(J)Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 96
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 97
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/opponents"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 103
    goto :goto_0

    .line 105
    :cond_0
    throw v0
.end method

.method public b(JI)Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 146
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 147
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "showId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/shows/{showId}/live"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 154
    goto :goto_0

    .line 156
    :cond_0
    throw v0
.end method

.method public c(JJ)Lcom/etermax/preguntados/datasource/dto/ProfileDTO;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 179
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 180
    const-string v0, "profileId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/profiles/{profileId}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 187
    goto :goto_0

    .line 189
    :cond_0
    throw v0
.end method

.method public c(J)Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 332
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 333
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/suggested-questions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-object v0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 339
    goto :goto_0

    .line 341
    :cond_0
    throw v0
.end method

.method public d(JJ)Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 365
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 366
    const-string v0, "profileId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/profiles/{profileId}/friends"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-object v0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 373
    goto :goto_0

    .line 375
    :cond_0
    throw v0
.end method

.method public d(J)Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 112
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 113
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/question-rating-config"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 119
    goto :goto_0

    .line 121
    :cond_0
    throw v0
.end method

.method public e(JJ)Lcom/etermax/preguntados/datasource/dto/RoomDTO;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 246
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 247
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v0, "roomId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/rooms/{roomId}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/RoomDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 254
    goto :goto_0

    .line 256
    :cond_0
    throw v0
.end method

.method public e(J)Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 163
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 164
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/translate-question-config"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 170
    goto :goto_0

    .line 172
    :cond_0
    throw v0
.end method

.method public f(J)Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 382
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 383
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/user-factory-stats"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-object v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 389
    goto :goto_0

    .line 391
    :cond_0
    throw v0
.end method

.method public g(J)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 196
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 197
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/new-levels"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/b/a/a;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 203
    goto :goto_0

    .line 205
    :cond_0
    throw v0
.end method

.method public h(J)Lcom/etermax/preguntados/datasource/dto/RankingsDTO;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 80
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/rankings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/RankingsDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/RankingsDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 87
    goto :goto_0

    .line 89
    :cond_0
    throw v0
.end method

.method public i(J)Lcom/etermax/preguntados/datasource/dto/UserRankDTO;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 281
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 282
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/c;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/rankings/last-week"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return-object v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/etermax/preguntados/datasource/c;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 288
    goto :goto_0

    .line 290
    :cond_0
    throw v0
.end method
