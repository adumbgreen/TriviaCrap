.class public Lcom/etermax/chat/ui/BaseLegacyChatActivity;
.super Lcom/etermax/chat/ui/BaseChatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/chat/a/c;
.implements Lcom/etermax/chat/ui/b;
.implements Lcom/etermax/gamescommon/menu/a/e;
.implements Lcom/etermax/gamescommon/menu/b;
.implements Lcom/etermax/gamescommon/menu/navigation/d;
.implements Lcom/etermax/gamescommon/notification/b;
.implements Lcom/etermax/tools/navigation/f;


# static fields
.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field protected static p:J

.field protected static q:Z

.field protected static r:Z

.field protected static s:Ljava/lang/String;

.field protected static t:Z


# instance fields
.field protected h:Lcom/etermax/chat/a/a;

.field protected i:Lcom/etermax/gamescommon/datasource/a;

.field protected j:Lcom/etermax/gamescommon/notification/d;

.field protected k:Lcom/etermax/gamescommon/menu/a;

.field protected l:Lcom/etermax/gamescommon/login/datasource/a;

.field protected m:Lcom/etermax/tools/f/a;

.field protected n:Lcom/etermax/gamescommon/menu/a/d;

.field protected o:Lcom/etermax/gamescommon/datasource/e;

.field private u:Landroid/support/v7/app/ActionBar;

.field private final v:Ljava/lang/String;

.field private w:Lcom/etermax/gamescommon/f/a/b;

.field private x:Z

.field private y:Lcom/etermax/tools/navigation/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "opponentId"

    sput-object v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->e:Ljava/lang/String;

    .line 67
    const-string v0, "opponentName"

    sput-object v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->f:Ljava/lang/String;

    .line 68
    const-string v0, "from"

    sput-object v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/etermax/chat/ui/BaseChatActivity;-><init>()V

    .line 104
    const-string v0, "BrandonText-Regular.otf"

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/etermax/chat/ui/BaseLegacyChatActivity;)Lcom/etermax/gamescommon/f/a/b;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->w:Lcom/etermax/gamescommon/f/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/chat/ui/BaseLegacyChatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v1, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x1

    .line 593
    if-nez p1, :cond_0

    move-object v0, v1

    .line 638
    :goto_0
    return-object v0

    .line 601
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy HH:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 607
    :goto_1
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy HH:mm:ss z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 617
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 618
    const/4 v2, -0x1

    invoke-virtual {v1, v7, v2}, Ljava/util/Calendar;->add(II)V

    .line 619
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 620
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 621
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 623
    sget v0, Lcom/etermax/o;->last_seen:I

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v5, 0x9

    if-le v0, v5, :cond_3

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v5, 0x9

    if-le v0, v5, :cond_4

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-lt v4, v5, :cond_2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 628
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_1

    .line 608
    :catch_1
    move-exception v2

    .line 609
    if-nez v0, :cond_1

    move-object v0, v1

    .line 612
    goto/16 :goto_0

    .line 613
    :catch_2
    move-exception v0

    .line 614
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 615
    goto/16 :goto_0

    .line 625
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 630
    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_6

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/etermax/o;->chat_yesterday:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 635
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/etermax/o;->chat_today:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/etermax/chat/ui/BaseLegacyChatActivity;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/chat/a/a/g;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 364
    if-nez p1, :cond_0

    move-object v0, v1

    .line 438
    :goto_0
    return-object v0

    .line 368
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/a/g;

    .line 372
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CHAT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 374
    new-instance v3, Lcom/etermax/chat/a/f;

    sget-object v4, Lcom/etermax/chat/a/i;->a:Lcom/etermax/chat/a/i;

    invoke-direct {v3, v4}, Lcom/etermax/chat/a/f;-><init>(Lcom/etermax/chat/a/i;)V

    .line 375
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->f()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/etermax/chat/a/f;->a(Ljava/util/Date;)V

    .line 377
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/chat/a/f;->a(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 381
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->l:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    invoke-virtual {v0}, Lcom/etermax/chat/a/a;->f()Lcom/etermax/chat/a/l;

    move-result-object v0

    .line 383
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/etermax/chat/a/l;->a(J)V

    .line 385
    invoke-virtual {v3, v0}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/l;)V

    .line 386
    sget-object v0, Lcom/etermax/chat/a/h;->c:Lcom/etermax/chat/a/h;

    invoke-virtual {v3, v0}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/h;)V

    .line 411
    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/etermax/chat/a/a;->a(Ljava/lang/String;)Lcom/etermax/chat/a/l;

    move-result-object v0

    .line 392
    if-nez v0, :cond_2

    .line 393
    new-instance v0, Lcom/etermax/chat/a/l;

    invoke-direct {v0}, Lcom/etermax/chat/a/l;-><init>()V

    .line 394
    sget-object v5, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/etermax/chat/a/l;->a(Ljava/lang/String;)V

    .line 395
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/etermax/chat/a/l;->a(Z)V

    .line 396
    invoke-virtual {v0, p2}, Lcom/etermax/chat/a/l;->b(Ljava/lang/String;)V

    .line 397
    iget-object v5, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/etermax/chat/a/a;->a(Ljava/lang/String;Lcom/etermax/chat/a/l;)V

    .line 399
    :cond_2
    invoke-virtual {v0}, Lcom/etermax/chat/a/l;->c()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    if-eqz p2, :cond_3

    .line 401
    invoke-virtual {v0, p2}, Lcom/etermax/chat/a/l;->b(Ljava/lang/String;)V

    .line 402
    iget-object v5, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/etermax/chat/a/a;->a(Ljava/lang/String;Lcom/etermax/chat/a/l;)V

    .line 405
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/etermax/chat/a/l;->a(J)V

    .line 406
    invoke-virtual {v3, v0}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/l;)V

    .line 407
    sget-object v0, Lcom/etermax/chat/a/h;->e:Lcom/etermax/chat/a/h;

    invoke-virtual {v3, v0}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/h;)V

    goto :goto_2

    .line 414
    :cond_4
    new-instance v3, Lcom/etermax/chat/a/f;

    sget-object v4, Lcom/etermax/chat/a/i;->h:Lcom/etermax/chat/a/i;

    invoke-direct {v3, v4}, Lcom/etermax/chat/a/f;-><init>(Lcom/etermax/chat/a/i;)V

    .line 415
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/chat/a/f;->a(Ljava/lang/String;)V

    .line 416
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->f()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/etermax/chat/a/f;->a(Ljava/util/Date;)V

    .line 418
    new-instance v4, Lcom/etermax/chat/a/k;

    invoke-direct {v4}, Lcom/etermax/chat/a/k;-><init>()V

    .line 419
    invoke-virtual {v3}, Lcom/etermax/chat/a/f;->f()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/chat/a/k;->a(Ljava/util/Date;)V

    .line 420
    sget-object v5, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->s:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/etermax/chat/a/k;->a(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->get(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/chat/a/k;->a(Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;)V

    .line 422
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/chat/a/k;->a(Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;)V

    .line 423
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->get(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/chat/a/k;->a(Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;)V

    .line 424
    iget-object v5, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->l:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/chat/a/k;->b(Ljava/lang/Long;)V

    .line 425
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->j()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/chat/a/k;->a(Ljava/lang/Long;)V

    .line 427
    new-instance v5, Lcom/etermax/chat/a/l;

    invoke-direct {v5}, Lcom/etermax/chat/a/l;-><init>()V

    .line 428
    invoke-virtual {v0}, Lcom/etermax/chat/a/a/g;->b()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/etermax/chat/a/l;->a(J)V

    .line 430
    invoke-virtual {v3, v4}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/k;)V

    .line 431
    invoke-virtual {v3, v5}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/l;)V

    .line 433
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    .line 438
    goto/16 :goto_0
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 448
    sget-wide v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    return-wide v0
.end method

.method static synthetic b(Lcom/etermax/chat/ui/BaseLegacyChatActivity;)Landroid/support/v7/app/ActionBar;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->u:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method private b(Lcom/etermax/chat/a/f;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    sget-object v0, Lcom/etermax/chat/a/h;->a:Lcom/etermax/chat/a/h;

    invoke-virtual {p1, v0}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/h;)V

    .line 262
    new-instance v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;-><init>(Lcom/etermax/chat/ui/BaseLegacyChatActivity;Lcom/etermax/chat/a/f;)V

    invoke-virtual {v0, p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->a(Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method public static b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 460
    sput-boolean p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->q:Z

    .line 461
    return-void
.end method

.method public static c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 468
    sput-boolean p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->r:Z

    .line 469
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 456
    sget-boolean v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->q:Z

    return v0
.end method

.method static synthetic c(Lcom/etermax/chat/ui/BaseLegacyChatActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->x:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 464
    sget-boolean v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->r:Z

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->s:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/menu/navigation/c;)I
    .locals 1
    .parameter

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h()V

    .line 590
    return-void
.end method

.method protected a(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 289
    if-ne p1, v2, :cond_2

    if-eqz p2, :cond_2

    .line 291
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->u:Landroid/support/v7/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 293
    iput-boolean v2, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->x:Z

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    sget-wide v2, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    invoke-virtual {v1, v2, v3}, Lcom/etermax/chat/a/a;->b(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 300
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->x:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lcom/etermax/chat/a/j;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(Ljava/util/ArrayList;)V

    .line 310
    :cond_2
    new-instance v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;-><init>(Lcom/etermax/chat/ui/BaseLegacyChatActivity;I)V

    invoke-virtual {v0, p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity$3;->a(Ljava/lang/Object;)Z

    .line 350
    return-void

    .line 302
    :catch_0
    move-exception v1

    .line 303
    iput-boolean v4, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->x:Z

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 569
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0, p1, p2}, Lcom/etermax/tools/navigation/d;->a(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V

    .line 570
    return-void
.end method

.method public a(Lcom/etermax/chat/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->b(Lcom/etermax/chat/a/f;)V

    .line 445
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 212
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    .line 213
    const/4 v0, 0x0

    sput-boolean v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->t:Z

    .line 214
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->s:Ljava/lang/String;

    .line 215
    iput-boolean v2, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->x:Z

    .line 217
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->f()V

    .line 218
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    invoke-virtual {v0}, Lcom/etermax/chat/a/a;->d()V

    .line 219
    invoke-virtual {p0, v2, v2}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(IZ)V

    .line 220
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->n:Lcom/etermax/gamescommon/menu/a/d;

    sget-wide v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->b(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->b(I)V

    .line 221
    return-void
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    invoke-virtual {v0, p1}, Lcom/etermax/chat/a/a;->a(Ljava/util/ArrayList;)V

    .line 359
    return-void
.end method

.method public a_(Landroid/os/Bundle;)Z
    .locals 1
    .parameter

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    const/16 v0, 0x63

    .line 643
    if-lez p1, :cond_1

    .line 644
    if-le p1, v0, :cond_0

    move p1, v0

    .line 645
    :cond_0
    invoke-virtual {p0, p1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(I)V

    .line 646
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(Z)V

    .line 647
    const-string v0, "PLAYCHAT"

    const-string v1, "setBadgeVisibility : true"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :goto_0
    return-void

    .line 649
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(Z)V

    .line 650
    const-string v0, "PLAYCHAT"

    const-string v1, "setBadgeVisibility : false"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 574
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0, p1, p2}, Lcom/etermax/tools/navigation/d;->b(Landroid/view/View;Lcom/etermax/tools/navigation/e;)V

    .line 575
    return-void
.end method

.method public b(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    new-instance v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;-><init>(Lcom/etermax/chat/ui/BaseLegacyChatActivity;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {v0, p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity$1;->a(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method public b(Lcom/etermax/gamescommon/menu/navigation/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    return-void
.end method

.method public d(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    return-void
.end method

.method public f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 494
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->u:Landroid/support/v7/app/ActionBar;

    .line 496
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->u:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 497
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->u:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 498
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->u:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 499
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->u:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 503
    new-instance v0, Landroid/text/SpannableString;

    sget-object v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 504
    new-instance v1, Landroid/text/style/TypefaceSpan;

    const-string v2, "BrandonText-Regular.otf"

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 506
    iget-object v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->u:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 508
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/d;->b()V

    .line 535
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/d;->d()V

    .line 585
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 657
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->n:Lcom/etermax/gamescommon/menu/a/d;

    sget-wide v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->b(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->b(I)V

    .line 658
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/d;->a()V

    .line 127
    invoke-super {p0}, Lcom/etermax/chat/ui/BaseChatActivity;->onAttachedToWindow()V

    .line 128
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/etermax/chat/ui/BaseChatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    sget v0, Lcom/etermax/k;->activity_chat:I

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->setContentView(I)V

    .line 119
    new-instance v3, Lcom/etermax/tools/navigation/d;

    sget v0, Lcom/etermax/i;->drawerLayout:I

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    sget v1, Lcom/etermax/i;->leftPanel:I

    invoke-virtual {p0, v1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    sget v2, Lcom/etermax/i;->rightPanel:I

    invoke-virtual {p0, v2}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0, v1, v2}, Lcom/etermax/tools/navigation/d;-><init>(Landroid/support/v4/widget/DrawerLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    iput-object v3, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->y:Lcom/etermax/tools/navigation/d;

    .line 120
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->k:Lcom/etermax/gamescommon/menu/a;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a;->a(Lcom/etermax/gamescommon/menu/b;)V

    .line 121
    new-instance v0, Lcom/etermax/gamescommon/f/a/b;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/f/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->w:Lcom/etermax/gamescommon/f/a/b;

    .line 122
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 199
    invoke-static {}, Lcom/j256/ormlite/dao/DaoManager;->clearCache()V

    .line 200
    invoke-super {p0}, Lcom/etermax/chat/ui/BaseChatActivity;->onDestroy()V

    .line 201
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->finish()V

    .line 134
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/etermax/i;->action_friends_pannel:I

    if-ne v0, v1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h()V

    .line 138
    :cond_1
    invoke-super {p0, p1}, Lcom/etermax/chat/ui/BaseChatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/etermax/chat/ui/BaseChatActivity;->onPause()V

    .line 184
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->y:Lcom/etermax/tools/navigation/d;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/d;->b()V

    .line 185
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->j:Lcom/etermax/gamescommon/notification/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/notification/d;->b(Lcom/etermax/gamescommon/notification/b;)V

    .line 186
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/a;->a(Lcom/etermax/chat/a/c;)V

    .line 187
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    const-string v0, "mOpponentId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    .line 156
    const-string v0, "mIsBlocked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->q:Z

    .line 157
    const-string v0, "mIsFavourite"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->r:Z

    .line 158
    const-string v0, "mOpponentName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->s:Ljava/lang/String;

    .line 159
    const-string v0, "mFromFriendsPanel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->t:Z

    .line 160
    const-string v0, "mIsChatHistortyDownloaded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->x:Z

    .line 162
    invoke-super {p0, p1}, Lcom/etermax/chat/ui/BaseChatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 174
    invoke-super {p0}, Lcom/etermax/chat/ui/BaseChatActivity;->onResume()V

    .line 175
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->f()V

    .line 176
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->j:Lcom/etermax/gamescommon/notification/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/notification/d;->a(Lcom/etermax/gamescommon/notification/b;)V

    .line 177
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    invoke-virtual {v0, p0}, Lcom/etermax/chat/a/a;->a(Lcom/etermax/chat/a/c;)V

    .line 178
    invoke-virtual {p0, v1, v1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->a(IZ)V

    .line 179
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 143
    const-string v0, "mOpponentId"

    sget-wide v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    const-string v0, "mIsBlocked"

    sget-boolean v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    const-string v0, "mIsFavourite"

    sget-boolean v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    const-string v0, "mOpponentName"

    sget-object v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "mFromFriendsPanel"

    sget-boolean v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    const-string v0, "mIsChatHistortyDownloaded"

    iget-boolean v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    invoke-super {p0, p1}, Lcom/etermax/chat/ui/BaseChatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->n:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/d;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 168
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->n:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/e;)V

    .line 169
    invoke-super {p0}, Lcom/etermax/chat/ui/BaseChatActivity;->onStart()V

    .line 170
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->n:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/d;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 192
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->n:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/d;->b(Lcom/etermax/gamescommon/menu/a/e;)V

    .line 193
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    invoke-virtual {v0}, Lcom/etermax/chat/a/a;->d()V

    .line 194
    invoke-super {p0}, Lcom/etermax/chat/ui/BaseChatActivity;->onStop()V

    .line 195
    return-void
.end method
