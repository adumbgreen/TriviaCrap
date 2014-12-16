.class public Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/tools/f/a;

.field protected b:Lcom/etermax/tools/widgetv2/CustomLinearButton;

.field protected c:Lcom/etermax/tools/widgetv2/CustomLinearButton;

.field protected d:Lcom/etermax/tools/widgetv2/CustomLinearButton;

.field protected e:Lcom/etermax/tools/widgetv2/CustomLinearButton;

.field protected f:Lcom/etermax/tools/widgetv2/CustomLinearButton;

.field protected g:Lcom/etermax/tools/widgetv2/CustomLinearButton;

.field protected h:Lcom/etermax/tools/widgetv2/CustomLinearButton;

.field protected i:Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;

.field protected j:Landroid/widget/ImageView;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/ImageView;

.field protected m:Landroid/widget/TextView;

.field protected n:Landroid/widget/TextView;

.field o:Lcom/etermax/gamescommon/profile/ui/j;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    new-instance v0, Lcom/etermax/gamescommon/b/al;

    invoke-direct {v0, p2}, Lcom/etermax/gamescommon/b/al;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/al;->a(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->p:Z

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->c:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$1;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;)V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->d:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$2;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;)V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->e:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$3;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$3;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;)V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->f:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$4;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$4;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;)V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->b:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$5;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$5;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;)V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->g:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$6;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$6;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;)V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->h:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$7;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$7;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;)V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->f:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->g:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->h:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->b:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->d:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->e:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setVisibility(I)V

    .line 192
    iput-boolean v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->p:Z

    .line 193
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->b:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->d:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->e:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->f:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->g:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->h:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setVisibility(I)V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->p:Z

    .line 203
    return-void
.end method

.method public setBlockedCount(I)V
    .locals 2
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->n:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public setButtonsListener(Lcom/etermax/gamescommon/profile/ui/j;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->o:Lcom/etermax/gamescommon/profile/ui/j;

    .line 183
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->f:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->d:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->g:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->b:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->c:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->e:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->h:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setEnabled(Z)V

    .line 164
    return-void
.end method

.method public setFacebookFriendsIds(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->i:Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->bringToFront()V

    .line 225
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->i:Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->setFacebookFriendsIds(Ljava/util/List;)V

    .line 226
    return-void
.end method

.method public setFriendState(Z)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xff

    const/16 v5, 0x80

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x66

    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->l:Landroid/widget/ImageView;

    sget v1, Lcom/etermax/h;->okfriend_profile:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 209
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->k:Landroid/widget/TextView;

    sget v1, Lcom/etermax/o;->friend_plural:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->k:Landroid/widget/TextView;

    invoke-static {v5, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->f:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v4}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setSelected(Z)V

    .line 212
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->f:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v3}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setEnabled(Z)V

    .line 221
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->l:Landroid/widget/ImageView;

    sget v1, Lcom/etermax/h;->add_friend_profile:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 216
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->k:Landroid/widget/TextView;

    sget v1, Lcom/etermax/o;->player_add_friend:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->k:Landroid/widget/TextView;

    invoke-static {v6, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->f:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v3}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setSelected(Z)V

    .line 219
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->f:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    invoke-virtual {v0, v4}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setFriendsCount(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 167
    if-lez p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->i:Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->j:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->m:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->i:Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
