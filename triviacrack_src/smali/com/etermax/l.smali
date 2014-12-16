.class public final Lcom/etermax/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static action_bar_playchat:I

.field public static chat:I

.field public static debug_menu:I

.field public static preguntados_debug_menu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5968
    const/high16 v0, 0x7f10

    sput v0, Lcom/etermax/l;->action_bar_playchat:I

    .line 5969
    const v0, 0x7f100001

    sput v0, Lcom/etermax/l;->chat:I

    .line 5970
    const v0, 0x7f100002

    sput v0, Lcom/etermax/l;->debug_menu:I

    .line 5971
    const v0, 0x7f100003

    sput v0, Lcom/etermax/l;->preguntados_debug_menu:I

    return-void
.end method
