.class public Lcom/etermax/chat/ui/adapter/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/chat/ui/adapter/a/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/etermax/chat/ui/adapter/a/g;->a:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Lcom/etermax/chat/ui/f;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 31
    .line 33
    if-nez p2, :cond_3

    .line 34
    sget v0, Lcom/etermax/k;->list_item_simple_text_out:I

    invoke-virtual {p4, v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p2, v0

    .line 40
    :goto_0
    instance-of v0, p5, Lcom/etermax/chat/a/f;

    if-eqz v0, :cond_2

    .line 41
    check-cast p5, Lcom/etermax/chat/a/f;

    .line 47
    sget v0, Lcom/etermax/i;->tv_message:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget v1, Lcom/etermax/i;->tick_message:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 55
    if-eqz v1, :cond_0

    .line 56
    sget-object v2, Lcom/etermax/chat/ui/adapter/a/g$1;->a:[I

    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->d()Lcom/etermax/chat/a/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/chat/a/h;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 72
    :cond_0
    :goto_1
    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->g()Lcom/etermax/chat/a/g;

    move-result-object v1

    sget-object v2, Lcom/etermax/chat/a/g;->c:Lcom/etermax/chat/a/g;

    if-eq v1, v2, :cond_1

    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->g()Lcom/etermax/chat/a/g;

    move-result-object v1

    sget-object v2, Lcom/etermax/chat/a/g;->d:Lcom/etermax/chat/a/g;

    if-ne v1, v2, :cond_4

    .line 73
    :cond_1
    sget v1, Lcom/etermax/h;->msg_out:I

    invoke-direct {p0, v0, v1}, Lcom/etermax/chat/ui/adapter/a/g;->a(Landroid/view/View;I)V

    .line 78
    :goto_2
    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->g()Lcom/etermax/chat/a/g;

    move-result-object v0

    sget-object v1, Lcom/etermax/chat/a/g;->a:Lcom/etermax/chat/a/g;

    if-ne v0, v1, :cond_5

    .line 79
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a/g;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/etermax/chat/ui/adapter/a/g;->a:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/etermax/chat/ui/adapter/a/g;->a:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2, v0, v1, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 84
    :goto_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 87
    sget v0, Lcom/etermax/i;->hour_message:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_2
    return-object p2

    .line 36
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 58
    :pswitch_0
    sget v2, Lcom/etermax/h;->chat_icon_reloj:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 62
    :pswitch_1
    sget v2, Lcom/etermax/h;->chat_icon_check:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 65
    :pswitch_2
    sget v2, Lcom/etermax/h;->chat_icon_i:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 75
    :cond_4
    sget v1, Lcom/etermax/h;->msg_out_2:I

    invoke-direct {p0, v0, v1}, Lcom/etermax/chat/ui/adapter/a/g;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a/g;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/etermax/chat/ui/adapter/a/g;->a:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v0, v4, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_3

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
