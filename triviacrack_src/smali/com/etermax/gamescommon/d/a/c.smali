.class public Lcom/etermax/gamescommon/d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/text/Spannable$Factory;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    sput-object v0, Lcom/etermax/gamescommon/d/a/c;->a:Landroid/text/Spannable$Factory;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    .line 23
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":)"

    sget v2, Lcom/etermax/h;->emo_im_happy:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 24
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":-)"

    sget v2, Lcom/etermax/h;->emo_im_happy:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 26
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ";-)"

    sget v2, Lcom/etermax/h;->emo_im_winking:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 27
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ";)"

    sget v2, Lcom/etermax/h;->emo_im_winking:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 29
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":-("

    sget v2, Lcom/etermax/h;->emo_im_sad:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 30
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":("

    sget v2, Lcom/etermax/h;->emo_im_sad:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 32
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":\'-("

    sget v2, Lcom/etermax/h;->emo_im_crying:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 33
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":\'("

    sget v2, Lcom/etermax/h;->emo_im_crying:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 35
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, "B-)"

    sget v2, Lcom/etermax/h;->emo_im_cool:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 36
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, "B)"

    sget v2, Lcom/etermax/h;->emo_im_cool:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 38
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":-*"

    sget v2, Lcom/etermax/h;->emo_im_kissing:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":*"

    sget v2, Lcom/etermax/h;->emo_im_kissing:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":-P"

    sget v2, Lcom/etermax/h;->emo_im_tongue_sticking_out:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":P"

    sget v2, Lcom/etermax/h;->emo_im_tongue_sticking_out:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":O"

    sget v2, Lcom/etermax/h;->emo_im_surprised:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 45
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":-O"

    sget v2, Lcom/etermax/h;->emo_im_surprised:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, "O:-)"

    sget v2, Lcom/etermax/h;->emo_im_angel:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, "O:)"

    sget v2, Lcom/etermax/h;->emo_im_angel:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 50
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, "o_O"

    sget v2, Lcom/etermax/h;->emo_im_wtf:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 51
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, "o.O"

    sget v2, Lcom/etermax/h;->emo_im_wtf:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":-X"

    sget v2, Lcom/etermax/h;->emo_im_lips_are_sealed:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    const-string v1, ":X"

    sget v2, Lcom/etermax/h;->emo_im_lips_are_sealed:I

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Ljava/util/Map;Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->a:Landroid/text/Spannable$Factory;

    invoke-virtual {v0, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 85
    invoke-static {p0, v0}, Lcom/etermax/gamescommon/d/a/c;->a(Landroid/content/Context;Landroid/text/Spannable;)Z

    .line 86
    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/text/Spannable;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    .line 63
    sget-object v0, Lcom/etermax/gamescommon/d/a/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const-class v8, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v1, v5, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ImageSpan;

    array-length v8, v1

    move v5, v3

    :goto_1
    if-ge v5, v8, :cond_4

    aget-object v9, v1, v5

    .line 68
    invoke-interface {p1, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    if-lt v10, v11, :cond_2

    invoke-interface {p1, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    if-gt v10, v11, :cond_2

    .line 69
    invoke-interface {p1, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 67
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 74
    :goto_2
    if-eqz v1, :cond_1

    .line 76
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, p0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/16 v8, 0x21

    invoke-interface {p1, v2, v1, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move v2, v4

    goto :goto_0

    .line 80
    :cond_3
    return v2

    :cond_4
    move v1, v4

    goto :goto_2
.end method
