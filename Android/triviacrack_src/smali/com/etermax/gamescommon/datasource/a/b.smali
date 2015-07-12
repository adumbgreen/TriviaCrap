.class public final Lcom/etermax/gamescommon/datasource/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/datasource/a/a;


# instance fields
.field private a:Lorg/b/e/a/k;

.field private b:Ljava/lang/String;

.field private c:Lorg/a/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/b/e/a/k;

    invoke-direct {v0}, Lorg/b/e/a/k;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    invoke-virtual {v0}, Lorg/b/e/a/k;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/b/c/b/c;

    invoke-direct {v1}, Lorg/b/c/b/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    invoke-virtual {v0}, Lorg/b/e/a/k;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/b/c/b/j;

    invoke-direct {v1}, Lorg/b/c/b/j;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method


# virtual methods
.method public a(JI)Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 163
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 164
    const-string v0, "page"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/chatHeaders?page={page}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderListDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 171
    goto :goto_0

    .line 173
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/Long;Ljava/lang/Long;IJZ)Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 210
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 211
    const-string v0, "opponentId"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "lastSyncDateSeconds"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v0, "page"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v0, "skipReset"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/users/{opponentId}/chat?page={page}&last_sync={lastSyncDateSeconds}&skip_reset={skipReset}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/MessageListDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 221
    goto :goto_0

    .line 223
    :cond_0
    throw v0
.end method

.method public a(JLjava/lang/String;I)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 131
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 132
    const-string v0, "panelSection"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "page"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/messaging-panel?panel_section={panelSection}&page={page}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 140
    goto :goto_0

    .line 142
    :cond_0
    throw v0
.end method

.method public a(JLjava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 247
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 248
    const-string v0, "criteria"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/messaging-panel-search?criteria={criteria}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 255
    goto :goto_0

    .line 257
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/Long;)Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 194
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 195
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 201
    goto :goto_0

    .line 203
    :cond_0
    throw v0
.end method

.method public a(J)Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 115
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 116
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/blacklist"

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

    .line 122
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 122
    goto :goto_0

    .line 124
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/gamescommon/shop/dto/TransactionInfo;)Lcom/etermax/gamescommon/shop/dto/ConfirmationListDTO;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 331
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/post-purchase"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const-class v4, Lcom/etermax/gamescommon/shop/dto/ConfirmationListDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ConfirmationListDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-object v0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 339
    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :cond_0
    throw v0
.end method

.method public a()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

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

    .line 154
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 154
    goto :goto_0

    .line 156
    :cond_0
    throw v0
.end method

.method public a(JJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 610
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 611
    const-string v0, "favoriteId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/favorites/{favoriteId}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->f:Lorg/b/c/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 619
    :cond_0
    throw v0
.end method

.method public a(JLcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 514
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 515
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 516
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/favorites"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 523
    :cond_0
    throw v0
.end method

.method public a(JLorg/b/d/h;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 465
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Lorg/b/d/h;)V

    .line 466
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 467
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/profile-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 474
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/Long;JLcom/etermax/gamescommon/gifting/dto/GiftActionDTO;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 562
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p4}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 563
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 564
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v0, "giftId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/gifts/{giftId}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->e:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 572
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/Long;Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 433
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p2}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 434
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 435
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 442
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/Long;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 449
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p2}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 450
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 451
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/gifts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 458
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 626
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 627
    const-string v0, "opponentId"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/users/{opponentId}/chat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->f:Lorg/b/c/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 635
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/Long;Ljava/lang/Long;Lcom/etermax/gamescommon/datasource/dto/MessageDTO;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 400
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 401
    const-string v0, "opponentId"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/users/{opponentId}/chat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 409
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public a(Lorg/b/e/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    .line 57
    return-void
.end method

.method public a(JLcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;)[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;
    .locals 7
    .parameter
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

    .line 283
    const-string v0, "type"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/achievements?type={type}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, [Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-object v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 289
    goto :goto_0

    .line 291
    :cond_0
    throw v0
.end method

.method public b()Lcom/etermax/gamescommon/datasource/dto/AdsDTO;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/ads?type=android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/gamescommon/datasource/dto/AdsDTO;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/AdsDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 185
    goto :goto_0

    .line 187
    :cond_0
    throw v0
.end method

.method public b(J)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 99
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 100
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/messaging-panel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 106
    goto :goto_0

    .line 108
    :cond_0
    throw v0
.end method

.method public b(Ljava/lang/Long;)Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 66
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 67
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/gifts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 73
    goto :goto_0

    .line 75
    :cond_0
    throw v0
.end method

.method public b(JJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 579
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 580
    const-string v0, "favoriteId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/blacklist/{favoriteId}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->f:Lorg/b/c/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 588
    :cond_0
    throw v0
.end method

.method public b(JLcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 481
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 482
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 483
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/blacklist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 490
    :cond_0
    throw v0
.end method

.method public c(J)V
    .locals 6
    .parameter

    .prologue
    .line 595
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 596
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/profile-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->f:Lorg/b/c/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 603
    :cond_0
    throw v0
.end method

.method public c(JLcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 348
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p3}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 349
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 350
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/invites"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 357
    :cond_0
    throw v0
.end method
