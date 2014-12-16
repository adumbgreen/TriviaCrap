.class public Lcom/etermax/gamescommon/login/datasource/c;
.super Lcom/etermax/tools/a/a/a;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/gamescommon/login/datasource/a/c;

.field protected b:Lcom/etermax/gamescommon/login/datasource/a/e;

.field protected c:Lcom/etermax/gamescommon/login/datasource/a/a;

.field protected d:Lcom/etermax/gamescommon/login/datasource/a;

.field protected e:Lcom/etermax/tools/social/a/b;

.field protected f:Lcom/etermax/tools/a/a/j;

.field protected g:Lcom/etermax/gamescommon/e;

.field protected h:Lcom/etermax/gamescommon/datasource/l;

.field protected i:Lcom/etermax/gamescommon/notification/c;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/etermax/tools/a/a/a;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/datasource/c;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->s:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/datasource/c;Lorg/b/c/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lorg/b/c/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/b/c/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)V
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 156
    if-eqz p1, :cond_0

    const-string v1, "Set-Cookie"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/b/c/c;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string v1, "Set-Cookie"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/b/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 159
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 161
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual/range {p2 .. p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getHas_pass()Z

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getPhotoUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFb_show_name()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFb_show_picture()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getGender()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getBirthdate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getNationality()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v15

    invoke-virtual/range {v1 .. v15}, Lcom/etermax/gamescommon/login/datasource/a;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V

    .line 163
    if-eqz p3, :cond_1

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/login/datasource/a;->f(Ljava/lang/String;)V

    .line 166
    :cond_1
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 170
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/a/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 174
    :goto_0
    if-eqz v1, :cond_1

    .line 177
    :goto_1
    return-object v0

    .line 172
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/login/datasource/a;->d(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private i()V
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/c;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/etermax/tools/a/c/c;

    invoke-direct {v0}, Lcom/etermax/tools/a/c/c;-><init>()V

    throw v0

    .line 236
    :cond_0
    return-void
.end method

.method private j()Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->t:Lcom/etermax/tools/j/a;

    invoke-virtual {v0}, Lcom/etermax/tools/j/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 501
    iget-boolean v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->l:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    const-string v0, "AMAZON"

    .line 505
    :cond_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->h()Ljava/lang/String;

    move-result-object v2

    .line 506
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/etermax/gamescommon/login/datasource/a;->d(Z)Ljava/lang/String;

    move-result-object v1

    .line 508
    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 509
    const/4 v1, 0x0

    .line 512
    :cond_1
    new-instance v3, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    invoke-direct {v3, v0, v2, v1}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->i:Lcom/etermax/gamescommon/notification/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->s:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/notification/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 516
    invoke-virtual {v3, v0}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->setNotification_id(Ljava/lang/String;)V

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->s:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/j/b;

    invoke-interface {v0}, Lcom/etermax/tools/j/b;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    const-string v0, "PRO"

    invoke-virtual {v3, v0}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->setAccount_type(Ljava/lang/String;)V

    .line 522
    :cond_3
    return-object v3
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 4
    .parameter

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->i()V

    .line 203
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->j()Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    move-result-object v1

    .line 204
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;-><init>()V

    .line 205
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setUser_device(Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V

    .line 207
    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c;->a:Lcom/etermax/gamescommon/login/datasource/a/c;

    invoke-interface {v2, v0}, Lcom/etermax/gamescommon/login/datasource/a/c;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)Lorg/b/c/l;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lorg/b/c/l;->a()Lorg/b/c/c;

    move-result-object v3

    invoke-virtual {v2}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->getInstallation_id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lorg/b/c/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->i()V

    .line 224
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->j()Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    move-result-object v1

    .line 225
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-direct {v0, p1, p2, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V

    .line 226
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setValidate_domain(Z)V

    .line 227
    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c;->a:Lcom/etermax/gamescommon/login/datasource/a/c;

    invoke-interface {v2, v0}, Lcom/etermax/gamescommon/login/datasource/a/c;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)Lorg/b/c/l;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lorg/b/c/l;->a()Lorg/b/c/c;

    move-result-object v3

    invoke-virtual {v2}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->getInstallation_id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lorg/b/c/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 270
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->j()Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    move-result-object v6

    .line 259
    new-instance v4, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-direct {v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;-><init>()V

    .line 260
    invoke-virtual {v4, v6}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setUser_device(Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V

    .line 262
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->a:Lcom/etermax/gamescommon/login/datasource/a/c;

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/login/datasource/a/c;->a(Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;)Lorg/b/c/l;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Lorg/b/c/l;->a()Lorg/b/c/c;

    move-result-object v2

    invoke-virtual {v1}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v6}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->getInstallation_id()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lorg/b/c/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->j()Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    move-result-object v1

    .line 275
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;-><init>()V

    .line 276
    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setUser_device(Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V

    .line 277
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setLanguage(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, p4}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setEmail(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, p5}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setPassword(Ljava/lang/String;)V

    .line 281
    new-instance v2, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)V

    .line 283
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->a:Lcom/etermax/gamescommon/login/datasource/a/c;

    invoke-interface {v0, v2}, Lcom/etermax/gamescommon/login/datasource/a/c;->b(Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;)Lorg/b/c/l;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lorg/b/c/l;->a()Lorg/b/c/c;

    move-result-object v3

    invoke-virtual {v2}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->getInstallation_id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lorg/b/c/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    new-instance v4, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-direct {v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;-><init>()V

    .line 315
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->j()Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    move-result-object v6

    .line 316
    invoke-virtual {v4, v6}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setUser_device(Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V

    .line 318
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;Ljava/lang/String;)V

    .line 319
    new-instance v1, Lcom/etermax/gamescommon/login/datasource/c$3;

    invoke-direct {v1, p0, p5, v0}, Lcom/etermax/gamescommon/login/datasource/c$3;-><init>(Lcom/etermax/gamescommon/login/datasource/c;ZLcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;)V

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 329
    const/4 v1, 0x0

    invoke-virtual {v6}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->getInstallation_id()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lorg/b/c/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)V

    .line 330
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Host:",
            "Landroid/content/Context;",
            ">(THost;)V"
        }
    .end annotation

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/etermax/tools/g/a;->a(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->j:Ljava/lang/String;

    .line 478
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->e:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v1}, Lcom/etermax/tools/social/a/b;->d()V

    .line 479
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->g:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->t:Lcom/etermax/gamescommon/g;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;J)V

    .line 480
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->g:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->u:Lcom/etermax/gamescommon/g;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/c;->f()V

    .line 482
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->h:Lcom/etermax/gamescommon/datasource/l;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/l;->b()V

    .line 485
    new-instance v1, Lcom/etermax/gamescommon/f/a/b;

    invoke-direct {v1, p1}, Lcom/etermax/gamescommon/f/a/b;-><init>(Landroid/content/Context;)V

    .line 486
    const-class v2, Lcom/etermax/gamescommon/f/b/a;

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/f/a/b;->a(Ljava/lang/Class;)Z

    .line 488
    new-instance v1, Lcom/etermax/gamescommon/login/datasource/c$7;

    invoke-direct {v1, p0, v0}, Lcom/etermax/gamescommon/login/datasource/c$7;-><init>(Lcom/etermax/gamescommon/login/datasource/c;Ljava/lang/Long;)V

    invoke-virtual {v1, p1}, Lcom/etermax/gamescommon/login/datasource/c$7;->a(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->i:Lcom/etermax/gamescommon/notification/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->s:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/notification/c;->a(Landroid/content/Context;Z)V

    .line 497
    return-void
.end method

.method public a(Lcom/etermax/tools/nationality/Nationality;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V

    .line 388
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Host:",
            "Landroid/content/Context;",
            ">(",
            "Ljava/lang/String;",
            "THost;)V"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/c$2;

    invoke-direct {v0, p0, p1}, Lcom/etermax/gamescommon/login/datasource/c$2;-><init>(Lcom/etermax/gamescommon/login/datasource/c;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 310
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V

    .line 380
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    new-instance v2, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-direct {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;-><init>()V

    .line 392
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->j()Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    move-result-object v0

    .line 393
    invoke-virtual {v2, v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setUser_device(Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V

    .line 395
    invoke-virtual {v2, p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 397
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 398
    invoke-virtual {v2, p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setNew_password(Ljava/lang/String;)V

    .line 401
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 402
    invoke-virtual {v2, p3}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setEmail(Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setGuest(Z)V

    .line 406
    :cond_1
    invoke-virtual {v2, p4}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setGender(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;)V

    .line 407
    invoke-virtual {v2, p5}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setBirthdate(Ljava/util/Date;)V

    .line 408
    invoke-virtual {v2, p6}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setNationality(Lcom/etermax/tools/nationality/Nationality;)V

    .line 410
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/c$5;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/login/datasource/c$5;-><init>(Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 431
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 105
    :goto_0
    if-eqz v2, :cond_1

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    monitor-exit p0

    .line 126
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 103
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 113
    :cond_1
    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 117
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->b(Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 124
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    monitor-exit p0

    goto :goto_1

    .line 127
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 119
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 120
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 124
    :catchall_2
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 4
    .parameter

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->i()V

    .line 214
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->j()Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    move-result-object v1

    .line 215
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-direct {v0, p1, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V

    .line 216
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setValidate_domain(Z)V

    .line 217
    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c;->a:Lcom/etermax/gamescommon/login/datasource/a/c;

    invoke-interface {v2, v0}, Lcom/etermax/gamescommon/login/datasource/a/c;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)Lorg/b/c/l;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Lorg/b/c/l;->a()Lorg/b/c/c;

    move-result-object v3

    invoke-virtual {v2}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->getInstallation_id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lorg/b/c/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;

    invoke-direct {v0, p1, p2, p3}, Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v1, Lcom/etermax/gamescommon/login/datasource/c$1;

    invoke-direct {v1, p0, v0}, Lcom/etermax/gamescommon/login/datasource/c$1;-><init>(Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;)V

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->j:Ljava/lang/String;

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->j:Ljava/lang/String;

    .line 147
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 375
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V

    .line 376
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 4
    .parameter

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->j()Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    move-result-object v1

    .line 240
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-direct {v0, p1, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V

    .line 241
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setAutogenerate_username(Z)V

    .line 242
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setLanguage(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c;->a:Lcom/etermax/gamescommon/login/datasource/a/c;

    invoke-interface {v2, v0}, Lcom/etermax/gamescommon/login/datasource/a/c;->b(Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)Lorg/b/c/l;

    move-result-object v2

    .line 244
    invoke-virtual {v2}, Lorg/b/c/l;->a()Lorg/b/c/c;

    move-result-object v3

    invoke-virtual {v2}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->getInstallation_id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lorg/b/c/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->a:Lcom/etermax/gamescommon/login/datasource/a/c;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/c;->F()Lorg/b/e/a/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a/c;->a(Lorg/b/e/a/k;)V

    .line 78
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->b:Lcom/etermax/gamescommon/login/datasource/a/e;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/c;->F()Lorg/b/e/a/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a/e;->a(Lorg/b/e/a/k;)V

    .line 79
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->c:Lcom/etermax/gamescommon/login/datasource/a/a;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/c;->F()Lorg/b/e/a/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a/a;->a(Lorg/b/e/a/k;)V

    .line 82
    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->l:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    iget-boolean v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->l:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/etermax/gamescommon/notification/adm/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/notification/adm/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->i:Lcom/etermax/gamescommon/notification/c;

    .line 93
    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/etermax/gamescommon/notification/gcm/a;

    invoke-direct {v0}, Lcom/etermax/gamescommon/notification/gcm/a;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->i:Lcom/etermax/gamescommon/notification/c;

    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 434
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;-><init>()V

    .line 436
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setEmail(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;->setPassword(Ljava/lang/String;)V

    .line 439
    new-instance v1, Lcom/etermax/gamescommon/login/datasource/c$6;

    invoke-direct {v1, p0, v0}, Lcom/etermax/gamescommon/login/datasource/c$6;-><init>(Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)V

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;

    .line 448
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 451
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->b:Lcom/etermax/gamescommon/login/datasource/a/e;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/login/datasource/a/e;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 453
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 454
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setEmail(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, v3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setHas_pass(Z)V

    .line 456
    invoke-direct {p0, v4, v0, v4}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lorg/b/c/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)V

    .line 457
    invoke-static {p2}, Lcom/etermax/tools/g/a;->a(Ljava/lang/String;)V

    .line 458
    return-object v0

    .line 460
    :cond_0
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/b/b;

    const/16 v1, 0x12f

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/login/datasource/b/b;-><init>(I)V

    throw v0
.end method

.method protected d()Lcom/etermax/tools/a/b/a;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/b/a;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/datasource/b/a;-><init>()V

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;->j()Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    move-result-object v0

    .line 340
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->setNotification_id(Ljava/lang/String;)V

    .line 344
    new-instance v1, Lcom/etermax/gamescommon/login/datasource/c$4;

    invoke-direct {v1, p0, v0}, Lcom/etermax/gamescommon/login/datasource/c$4;-><init>(Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/login/datasource/c$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 368
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->a:Lcom/etermax/gamescommon/login/datasource/a/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->f:Lcom/etermax/tools/a/a/j;

    invoke-virtual {v1}, Lcom/etermax/tools/a/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a/c;->a(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->b:Lcom/etermax/gamescommon/login/datasource/a/e;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->f:Lcom/etermax/tools/a/a/j;

    invoke-virtual {v1}, Lcom/etermax/tools/a/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a/e;->b(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->c:Lcom/etermax/gamescommon/login/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->f:Lcom/etermax/tools/a/a/j;

    invoke-virtual {v1}, Lcom/etermax/tools/a/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a/a;->a(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/login/datasource/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public f(Ljava/lang/String;)Ljava/lang/Void;
    .locals 2
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->b:Lcom/etermax/gamescommon/login/datasource/a/e;

    new-instance v1, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-direct {v1, p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a/e;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)V

    .line 465
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->b()V

    .line 152
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c;->i:Lcom/etermax/gamescommon/notification/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c;->s:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/etermax/gamescommon/notification/c;->a(Landroid/content/Context;Lcom/etermax/gamescommon/login/datasource/c;)V

    .line 184
    return-void
.end method
