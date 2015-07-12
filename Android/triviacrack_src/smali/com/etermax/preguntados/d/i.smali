.class Lcom/etermax/preguntados/d/i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/d/h;

.field private b:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

.field private c:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

.field private d:Lcom/etermax/gamescommon/dashboard/b;


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/d/h;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 54
    iput-object p1, p0, Lcom/etermax/preguntados/d/i;->a:Lcom/etermax/preguntados/d/h;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/etermax/preguntados/d/h;->a(Lcom/etermax/preguntados/d/h;)Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/etermax/preguntados/d/h;->b(Lcom/etermax/preguntados/d/h;)Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;->getGifts()[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/d/i;->b:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    .line 58
    invoke-static {p1}, Lcom/etermax/preguntados/d/h;->c(Lcom/etermax/preguntados/d/h;)Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;->getAsks()[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/d/i;->c:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/d/i;->b:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    if-nez v0, :cond_1

    .line 61
    new-array v0, v1, [Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    iput-object v0, p0, Lcom/etermax/preguntados/d/i;->b:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    .line 62
    invoke-static {p1, v1}, Lcom/etermax/preguntados/d/h;->a(Lcom/etermax/preguntados/d/h;I)I

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/d/i;->c:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    if-nez v0, :cond_2

    .line 67
    new-array v0, v1, [Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    iput-object v0, p0, Lcom/etermax/preguntados/d/i;->c:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    .line 68
    invoke-static {p1, v1}, Lcom/etermax/preguntados/d/h;->c(Lcom/etermax/preguntados/d/h;I)I

    .line 72
    :goto_1
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/d/i;->d:Lcom/etermax/gamescommon/dashboard/b;

    .line 73
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/d/i;->b:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/etermax/preguntados/d/h;->b(Lcom/etermax/preguntados/d/h;I)I

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/d/i;->c:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/etermax/preguntados/d/h;->d(Lcom/etermax/preguntados/d/h;I)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/etermax/preguntados/d/i;)[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/d/i;->b:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/d/i;->b:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    array-length v0, v0

    iget-object v1, p0, Lcom/etermax/preguntados/d/i;->c:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    if-nez p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/etermax/preguntados/d/i;->a:Lcom/etermax/preguntados/d/h;

    invoke-virtual {v0}, Lcom/etermax/preguntados/d/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->inbox_item:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    new-instance v1, Lcom/etermax/preguntados/d/j;

    iget-object v0, p0, Lcom/etermax/preguntados/d/i;->a:Lcom/etermax/preguntados/d/h;

    invoke-direct {v1, v0, v3}, Lcom/etermax/preguntados/d/j;-><init>(Lcom/etermax/preguntados/d/h;Lcom/etermax/preguntados/d/h$1;)V

    .line 97
    sget v0, Lcom/etermax/i;->inbox_item_random_avatar_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, v1, Lcom/etermax/preguntados/d/j;->a:Landroid/widget/ViewSwitcher;

    .line 98
    sget v0, Lcom/etermax/i;->inbox_item_sender_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/etermax/preguntados/d/j;->b:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/etermax/i;->inbox_item_sender_message:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/etermax/preguntados/d/j;->c:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/etermax/i;->inbox_item_tilt:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/etermax/preguntados/d/j;->e:Landroid/widget/ImageView;

    .line 101
    sget v0, Lcom/etermax/i;->inbox_item_gift:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/etermax/preguntados/d/j;->d:Landroid/widget/ImageView;

    .line 102
    sget v0, Lcom/etermax/i;->inbox_item_accept_send_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontButton;

    iput-object v0, v1, Lcom/etermax/preguntados/d/j;->f:Lcom/etermax/tools/widget/CustomFontButton;

    .line 103
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/etermax/preguntados/d/i;->b:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/etermax/preguntados/d/i;->b:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    aget-object v1, v1, p1

    .line 115
    iget-object v3, v0, Lcom/etermax/preguntados/d/j;->f:Lcom/etermax/tools/widget/CustomFontButton;

    iget-object v4, p0, Lcom/etermax/preguntados/d/i;->a:Lcom/etermax/preguntados/d/h;

    invoke-virtual {v4}, Lcom/etermax/preguntados/d/h;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/etermax/o;->accept:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/tools/widget/CustomFontButton;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v1

    move v1, v2

    .line 122
    :goto_1
    invoke-virtual {v3}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->getItems()[Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;->getType()Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

    move-result-object v2

    sget-object v4, Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;->EXTRA_SHOT:Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

    if-ne v2, v4, :cond_3

    .line 123
    if-eqz v1, :cond_2

    sget v2, Lcom/etermax/o;->user_needs_spin:I

    .line 124
    :goto_2
    sget v5, Lcom/etermax/h;->character_spin_shop:I

    .line 125
    sget v4, Lcom/etermax/f;->send_gift_spin:I

    move v8, v4

    move v4, v5

    move v5, v2

    move v2, v8

    .line 132
    :goto_3
    if-eqz v1, :cond_5

    .line 133
    iget-object v1, v0, Lcom/etermax/preguntados/d/j;->f:Lcom/etermax/tools/widget/CustomFontButton;

    sget v6, Lcom/etermax/h;->button_accept_gift_background:I

    sget v7, Lcom/etermax/h;->button_accept_gift_background_pressed:I

    invoke-virtual {v1, v6, v7}, Lcom/etermax/tools/widget/CustomFontButton;->a(II)V

    .line 137
    :goto_4
    iget-object v1, v0, Lcom/etermax/preguntados/d/j;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v1, v0, Lcom/etermax/preguntados/d/j;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/etermax/preguntados/d/i;->a:Lcom/etermax/preguntados/d/h;

    invoke-virtual {v4}, Lcom/etermax/preguntados/d/h;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, v0, Lcom/etermax/preguntados/d/j;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/etermax/preguntados/d/i;->a:Lcom/etermax/preguntados/d/h;

    invoke-virtual {v4}, Lcom/etermax/preguntados/d/h;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v1, v0, Lcom/etermax/preguntados/d/j;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->getSender()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/etermax/preguntados/d/i;->d:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v2, v0, Lcom/etermax/preguntados/d/j;->a:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->getSender()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 144
    invoke-virtual {v3}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->getState()Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    move-result-object v1

    sget-object v2, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;->READ:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    if-ne v1, v2, :cond_6

    .line 145
    iget-object v1, p0, Lcom/etermax/preguntados/d/i;->a:Lcom/etermax/preguntados/d/h;

    invoke-static {v1, v0}, Lcom/etermax/preguntados/d/h;->a(Lcom/etermax/preguntados/d/h;Lcom/etermax/preguntados/d/j;)V

    .line 150
    :goto_5
    iget-object v1, v0, Lcom/etermax/preguntados/d/j;->f:Lcom/etermax/tools/widget/CustomFontButton;

    new-instance v2, Lcom/etermax/preguntados/d/i$1;

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/etermax/preguntados/d/i$1;-><init>(Lcom/etermax/preguntados/d/i;ILcom/etermax/preguntados/d/j;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V

    invoke-virtual {v1, v2}, Lcom/etermax/tools/widget/CustomFontButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-object p2

    .line 105
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/d/j;

    goto/16 :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/etermax/preguntados/d/i;->c:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    iget-object v3, p0, Lcom/etermax/preguntados/d/i;->b:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    array-length v3, v3

    sub-int v3, p1, v3

    aget-object v3, v1, v3

    .line 118
    const/4 v1, 0x1

    .line 119
    iget-object v4, v0, Lcom/etermax/preguntados/d/j;->f:Lcom/etermax/tools/widget/CustomFontButton;

    iget-object v5, p0, Lcom/etermax/preguntados/d/i;->a:Lcom/etermax/preguntados/d/h;

    invoke-virtual {v5}, Lcom/etermax/preguntados/d/h;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/etermax/o;->send:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/tools/widget/CustomFontButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 123
    :cond_2
    sget v2, Lcom/etermax/o;->user_sent_spin:I

    goto/16 :goto_2

    .line 127
    :cond_3
    sget v5, Lcom/etermax/h;->icon_live:I

    .line 128
    if-eqz v1, :cond_4

    sget v2, Lcom/etermax/o;->user_needs_life:I

    .line 129
    :goto_6
    sget v4, Lcom/etermax/f;->send_gift_life:I

    move v8, v4

    move v4, v5

    move v5, v2

    move v2, v8

    goto/16 :goto_3

    .line 128
    :cond_4
    sget v2, Lcom/etermax/o;->user_sent_life:I

    goto :goto_6

    .line 135
    :cond_5
    iget-object v1, v0, Lcom/etermax/preguntados/d/j;->f:Lcom/etermax/tools/widget/CustomFontButton;

    sget v6, Lcom/etermax/h;->button_send_gift_background:I

    sget v7, Lcom/etermax/h;->button_send_gift_background_pressed:I

    invoke-virtual {v1, v6, v7}, Lcom/etermax/tools/widget/CustomFontButton;->a(II)V

    goto/16 :goto_4

    .line 147
    :cond_6
    iget-object v1, p0, Lcom/etermax/preguntados/d/i;->a:Lcom/etermax/preguntados/d/h;

    invoke-static {v1, v0}, Lcom/etermax/preguntados/d/h;->b(Lcom/etermax/preguntados/d/h;Lcom/etermax/preguntados/d/j;)V

    goto :goto_5
.end method
