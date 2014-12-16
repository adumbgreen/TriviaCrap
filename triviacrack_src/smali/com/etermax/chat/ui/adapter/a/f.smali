.class public Lcom/etermax/chat/ui/adapter/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/chat/ui/adapter/a/b;


# instance fields
.field private a:Lcom/etermax/gamescommon/dashboard/b;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/dashboard/b;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/etermax/chat/ui/adapter/a/f;->a:Lcom/etermax/gamescommon/dashboard/b;

    .line 28
    iput-object p2, p0, Lcom/etermax/chat/ui/adapter/a/f;->b:Landroid/content/Context;

    .line 29
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
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Lcom/etermax/chat/ui/f;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 34
    .line 36
    if-nez p2, :cond_2

    .line 37
    sget v0, Lcom/etermax/k;->list_item_simple_text_in:I

    invoke-virtual {p4, v0, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p2, v0

    .line 43
    :goto_0
    instance-of v0, p5, Lcom/etermax/chat/a/f;

    if-eqz v0, :cond_1

    .line 44
    check-cast p5, Lcom/etermax/chat/a/f;

    .line 49
    sget v0, Lcom/etermax/i;->user_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 50
    sget v0, Lcom/etermax/i;->user_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 52
    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/chat/a/l;->c()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/chat/a/l;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    .line 56
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_4

    .line 57
    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/f;->a:Lcom/etermax/gamescommon/dashboard/b;

    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/chat/a/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_2
    sget v0, Lcom/etermax/i;->tv_message:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->g()Lcom/etermax/chat/a/g;

    move-result-object v1

    sget-object v3, Lcom/etermax/chat/a/g;->c:Lcom/etermax/chat/a/g;

    if-eq v1, v3, :cond_0

    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->g()Lcom/etermax/chat/a/g;

    move-result-object v1

    sget-object v3, Lcom/etermax/chat/a/g;->d:Lcom/etermax/chat/a/g;

    if-ne v1, v3, :cond_5

    .line 65
    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    sget v1, Lcom/etermax/h;->msg_in:I

    invoke-direct {p0, v0, v1}, Lcom/etermax/chat/ui/adapter/a/f;->a(Landroid/view/View;I)V

    .line 72
    :goto_3
    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->g()Lcom/etermax/chat/a/g;

    move-result-object v1

    sget-object v2, Lcom/etermax/chat/a/g;->a:Lcom/etermax/chat/a/g;

    if-ne v1, v2, :cond_6

    .line 73
    iget-object v1, p0, Lcom/etermax/chat/ui/adapter/a/f;->b:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/etermax/chat/ui/adapter/a/f;->b:Landroid/content/Context;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/f;->b:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2, v1, v2, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 79
    :goto_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/gamescommon/d/a/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 85
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

    .line 87
    :cond_1
    return-object p2

    .line 39
    :cond_2
    check-cast p2, Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 54
    :cond_3
    invoke-virtual {p5}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/chat/a/l;->b()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 59
    :cond_4
    iget-object v3, p0, Lcom/etermax/chat/ui/adapter/a/f;->a:Lcom/etermax/gamescommon/dashboard/b;

    invoke-virtual {v3, v0, v1}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 68
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    sget v1, Lcom/etermax/h;->msg_in_2:I

    invoke-direct {p0, v0, v1}, Lcom/etermax/chat/ui/adapter/a/f;->a(Landroid/view/View;I)V

    goto :goto_3

    .line 75
    :cond_6
    iget-object v1, p0, Lcom/etermax/chat/ui/adapter/a/f;->b:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/etermax/chat/ui/adapter/a/f;->b:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2, v1, v5, v2, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4
.end method
