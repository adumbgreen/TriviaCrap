.class public Lcom/etermax/gamescommon/user/UserInfoAvatarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/ViewSwitcher;

.field protected b:Landroid/view/View;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/view/View;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/view/View;

.field protected k:Landroid/widget/Button;

.field private l:Lcom/etermax/gamescommon/dashboard/b;

.field private m:Lcom/etermax/gamescommon/user/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)Lcom/etermax/gamescommon/user/UserInfoAvatarView;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    const-string v0, ""

    invoke-static {p0, p1, p2, p3, v0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Landroid/content/Context;Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)Lcom/etermax/gamescommon/user/UserInfoAvatarView;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)Lcom/etermax/gamescommon/user/UserInfoAvatarView;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-static {p0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView_;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/user/UserInfoAvatarView;

    move-result-object v0

    .line 84
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)V

    .line 85
    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/user/UserInfoAvatarView;)Lcom/etermax/gamescommon/user/b;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->m:Lcom/etermax/gamescommon/user/b;

    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 90
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->l:Lcom/etermax/gamescommon/dashboard/b;

    .line 94
    :goto_0
    if-eqz p3, :cond_0

    .line 95
    invoke-virtual {p0, p2, p3, p4}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void

    .line 92
    :cond_1
    iput-object p1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->l:Lcom/etermax/gamescommon/dashboard/b;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->l:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v2, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a:Landroid/widget/ViewSwitcher;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/dashboard/b;->b(Landroid/widget/ViewSwitcher;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->b:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    if-eqz p3, :cond_1

    const-string v1, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    :cond_1
    if-nez p1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->l:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v2, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v2, p2}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 127
    :goto_1
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->c:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :goto_2
    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getNationality()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 158
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->e:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getNationality()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/tools/nationality/NationalityManager;->getFlag(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :goto_3
    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getDistance()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 166
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/etermax/o;->opponents_distance:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getDistance()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x408f400000000000L

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :goto_4
    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getAge()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 173
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->g:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getAge()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_5
    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getFriendsInCommon()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 180
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->h:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->i:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getFriendsInCommon()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_6
    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getOnlineStatus()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 189
    sget-object v1, Lcom/etermax/gamescommon/user/UserInfoAvatarView$2;->a:[I

    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getOnlineStatus()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 200
    :goto_7
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->j:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :goto_8
    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getIsAppUser()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 206
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->l:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v2, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v2, p2}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    goto/16 :goto_1

    .line 130
    :cond_3
    if-nez p1, :cond_4

    .line 131
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->l:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v2, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a:Landroid/widget/ViewSwitcher;

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, p2, v0}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;Ljava/lang/String;)V

    .line 135
    :goto_9
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->c:Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-object v1, v0

    .line 141
    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v1

    .line 143
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    iget-object v2, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v2, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 151
    :catch_0
    move-exception v1

    .line 152
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->l:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v2, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a:Landroid/widget/ViewSwitcher;

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, p2, v0}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;Ljava/lang/String;)V

    goto :goto_9

    .line 148
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 162
    :cond_6
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->e:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 169
    :cond_7
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 176
    :cond_8
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 184
    :cond_9
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->h:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->i:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 191
    :pswitch_0
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->j:Landroid/view/View;

    sget v2, Lcom/etermax/h;->user_avatar_status_idle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 194
    :pswitch_1
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->j:Landroid/view/View;

    sget v2, Lcom/etermax/h;->user_avatar_status_disconnected:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 197
    :pswitch_2
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->j:Landroid/view/View;

    sget v2, Lcom/etermax/h;->user_avatar_status_connected:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 202
    :cond_a
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->j:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 208
    :cond_b
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    sget-object v1, Lcom/etermax/gamescommon/user/UserInfoAvatarView$2;->b:[I

    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getInvitationStatus()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 211
    :pswitch_3
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setPressed(Z)V

    .line 212
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 214
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    sget v2, Lcom/etermax/o;->invite:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 217
    :pswitch_4
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setPressed(Z)V

    .line 218
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 220
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    sget v2, Lcom/etermax/o;->invited:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 223
    :pswitch_5
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setPressed(Z)V

    .line 224
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 225
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 226
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    sget v2, Lcom/etermax/o;->invite:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 227
    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->k:Landroid/widget/Button;

    new-instance v2, Lcom/etermax/gamescommon/user/UserInfoAvatarView$1;

    invoke-direct {v2, p0, p2}, Lcom/etermax/gamescommon/user/UserInfoAvatarView$1;-><init>(Lcom/etermax/gamescommon/user/UserInfoAvatarView;Lcom/etermax/gamescommon/j;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 209
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->m:Lcom/etermax/gamescommon/user/b;

    .line 247
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 248
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 253
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 254
    if-le v0, v1, :cond_0

    if-lez v1, :cond_0

    .line 255
    :goto_0
    invoke-super {p0, p2, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 256
    return-void

    :cond_0
    move p2, p1

    .line 254
    goto :goto_0
.end method

.method public setInviteCallback(Lcom/etermax/gamescommon/user/b;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->m:Lcom/etermax/gamescommon/user/b;

    .line 242
    return-void
.end method

.method public setUser(Lcom/etermax/gamescommon/j;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V

    .line 101
    return-void
.end method
