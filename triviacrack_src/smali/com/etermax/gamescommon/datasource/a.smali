.class public Lcom/etermax/gamescommon/datasource/a;
.super Lcom/etermax/gamescommon/d;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/notification/b;


# instance fields
.field protected c:Lcom/etermax/gamescommon/datasource/a/a;

.field protected d:Lcom/etermax/tools/a/a/j;

.field e:Lcom/etermax/gamescommon/notification/d;

.field private final f:I

.field private g:Lcom/etermax/gamescommon/f/a/b;

.field private h:Lcom/etermax/gamescommon/datasource/b;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/etermax/gamescommon/d;-><init>()V

    .line 35
    const/16 v0, 0x19

    iput v0, p0, Lcom/etermax/gamescommon/datasource/a;->f:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/datasource/a;->i:Z

    .line 352
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/datasource/a;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/gamescommon/datasource/a;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/gamescommon/datasource/a;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method


# virtual methods
.method public a(JIJ)Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/gamescommon/datasource/a;->a(JIJZ)Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;

    move-result-object v0

    return-object v0
.end method

.method public a(JIJZ)Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Lcom/etermax/gamescommon/datasource/a$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/etermax/gamescommon/datasource/a$1;-><init>(Lcom/etermax/gamescommon/datasource/a;JIJZ)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/datasource/a;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 140
    new-instance v0, Lcom/etermax/gamescommon/datasource/a$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/gamescommon/datasource/a$3;-><init>(Lcom/etermax/gamescommon/datasource/a;J)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/datasource/a;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    new-instance v0, Lcom/etermax/gamescommon/datasource/a$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/etermax/gamescommon/datasource/a$2;-><init>(Lcom/etermax/gamescommon/datasource/a;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/datasource/a;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;Ljava/lang/Long;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    invoke-virtual {p0, p1, p2, v0}, Lcom/etermax/gamescommon/datasource/a;->a(Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;Ljava/lang/Long;Lcom/etermax/gamescommon/f/a/b;)V

    .line 156
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;Ljava/lang/Long;Lcom/etermax/gamescommon/f/a/b;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 162
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getList()Ljava/util/List;

    move-result-object v1

    .line 165
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v5, 0x19

    if-le v0, v5, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x19

    .line 166
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 167
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 165
    goto :goto_0

    .line 170
    :cond_1
    const-class v0, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {p3, v0, p2}, Lcom/etermax/gamescommon/f/a/b;->b(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/f/b/a;

    .line 171
    if-nez v0, :cond_3

    .line 177
    new-instance v0, Lcom/etermax/gamescommon/f/b/a;

    invoke-direct {v0}, Lcom/etermax/gamescommon/f/b/a;-><init>()V

    .line 178
    invoke-virtual {v0, p2}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/lang/Long;)V

    .line 179
    invoke-virtual {v0, v4}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/util/List;)V

    .line 180
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a;->s:Landroid/content/Context;

    invoke-static {v1}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/util/Date;)V

    .line 181
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isFriend()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Z)V

    .line 182
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isBlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->b(Z)V

    .line 183
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isUserIsBlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->c(Z)V

    .line 184
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getLastSeen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getOpponentFacebookId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->b(Ljava/lang/Long;)V

    .line 187
    const-class v1, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {p3, v1, v0}, Lcom/etermax/gamescommon/f/a/b;->b(Ljava/lang/Class;Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 223
    :cond_2
    :goto_1
    return-void

    .line 194
    :cond_3
    invoke-virtual {v0}, Lcom/etermax/gamescommon/f/b/a;->a()Ljava/util/List;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 197
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;

    .line 198
    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getParsedDate()Ljava/util/Date;

    move-result-object v5

    .line 200
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;

    .line 201
    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getParsedDate()Ljava/util/Date;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v3

    .line 210
    :cond_4
    :goto_2
    if-eqz v2, :cond_2

    .line 211
    invoke-virtual {v0, v4}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/util/List;)V

    .line 212
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a;->s:Landroid/content/Context;

    invoke-static {v1}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/util/Date;)V

    .line 213
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isFriend()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Z)V

    .line 214
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isBlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->b(Z)V

    .line 215
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isUserIsBlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->c(Z)V

    .line 216
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getLastSeen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getOpponentFacebookId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->b(Ljava/lang/Long;)V

    .line 219
    const-class v1, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {p3, v1, v0}, Lcom/etermax/gamescommon/f/a/b;->b(Ljava/lang/Class;Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_1

    :cond_5
    move v2, v3

    .line 207
    goto :goto_2
.end method

.method public a(Ljava/lang/Long;Ljava/util/Date;Lcom/etermax/gamescommon/datasource/c;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/etermax/gamescommon/datasource/a;->i:Z

    if-eqz v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    if-eqz v0, :cond_0

    .line 410
    iget-object v7, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    monitor-enter v7

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    const-class v1, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {v0, v1, p1}, Lcom/etermax/gamescommon/f/a/b;->b(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/f/b/a;

    .line 412
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/etermax/gamescommon/f/b/a;->b()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    new-instance v0, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/gamescommon/datasource/a;->a(JIJZ)Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 421
    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/datasource/a;->a(Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;Ljava/lang/Long;)V

    .line 423
    if-eqz p3, :cond_3

    .line 424
    invoke-interface {p3}, Lcom/etermax/gamescommon/datasource/c;->a()V

    .line 427
    :cond_3
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public a(ZLjava/lang/Long;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    const-class v1, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {v0, v1, p2}, Lcom/etermax/gamescommon/f/a/b;->b(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/f/b/a;

    .line 325
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/f/b/a;->a(Z)V

    .line 327
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    const-class v2, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/f/a/b;->b(Ljava/lang/Class;Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 330
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Long;)Z
    .locals 2
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    const-class v1, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {v0, v1, p1}, Lcom/etermax/gamescommon/f/a/b;->a(Ljava/lang/Class;Ljava/lang/Long;)Z

    move-result v0

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_(Landroid/os/Bundle;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 433
    const-string v0, "data.TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NEW_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    :try_start_0
    const-string v0, "data.U"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 441
    iget-object v2, p0, Lcom/etermax/gamescommon/datasource/a;->h:Lcom/etermax/gamescommon/datasource/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/etermax/gamescommon/datasource/a;->h:Lcom/etermax/gamescommon/datasource/b;

    invoke-interface {v2, v0, v1}, Lcom/etermax/gamescommon/datasource/b;->a(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 442
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/gamescommon/datasource/a;->a(Ljava/lang/Long;Ljava/util/Date;Lcom/etermax/gamescommon/datasource/c;)V

    .line 445
    :cond_1
    :goto_0
    return v3

    .line 438
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;Ljava/lang/Long;Lcom/etermax/gamescommon/f/a/b;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 227
    iput-boolean v3, p0, Lcom/etermax/gamescommon/datasource/a;->i:Z

    .line 229
    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getList()Ljava/util/List;

    move-result-object v4

    .line 233
    const-class v0, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {p3, v0, p2}, Lcom/etermax/gamescommon/f/a/b;->b(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/f/b/a;

    .line 234
    if-nez v0, :cond_1

    .line 236
    new-instance v0, Lcom/etermax/gamescommon/f/b/a;

    invoke-direct {v0}, Lcom/etermax/gamescommon/f/b/a;-><init>()V

    .line 237
    invoke-virtual {v0, p2}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/lang/Long;)V

    .line 238
    invoke-virtual {v0, v4}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/util/List;)V

    .line 239
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a;->s:Landroid/content/Context;

    invoke-static {v1}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/util/Date;)V

    .line 240
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isFriend()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Z)V

    .line 241
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isBlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->b(Z)V

    .line 242
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isUserIsBlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->c(Z)V

    .line 243
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getLastSeen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getOpponentFacebookId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->b(Ljava/lang/Long;)V

    .line 246
    const-class v1, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {p3, v1, v0}, Lcom/etermax/gamescommon/f/a/b;->b(Ljava/lang/Class;Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {v0}, Lcom/etermax/gamescommon/f/b/a;->a()Ljava/util/List;

    move-result-object v5

    .line 254
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 257
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getParsedDate()Ljava/util/Date;

    move-result-object v6

    .line 260
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getParsedDate()Ljava/util/Date;

    move-result-object v7

    .line 263
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getParsedDate()Ljava/util/Date;

    move-result-object v8

    .line 266
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getParsedDate()Ljava/util/Date;

    move-result-object v1

    .line 268
    invoke-virtual {v6, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v1, v4

    .line 292
    :goto_1
    if-eqz v3, :cond_0

    .line 293
    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/util/List;)V

    .line 294
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a;->s:Landroid/content/Context;

    invoke-static {v1}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/util/Date;)V

    .line 295
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isFriend()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Z)V

    .line 296
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isBlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->b(Z)V

    .line 297
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->isUserIsBlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->c(Z)V

    .line 298
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getLastSeen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->a(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;->getOpponentFacebookId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/a;->b(Ljava/lang/Long;)V

    .line 301
    const-class v1, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {p3, v1, v0}, Lcom/etermax/gamescommon/f/a/b;->b(Ljava/lang/Class;Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto/16 :goto_0

    .line 272
    :cond_2
    invoke-virtual {v8, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v1, v5

    .line 276
    goto :goto_1

    .line 278
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;

    .line 280
    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->getParsedDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 281
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_3
    move v2, v1

    .line 282
    goto :goto_2

    :cond_4
    move v3, v2

    move-object v1, v5

    .line 285
    goto :goto_1

    :cond_5
    move-object v1, v4

    .line 289
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3
.end method

.method public b(ZLjava/lang/Long;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    const-class v1, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {v0, v1, p2}, Lcom/etermax/gamescommon/f/a/b;->b(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/f/b/a;

    .line 337
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/f/b/a;->b(Z)V

    .line 339
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    const-class v2, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/f/a/b;->b(Ljava/lang/Class;Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 342
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->c:Lcom/etermax/gamescommon/datasource/a/a;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/a;->F()Lorg/b/e/a/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/datasource/a/a;->a(Lorg/b/e/a/k;)V

    .line 56
    new-instance v0, Lcom/etermax/gamescommon/f/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/f/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->g:Lcom/etermax/gamescommon/f/a/b;

    .line 57
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->e:Lcom/etermax/gamescommon/notification/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/notification/d;->a(Lcom/etermax/gamescommon/notification/b;)V

    .line 58
    return-void
.end method

.method protected d()Lcom/etermax/tools/a/b/a;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/etermax/gamescommon/datasource/b/a;

    invoke-direct {v0}, Lcom/etermax/gamescommon/datasource/b/a;-><init>()V

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a;->c:Lcom/etermax/gamescommon/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a;->d:Lcom/etermax/tools/a/a/j;

    invoke-virtual {v1}, Lcom/etermax/tools/a/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/datasource/a/a;->a(Ljava/lang/String;)V

    .line 68
    return-void
.end method
