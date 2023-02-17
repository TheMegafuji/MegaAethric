.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$8DhP1OvEO8M6Rk0AUupPmfOot0Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$8DhP1OvEO8M6Rk0AUupPmfOot0Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$8DhP1OvEO8M6Rk0AUupPmfOot0Y;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$8DhP1OvEO8M6Rk0AUupPmfOot0Y;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$8DhP1OvEO8M6Rk0AUupPmfOot0Y;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$8DhP1OvEO8M6Rk0AUupPmfOot0Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->lambda$loadActiveContexts$9(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
