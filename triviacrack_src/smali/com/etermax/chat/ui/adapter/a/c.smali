.class public Lcom/etermax/chat/ui/adapter/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/chat/ui/adapter/a/b;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Lcom/etermax/chat/ui/f;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    .line 31
    if-nez p2, :cond_1

    .line 32
    sget v0, Lcom/etermax/k;->chat_item_event:I

    const/4 v1, 0x0

    invoke-virtual {p4, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p2, v0

    .line 38
    :goto_0
    instance-of v0, p5, Lcom/etermax/chat/a/f;

    if-eqz v0, :cond_0

    .line 39
    check-cast p5, Lcom/etermax/chat/a/f;

    .line 44
    sget v0, Lcom/etermax/i;->message:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/a/c;->a:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/etermax/i;->emoticon:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/a/c;->b:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/etermax/i;->app_icon:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/a/c;->c:Landroid/widget/ImageView;

    .line 50
    :try_start_0
    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/chat/a/l;->d()J

    move-result-wide v0

    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->e()Lcom/etermax/chat/a/k;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/chat/ui/adapter/a/c;->a(JLcom/etermax/chat/a/k;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_1
    return-object p2

    .line 34
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(JLcom/etermax/chat/a/k;Landroid/content/Context;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    const-string v0, ""

    .line 62
    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->b()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    move-result-object v3

    sget-object v4, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->GAME_STARTED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    if-ne v3, v4, :cond_3

    .line 63
    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-nez v0, :cond_2

    .line 65
    sget v0, Lcom/etermax/o;->chat_start_game:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p4, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_1
    move v0, v2

    .line 163
    :goto_2
    return v0

    .line 68
    :cond_2
    sget v0, Lcom/etermax/o;->chat_challenge:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p4, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->b()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    move-result-object v3

    sget-object v4, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->GAME_ENDED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    if-ne v3, v4, :cond_0

    .line 73
    sget-object v3, Lcom/etermax/chat/ui/adapter/a/c$1;->a:[I

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->c()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 75
    :pswitch_0
    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, p1

    if-nez v0, :cond_4

    .line 77
    sget v0, Lcom/etermax/o;->chat_win_01:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p4, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/c;->b:Landroid/widget/ImageView;

    sget v4, Lcom/etermax/h;->emo_im_happy:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 81
    :cond_4
    sget v0, Lcom/etermax/o;->chat_lose_01:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p4, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/c;->b:Landroid/widget/ImageView;

    sget v4, Lcom/etermax/h;->emo_im_sad:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 86
    :pswitch_1
    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->d()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_5

    .line 88
    sget v0, Lcom/etermax/o;->notification_game_expired:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p4, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 90
    :cond_5
    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-nez v0, :cond_6

    .line 92
    sget v0, Lcom/etermax/o;->chat_expire:I

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/etermax/o;->chat_lose_02:I

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p4, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/c;->b:Landroid/widget/ImageView;

    sget v4, Lcom/etermax/h;->emo_im_sad:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 97
    :cond_6
    sget v0, Lcom/etermax/o;->chat_expire:I

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/etermax/o;->chat_win_02:I

    invoke-virtual {p4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/c;->b:Landroid/widget/ImageView;

    sget v4, Lcom/etermax/h;->emo_im_happy:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 103
    :pswitch_2
    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-nez v0, :cond_7

    .line 104
    sget v0, Lcom/etermax/o;->chat_you_reject:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p4, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_3
    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 106
    :cond_7
    sget v0, Lcom/etermax/o;->chat_user_reject:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p4, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 111
    :pswitch_3
    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->d()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_9

    .line 113
    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-nez v0, :cond_8

    .line 115
    sget v0, Lcom/etermax/o;->chat_you_resign:I

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_4
    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 118
    :cond_8
    sget v0, Lcom/etermax/o;->chat_user_resign:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p4, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 121
    :cond_9
    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-nez v0, :cond_a

    .line 123
    sget v0, Lcom/etermax/o;->chat_you_resign:I

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/etermax/o;->chat_lose_02:I

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p4, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/c;->b:Landroid/widget/ImageView;

    sget v4, Lcom/etermax/h;->emo_im_sad:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 128
    :cond_a
    sget v0, Lcom/etermax/o;->chat_user_resign:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p4, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/etermax/o;->chat_win_02:I

    invoke-virtual {p4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/c;->b:Landroid/widget/ImageView;

    sget v4, Lcom/etermax/h;->emo_im_happy:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 139
    :cond_b
    iget-object v2, p0, Lcom/etermax/chat/ui/adapter/a/c;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->a()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 143
    sget-object v0, Lcom/etermax/chat/ui/adapter/a/c$1;->b:[I

    invoke-virtual {p3}, Lcom/etermax/chat/a/k;->a()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    :cond_c
    :goto_5
    move v0, v1

    .line 163
    goto/16 :goto_2

    .line 145
    :pswitch_4
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a/c;->c:Landroid/widget/ImageView;

    sget v2, Lcom/etermax/h;->app_icon_mezcladitos:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 149
    :pswitch_5
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a/c;->c:Landroid/widget/ImageView;

    sget v2, Lcom/etermax/h;->app_icon_apalabrados:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 152
    :pswitch_6
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a/c;->c:Landroid/widget/ImageView;

    sget v2, Lcom/etermax/h;->app_icon_bingocrack:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 155
    :pswitch_7
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a/c;->c:Landroid/widget/ImageView;

    sget v2, Lcom/etermax/h;->app_icon_preguntados:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 143
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
