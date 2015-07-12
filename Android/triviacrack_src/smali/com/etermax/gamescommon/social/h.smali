.class public Lcom/etermax/gamescommon/social/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/tools/social/a/b;

.field b:Lcom/etermax/gamescommon/datasource/e;

.field c:Lcom/etermax/tools/f/a;

.field d:Lcom/etermax/gamescommon/social/a;

.field e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h;->e:Landroid/content/Context;

    const-string v1, "usersTimeouts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    :goto_0
    return-object v0

    .line 180
    :cond_0
    new-instance v1, Lcom/etermax/gamescommon/social/h$3;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/social/h$3;-><init>(Lcom/etermax/gamescommon/social/h;)V

    invoke-virtual {v1}, Lcom/etermax/gamescommon/social/h$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 183
    invoke-static {}, Lcom/etermax/tools/j/a;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 410
    new-instance v0, Lcom/etermax/gamescommon/b/ar;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/ar;-><init>()V

    .line 411
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/ar;->a(I)V

    .line 412
    iget-object v1, p0, Lcom/etermax/gamescommon/social/h;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 413
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/social/h;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/social/h;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/social/h;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;ILcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/etermax/gamescommon/social/h;->b(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;ILcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V

    return-void
.end method

.method private a(Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;I)[Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 155
    sget-object v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->SEND:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    if-ne p1, v0, :cond_1

    .line 156
    const-string v0, "senders"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/social/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 160
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 162
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v6, p2

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    :cond_1
    const-string v0, "receivers"

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/social/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 416
    new-instance v0, Lcom/etermax/gamescommon/b/aq;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/aq;-><init>()V

    .line 417
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/aq;->a(I)V

    .line 418
    iget-object v1, p0, Lcom/etermax/gamescommon/social/h;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 419
    return-void
.end method

.method private b(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;ILcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v6, p0, Lcom/etermax/gamescommon/social/h;->a:Lcom/etermax/tools/social/a/b;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {p0, p3, p4}, Lcom/etermax/gamescommon/social/h;->a(Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;I)[Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/etermax/gamescommon/social/h$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/social/h$2;-><init>(Lcom/etermax/gamescommon/social/h;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V

    invoke-virtual {v6, v7, p2, v8, v0}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Lcom/etermax/tools/social/a/e;)V

    .line 151
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/social/h;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/social/h;->b(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/Long;Lcom/etermax/gamescommon/social/i;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    new-instance v0, Lcom/etermax/gamescommon/social/h$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/etermax/gamescommon/social/h$4;-><init>(Lcom/etermax/gamescommon/social/h;Ljava/lang/Long;Lcom/etermax/gamescommon/social/i;)V

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/social/h$4;->a(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;ILcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->ASK:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    if-ne p3, v0, :cond_0

    const-string v0, "ask_gift"

    move-object v8, v0

    .line 72
    :goto_0
    iget-object v9, p0, Lcom/etermax/gamescommon/social/h;->d:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    new-instance v0, Lcom/etermax/gamescommon/social/h$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/etermax/gamescommon/social/h$1;-><init>(Lcom/etermax/gamescommon/social/h;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;ILcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V

    invoke-virtual {v9, v10, v8, v0}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/etermax/gamescommon/social/d;)V

    .line 78
    return-void

    .line 71
    :cond_0
    const-string v0, "send_gift"

    move-object v8, v0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/Long;[Ljava/lang/String;Lcom/etermax/gamescommon/social/i;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h;->a:Lcom/etermax/tools/social/a/b;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/etermax/gamescommon/social/h$5;

    invoke-direct {v2, p0, p1, p3, p5}, Lcom/etermax/gamescommon/social/h$5;-><init>(Lcom/etermax/gamescommon/social/h;Landroid/support/v4/app/Fragment;Ljava/lang/Long;Lcom/etermax/gamescommon/social/i;)V

    invoke-virtual {v0, v1, p2, p4, v2}, Lcom/etermax/tools/social/a/b;->b(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Lcom/etermax/tools/social/a/e;)V

    .line 303
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;[Ljava/lang/String;Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h;->a:Lcom/etermax/tools/social/a/b;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/etermax/gamescommon/social/h$6;

    invoke-direct {v2, p0, p4, p1, p5}, Lcom/etermax/gamescommon/social/h$6;-><init>(Lcom/etermax/gamescommon/social/h;Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/social/i;)V

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/etermax/tools/social/a/b;->b(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Lcom/etermax/tools/social/a/e;)V

    .line 383
    return-void
.end method
